import 'package:web/web.dart';

String getUserAgent() {
  return window.navigator.userAgent.toLowerCase();
}

bool isRunOnAndroidWebViewOrBrowser() {
  return getUserAgent().contains("android");
}

bool isRunOnIOSWebViewOrBrowser() {
  return RegExp(r'iphone|ipad|ipod|ios').hasMatch(getUserAgent());
}

bool isRunOnMobileWebViewOrBrowser() {
  return isRunOnAndroidWebViewOrBrowser() || isRunOnIOSWebViewOrBrowser();
}
