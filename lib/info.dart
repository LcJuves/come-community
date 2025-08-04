import 'dart:convert';

import 'package:devfans/http_requests.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:protobuffers/items.pb.dart';

Future<dynamic> getGeoInfo(BuildContext context, Items items) async {
  try {
    if (!context.mounted) {
      return Future.value({'country_code': 'EN'});
    }

    final responseBody =
        await httpReadString(Uri.parse('https://ipapi.co/json'));
    if (responseBody.isEmpty) {
      // ignore: use_build_context_synchronously
      return _getLocaleLangInfo(context);
    }
    final fetchedGeoInfo = jsonDecode(responseBody);
    if (items.hasSpecIpAddrPrefix() &&
        "${fetchedGeoInfo['ip']}".startsWith(items.specIpAddrPrefix) &&
        "${fetchedGeoInfo['region_code']}".toLowerCase() ==
            "GD".toLowerCase()) {
      fetchedGeoInfo['country_code'] = "EN";
    }
    return fetchedGeoInfo;
  } catch (_) {
    // ignore: use_build_context_synchronously
    return _getLocaleLangInfo(context);
  }
}

Future<dynamic> _getLocaleLangInfo(BuildContext context) async {
  Locale locale = Localizations.localeOf(context);
  final languageCode = locale.languageCode;
  if (languageCode.isNotEmpty || languageCode.toLowerCase().startsWith("zh")) {
    return Future.value({'country_code': 'CN'});
  }
  return Future.value({'country_code': 'EN'});
}

bool networkDisabled(dynamic fetchedGeoInfo, Items items) {
  if (kDebugMode) {
    items.ipv6Guard = true;
  }
  // At present, only IPv6 support is provided.
  return (items.hasIpv6Guard() &&
          items.ipv6Guard &&
          !items.hasSpecIpAddrPrefix() &&
          ("${fetchedGeoInfo['version']}".toLowerCase() != "ipv6" ||
              !"${fetchedGeoInfo['ip']}".toLowerCase().startsWith("255"))) ||
      (items.hasSpecIpAddrPrefix() &&
          !"${fetchedGeoInfo['ip']}".startsWith(items.specIpAddrPrefix));
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
      networkDisabled(fetchedGeoInfo, items) ||
      "${fetchedGeoInfo['country_code']}".toLowerCase() == "JP".toLowerCase() ||
      "${fetchedGeoInfo['country_code']}".toLowerCase() == "JPN".toLowerCase());
}
