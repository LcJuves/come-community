import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:universal_web/web.dart' as web;

Future<dynamic> getGeoInfo(BuildContext context) async {
  try {
    if (!context.mounted) {
      return getLocaleLangInfo(context);
    }
    final responseBody = await http.read(Uri.parse('https://ipapi.co/json'));
    if (responseBody.isEmpty) {
      // ignore: use_build_context_synchronously
      return getLocaleLangInfo(context);
    }
    return jsonDecode(responseBody);
  } catch (_) {
    // ignore: use_build_context_synchronously
    return getLocaleLangInfo(context);
  }
}

Future<dynamic> getLocaleLangInfo(BuildContext context) async {
  if (!kIsWeb) {
    Locale locale = Localizations.localeOf(context);
    return Future.value({'country_code': locale.countryCode ?? 'CN'});
  }
  var language = web.window.navigator.language;
  if (language.isEmpty || language.toLowerCase().endsWith("cn")) {
    return Future.value({'country_code': 'CN'});
  }
  return Future.value({'country_code': 'EN'});
}
