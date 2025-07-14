import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'webspec.dart';

abstract final class Constants {
  static const double goldenRatio = 0.618;
  static const double balancePadding = 4.5;
  static const double edgePadding = 20 - balancePadding;
  static const double baseContainerPadding =
      (edgePadding + balancePadding) * goldenRatio;
  static const double svgIconSize = 55.2;
  static const double titleLeftPadding = baseContainerPadding * 2 * goldenRatio;
  static const double urlBoxTopPadding =
      titleLeftPadding / (goldenRatio * 10) / goldenRatio;
  static const double urlBoxWidth = 270;
  static const double captivePortalSvgIconSize = 12;
  static const double captivePortalSvgIconMarginRight =
      urlBoxTopPadding + (urlBoxTopPadding * goldenRatio);
  static const int httpOk = 200;
  static const int colorMaxRangeValue = 255;
  static const String svgCommonUrlPrefix =
      "https://fastweb.lcjuves.com/assets/svg";
  static final String searchBarHintText = ((!kIsWeb &&
              (Platform.isAndroid || Platform.isIOS || Platform.isFuchsia)) ||
          isRunOnMobileWebViewOrBrowser())
      ? "Enter the search here"
      : "Please enter some information here for search";
  static final Color primaryColor = Colors.black.withAlpha(102);
  static const Color themeColor = Colors.black;
  static const SystemUiOverlayStyle defaultSystemUiOverlayStyle =
      SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
          systemNavigationBarColor: themeColor,
          systemNavigationBarContrastEnforced: false,
          systemNavigationBarIconBrightness: Brightness.dark,
          systemStatusBarContrastEnforced: false);
}
