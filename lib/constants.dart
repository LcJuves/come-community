import 'package:flutter/material.dart' show Colors;
import 'package:flutter/rendering.dart' show Color;
import 'package:flutter/services.dart' show SystemUiOverlayStyle;
import 'package:flutter/widgets.dart' show Brightness;

abstract final class Constants {
  static const double goldenRatio = 0.618;
  static const double balanceBackPadding = 2.5;
  static const double balancePadding = 5;
  static const double edgePadding = 20 - balancePadding - balanceBackPadding;
  static const double baseContainerPadding =
      (edgePadding + balancePadding + (balanceBackPadding * goldenRatio)) *
      goldenRatio;
  static const double vectorIconSize =
      55.2 + (balanceBackPadding * goldenRatio);
  static const double titleLeftPadding = baseContainerPadding * 2 * goldenRatio;
  static const double urlBoxTopPadding =
      titleLeftPadding / (goldenRatio * 10) / goldenRatio;
  static const double urlBoxWidth = 247.38;
  static const double captivePortalIconSize = 13.5;
  static const double captivePortalIconMarginRight =
      urlBoxTopPadding + (urlBoxTopPadding * goldenRatio);
  static const int httpOk = 200;
  static const int colorMaxRangeValue = 255;
  static const String svgCommonUrlPrefix =
      "https://come.lcjuves.com/assets/res/svg";
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
        systemStatusBarContrastEnforced: false,
      );
  static const blurContainerPadding = baseContainerPadding * goldenRatio;
  static const enableWallpaper = true;
  static const ua =
      'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0';
}
