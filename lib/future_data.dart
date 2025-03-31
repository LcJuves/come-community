import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:protobuffers/items.pb.dart';

class FutureData {
  final List<Item> items;
  final dynamic geoInfo;
  const FutureData({required this.items, required this.geoInfo});

  List<Item> get fetchedItems => items;

  get fetchedGeoInfo => geoInfo;
}

Future<dynamic> _defaultGeoInfo() async {
  return Future.value({'country_code': 'CN'});
}

Future<dynamic> getGeoInfo() async {
  try {
    final response = await http.get(Uri.parse('https://ipapi.co/json'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return _defaultGeoInfo();
    }
  } catch (_) {
    return _defaultGeoInfo();
  }
}
