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

Future<dynamic> getgeoInfo() async {
  final response = await http.get(Uri.parse('https://ipapi.co/json'), headers: {
    "user-agent": "Flutter#${DateTime.now().microsecond}",
  });
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load geoip location info');
  }
}
