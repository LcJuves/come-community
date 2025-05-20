import 'dart:convert';

import 'package:devfans/webspec.dart';
import 'package:dio/dio.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:protobuffers/items.pb.dart';

class FutureData {
  final List<Item> items;
  final dynamic geoInfo;
  final String captivePortalSvg;
  const FutureData(
      {required this.items,
      required this.geoInfo,
      required this.captivePortalSvg});

  List<Item> get fetchedItems => items;

  get fetchedGeoInfo => geoInfo;
}

Future<dynamic> getGeoInfo() async {
  try {
    final responseBody = await http.read(Uri.parse('https://ipapi.co/json'));
    if (responseBody.isEmpty) {
      return navLangGeoInfo();
    }
    return jsonDecode(responseBody);
  } catch (_) {
    return navLangGeoInfo();
  }
}

class FutureDesc {
  String desc;
  String msgDesc;

  FutureDesc({required this.desc, required this.msgDesc});
}

Future<String> httpRead(Uri uri) async {
  try {
    final dio = Dio(BaseOptions(
        connectTimeout: const Duration(milliseconds: 600),
        receiveTimeout: const Duration(milliseconds: 600),
        sendTimeout: const Duration(milliseconds: 600)));
    final response = await dio.get(uri.toString());
    return response.data.toString();
  } catch (_) {
    return "";
  }
}

Future<FutureDesc> fetchDesc(String url) async {
  final FutureDesc futureDesc = FutureDesc(desc: "", msgDesc: "");
  if (url.endsWith("svg")) {
    return Future.value(futureDesc);
  }
  final Uri uri = Uri.parse(url);
  final responseBody = await httpRead(uri);
  if (responseBody.isEmpty) {
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
