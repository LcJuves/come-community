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

Future<dynamic> navLangGeoInfo() async {
  var language = window.navigator.language;
  if (language.isEmpty || language.toLowerCase().endsWith("cn")) {
    return Future.value({'country_code': 'CN'});
  }
  return Future.value({'country_code': 'EN'});
}
