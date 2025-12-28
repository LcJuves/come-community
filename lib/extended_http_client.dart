import 'package:come/constants.dart';
import 'package:extended_http/extended_http.dart';
import 'package:extended_http/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import 'http_client_factory.dart'
    if (dart.library.js_interop) 'http_client_factory_web.dart';

Client extendedCommonHttpClient() {
  return _commonConfigWith(ExtendedHttp.from(Client()));
}

Client extendedSpecHttpClient() {
  return _commonConfigWith(ExtendedHttp.from(httpClient()));
}

Client _commonConfigWith(ExtendedHttp extendedHttpClient) {
  extendedHttpClient.config(
      timeout: const Duration(seconds: 5),
      cachePolicy: CachePolicy.CacheFirst,
      headers: {
        // Set a custom User-Agent to avoid potential blocking
        "User-Agent": Constants.ua,
      },
      logURL: kDebugMode,
      logRequestHeader: kDebugMode,
      logRespondHeader: kDebugMode,
      logRespondBody: kDebugMode,
      sendDebugId: kDebugMode,
      enableAuthLock: false);
  return extendedHttpClient;
}
