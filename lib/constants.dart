import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract final class Constants {
  static const double goldenRatio = 0.618;
  static const double balanceBackPadding = 2.5;
  static const double balancePadding = 5;
  static const double edgePadding = 20 - balancePadding - balanceBackPadding;
  static const double baseContainerPadding =
      (edgePadding + balancePadding + (balanceBackPadding * goldenRatio)) *
          goldenRatio;
  static const double svgIconSize = 55.2 + (balanceBackPadding * goldenRatio);
  static const double titleLeftPadding = baseContainerPadding * 2 * goldenRatio;
  static const double urlBoxTopPadding =
      titleLeftPadding / (goldenRatio * 10) / goldenRatio;
  static const double urlBoxWidth = 247.38;
  static const double captivePortalSvgIconSize = 13.5;
  static const double captivePortalSvgIconMarginRight =
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
          systemStatusBarContrastEnforced: false);
  static const blurContainerPadding =
      (Constants.edgePadding + Constants.balanceBackPadding) *
          Constants.goldenRatio;
  static const enableWallpaper = true;
}
