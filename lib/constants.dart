import 'package:flutter/material.dart';

import 'webspec.dart';

abstract final class Constants {
  static const double edgePadding = 35;
  static const double baseContainerPadding = 15;
  static const double svgIconSize = 55.2;
  static const double titleLeftPadding = 15;
  static const double urlBoxTopPadding = 4;
  static const double urlBoxWidth = 270;
  static const double captivePortalSvgIconSize = 12;
  static const double captivePortalSvgIconMarginRight =
      urlBoxTopPadding + (urlBoxTopPadding * goldenRatio);
  static const double goldenRatio = 0.618;
  static const int httpOk = 200;
  static const String svgCommonUrlPrefix = "https://web.lcjuves.com/assets/svg";
  static final String searchBarHintText = isRunOnMobileWebViewOrBrowser()
      ? "Enter the search here"
      : "Please enter some information for search";
  static final Color primaryColor = Colors.black.withAlpha(102);
}
