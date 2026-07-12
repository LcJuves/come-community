import 'dart:io' show RawDatagramSocket, InternetAddress;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:stun/stun.dart' show StunHandler;
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
  return !(getWindowLocationUri().host == "::" ||
      getWindowLocationUri().host.startsWith("192.168") ||
      getWindowLocationUri().host.endsWith("lcjuves.com"));
}

Future<String> getPublicIPv6Address(String key) async {
  // Create IPv6 socket
  final socket = await RawDatagramSocket.bind(
    InternetAddress.anyIPv6,
    0,
  );

  final input = (
    address: 'stun.l.google.com',
    port: 19302,
    socket: socket,
  );

  final handler = StunHandler(input);
  final response = await handler.performStunRequest();
  return response.publicIp;
}

/// Provides device id information.
class PlatformDeviceId {
  static Future<String?> get getDeviceId async {
    return Future.value(getUserAgent());
  }
}
