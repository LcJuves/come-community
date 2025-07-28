import 'dart:convert';

import 'package:devfans/info.dart';
import 'package:devfans/model/future_data.dart';
import 'package:devfans/model/future_desc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/services.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:protobuffers/items.pb.dart';

Future<Uint8List> httpReadBytes(Uri url) async {
  final response = await http.get(url, headers: {
    "User-Agent":
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0',
  });
  return Future.value(response.bodyBytes);
}

Future<String> httpReadString(Uri url) async {
  final Uint8List bytes = await httpReadBytes(url);
  String result = utf8.decode(bytes);
  return Future.value(result);
}

Future<Items> _fetchItems() async {
  if (!kDebugMode) {
    final responseBodyBytes = await httpReadBytes(
        Uri.parse("https://devfans.lcjuves.com/assets/items.pb"));
    if (responseBodyBytes.isNotEmpty) {
      return Items.fromBuffer(responseBodyBytes);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load items');
    }
  }
  final buffer = await rootBundle.load('items.pb');
  return Future.value(Items.fromBuffer(Uint8List.sublistView(buffer)));
}

Future<FutureData> fetchData(material.BuildContext context) async {
  final futureItems = await _fetchItems();
  // ignore: use_build_context_synchronously
  final futureGeoInfo = await getGeoInfo(context, futureItems);
  final futureData = FutureData(items: futureItems, geoInfo: futureGeoInfo);
  return Future.value(futureData);
}

Future<FutureDesc> fetchDesc(Uri url) async {
  final FutureDesc futureDesc = FutureDesc(desc: "", msgDesc: "");
  if (url.path.endsWith("svg")) {
    return Future.value(futureDesc);
  }
  final String responseBody;
  try {
    responseBody = await httpReadString(url);
    if (responseBody.isEmpty) {
      return Future.value(futureDesc);
    }
  } catch (_) {
    return Future.value(futureDesc);
  }

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
    final titleElemVal = title.text;
    futureDesc.desc = titleElemVal;
    futureDesc.msgDesc = titleElemVal;
    return Future.value(futureDesc);
  }

  String? metaTitle;
  String? metaOgSiteName;
  String? metaOgDescription;
  String? metaDescription;
  for (final metaElement in metaElements) {
    final String? metaKey =
        metaElement.attributes["property"] ?? metaElement.attributes["name"];
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
  }
  if (!((metaOgSiteName == null || metaOgSiteName.isEmpty) &&
      (metaTitle == null || metaTitle.isEmpty) &&
      (metaOgDescription == null || metaOgDescription.isEmpty) &&
      (metaDescription == null || metaDescription.isEmpty))) {
    final desc =
        metaTitle ?? metaOgSiteName ?? metaOgDescription ?? metaDescription;
    final msgDesc = metaOgDescription ?? metaDescription;
    futureDesc.desc = desc ?? "";
    futureDesc.msgDesc = msgDesc ?? "";
  }
  return Future.value(futureDesc);
}
