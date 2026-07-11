import 'dart:convert' show utf8;
import 'dart:typed_data' show Uint8List;

import 'package:come/aborting_requests.dart'
    show httpStreamReadBytesWithGetMethod;
import 'package:come/info.dart' show fetchGeoInfo;
import 'package:come/model/future_data.dart' show FutureData;
import 'package:flutter/foundation.dart' show kDebugMode, kIsWeb;
import 'package:flutter/material.dart' as material show BuildContext;
import 'package:flutter/services.dart' show rootBundle;
import 'package:html/dom.dart' show Element, Document;
import 'package:html/parser.dart' show parse;
import 'package:protobuffers/items.pb.dart' show Items;

import 'model/future_desc.dart' show FutureDesc;

Future<Uint8List> httpReadBytes(Uri url) async {
  return httpStreamReadBytesWithGetMethod(url);
}

Future<String> httpReadString(Uri url) async {
  final responseBytes = await httpReadBytes(url);
  return utf8.decode(responseBytes);
}

Future<Items> _fetchItems() async {
  if (!kDebugMode && !kIsWeb) {
    final responseBodyBytes = await httpReadBytes(
        Uri.parse("https://come.lcjuves.com/assets/final-items.pb"));
    if (responseBodyBytes.isEmpty) {
      throw Exception('Failed to load items');
    }
    return Items.fromBuffer(responseBodyBytes);
  }
  final data = await rootBundle.load('final-items.pb');
  return Items.fromBuffer(Uint8List.sublistView(data));
}

Future<FutureData> fetchData(material.BuildContext context) async {
  final futureItems = await _fetchItems();
  if (!context.mounted) {
    return FutureData(items: futureItems, geoInfo: {'country_code': 'EN'});
  }
  final futureGeoInfo = await fetchGeoInfo(context, futureItems);
  return FutureData(items: futureItems, geoInfo: futureGeoInfo);
}

Future<FutureDesc> fetchDesc(Uri url) {
  final FutureDesc defaultFutureDesc = FutureDesc(desc: "", msgDesc: "");
  if (url.path.endsWith("svg")) {
    return Future.value(defaultFutureDesc);
  }

  final Future<String> httpReadBytesFuture = httpReadString(url);
  return httpReadBytesFuture
      .then((responseBody) async => responseBody.isEmpty
          ? defaultFutureDesc
          : await _parseDesc(responseBody))
      .catchError((_) => defaultFutureDesc);
}

Future<FutureDesc> _parseDesc(String responseBody) {
  final FutureDesc futureDesc = FutureDesc(desc: "", msgDesc: "");
  final Document document = parse(responseBody);
  final Element? head = document.head;
  if (head == null) return Future.value(futureDesc);
  List<Element> metaElements = head.getElementsByTagName("meta");
  metaElements = List.of(metaElements.where((elem) =>
      elem.attributes.containsKey("property") ||
      elem.attributes.containsKey("name")));

  if (metaElements.isEmpty) {
    List<Element> titleElements = head.getElementsByTagName("title");
    if (titleElements.isEmpty) {
      return Future.value(futureDesc);
    }
    final Element title = titleElements[0];
    final titleText = title.text;
    futureDesc.desc = titleText;
    futureDesc.msgDesc = titleText;
    return Future.value(futureDesc);
  }

  String? metaTitle;
  String? metaOgSiteName;
  String? metaOgDescription;
  String? metaDescription;
  for (final metaElement in metaElements) {
    final String? metaKey =
        metaElement.attributes["property"] ?? metaElement.attributes["name"];
    if (metaKey == null || metaKey.isEmpty) {
      continue;
    }
    final String? metaElementContent = metaElement.attributes["content"];
    if (metaElementContent == null || metaElementContent.isEmpty) {
      continue;
    }
    if (metaKey == "og:title") {
      metaTitle = metaElementContent;
    } else if (metaKey == "og:site_name") {
      metaOgSiteName = metaElementContent;
    } else if (metaKey == "og:description") {
      metaOgDescription = metaElementContent;
    } else if (metaKey == "description") {
      metaDescription = metaElementContent;
    }
    if (metaTitle != null &&
        metaOgSiteName != null &&
        metaOgDescription != null &&
        metaDescription != null) {
      break;
    }
  }
  final desc =
      metaTitle ?? metaOgSiteName ?? metaOgDescription ?? metaDescription;
  final msgDesc = metaOgDescription ?? metaDescription;
  futureDesc.desc = desc ?? "";
  futureDesc.msgDesc = msgDesc ?? "";
  return Future.value(futureDesc);
}
