import 'dart:convert';

import 'package:come/http_requests.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:protobuffers/items.pb.dart';

Future<dynamic> fetchGeoInfo(BuildContext context, Items items) {
  if (!context.mounted) {
    return Future.value({'country_code': 'EN'});
  }

  final httpReadBytesFuture =
      httpReadString(Uri.parse('https://ipapi.co/json'));
  final result = httpReadBytesFuture.then((responseBody) {
    if (responseBody.isEmpty) {
      // ignore: use_build_context_synchronously
      return _getLocaleLangInfo(context);
    }
    final fetchedGeoInfo = jsonDecode(responseBody);
    if (items.specIpAddrPrefixes.isNotEmpty &&
        items.specIpAddrPrefixes
            .where((prefix) => fetchedGeoInfo['ip'].startsWith(prefix))
            .isNotEmpty &&
        fetchedGeoInfo['region_code'].toLowerCase() == "GD".toLowerCase()) {
      fetchedGeoInfo['country_code'] = "EN";
    }
    return fetchedGeoInfo;
  }).catchError((_) {
    // ignore: use_build_context_synchronously
    return _getLocaleLangInfo(context);
  });
  return result;
}

dynamic _getLocaleLangInfo(BuildContext context) {
  Locale locale = Localizations.localeOf(context);
  final languageCode = locale.languageCode;
  return languageCode.isNotEmpty || languageCode.toLowerCase().startsWith("zh")
      ? {'country_code': 'CN'}
      : {'country_code': 'EN'};
}

bool networkDisabled(dynamic fetchedGeoInfo, Items items) {
  if (kDebugMode) {
    items.ipv6Guard = true;
  }
  // At present, only IPv6 support is provided.
  return (items.hasIpv6Guard() &&
          items.ipv6Guard &&
          items.specIpAddrPrefixes.isEmpty &&
          (fetchedGeoInfo['version'].toLowerCase() != "ipv6" ||
              !fetchedGeoInfo['ip'].toLowerCase().startsWith("255"))) ||
      (items.specIpAddrPrefixes.isNotEmpty &&
          items.specIpAddrPrefixes
              .where((prefix) => prefix.startsWith(fetchedGeoInfo['ip']))
              .isEmpty);
}

bool geoDisabled(dynamic fetchedGeoInfo, Items items, String? deviceId) {
  if (!kDebugMode &&
      (!items.hasShutdownSomeArea() || !items.shutdownSomeArea)) {
    fetchedGeoInfo['region'] = "${fetchedGeoInfo['region']} ?";
    fetchedGeoInfo['city'] = "${fetchedGeoInfo['city']} ?";
    fetchedGeoInfo['country_code'] = "${fetchedGeoInfo['country_code']} ?";
  }
  return (fetchedGeoInfo == null ||
      // At present, only IPv6 support is provided.
      networkDisabled(fetchedGeoInfo, items));
}
