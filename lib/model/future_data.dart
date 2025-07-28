import 'package:protobuffers/items.pb.dart';

class FutureData {
  final Items items;
  final dynamic geoInfo;
  const FutureData({required this.items, required this.geoInfo});

  Items get fetchedItems => items;

  get fetchedGeoInfo => geoInfo;
}
