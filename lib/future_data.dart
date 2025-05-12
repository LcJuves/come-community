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
    final dio = Dio();
    final response = await dio.get(uri.toString());
    return response.data.toString();
  } catch (_) {
    return "";
  }
}

Future<FutureDesc> fetchDesc(String url) async {
  final Uri uri = Uri.parse(url);
  final FutureDesc futureDesc = FutureDesc(desc: "", msgDesc: "");
  if (true) {
    futureDesc.desc = uri.host;
    futureDesc.msgDesc = uri.host;
    return Future.value(futureDesc);
  }
}
