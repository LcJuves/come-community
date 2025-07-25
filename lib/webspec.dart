import 'package:flutter/foundation.dart';
import 'package:universal_web/web.dart';

String getUserAgent() {
  return window.navigator.userAgent.toLowerCase();
}

bool isRunOnAndroidWebViewOrBrowser() {
  return kIsWeb && getUserAgent().contains("android");
}

bool isRunOnIOSWebViewOrBrowser() {
  return kIsWeb && RegExp(r'iphone|ipad|ipod|ios').hasMatch(getUserAgent());
}

bool isRunOnMobileWebViewOrBrowser() {
  return (kIsWeb) &&
      (isRunOnAndroidWebViewOrBrowser() || isRunOnIOSWebViewOrBrowser());
}

Uri getWindowLocationUri() {
  return Uri.parse(window.location.href);
}

bool letTempTipVisible() {
  if (!kIsWeb) {
    return false;
  }
  return !(getWindowLocationUri().host.startsWith(RegExp("[0-9]"))) &&
      !(getWindowLocationUri().host.endsWith("lcjuves.com"));
}
