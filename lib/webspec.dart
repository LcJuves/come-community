import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:universal_web/web.dart' show window;

String getUserAgent() {
  return window.navigator.userAgent.toLowerCase();
}

bool isRunOnSafariWebBrowser() {
  if (!kIsWeb) {
    return false;
  }
  final userAgent = getUserAgent().toLowerCase();
  return kIsWeb && !userAgent.contains("chrom") && userAgent.contains("safari");
}

bool isRunOnAndroidWebViewOrBrowser() {
  return kIsWeb && getUserAgent().toLowerCase().contains("android");
}

bool isRunOnIOSWebViewOrBrowser() {
  return kIsWeb &&
      RegExp(r'iphone|ipad|ipod|ios').hasMatch(getUserAgent().toLowerCase());
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
  return !(getWindowLocationUri().host.startsWith("192.168.31")) &&
      // !(getWindowLocationUri().host.startsWith("[::")) &&
      !(getWindowLocationUri().host.endsWith("lcjuves.com"));
}

/// Provides device id information.
class PlatformDeviceId {
  static Future<String?> get getDeviceId async {
    return Future.value(getUserAgent());
  }
}
