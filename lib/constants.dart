import 'package:flutter/material.dart';

import 'webspec.dart';

abstract final class Constants {
  static const double goldenRatio = 0.618;
  static const double edgePadding = 22;
  static const double baseContainerPadding = edgePadding * goldenRatio;
  static const double svgIconSize = 55.2;
  static const double titleLeftPadding = baseContainerPadding * 2 * goldenRatio;
  static const double urlBoxTopPadding =
      titleLeftPadding / (goldenRatio * 10) / goldenRatio;
  static const double urlBoxWidth = 270;
  static const double captivePortalSvgIconSize = 12;
  static const double captivePortalSvgIconMarginRight =
      urlBoxTopPadding + (urlBoxTopPadding * goldenRatio);
  static const int httpOk = 200;
  static const String svgCommonUrlPrefix = "https://web.lcjuves.com/assets/svg";
  static final String searchBarHintText = isRunOnMobileWebViewOrBrowser()
      ? "Enter the search here"
      : "Please enter some information for search";
  static final Color primaryColor = Colors.black.withAlpha(102);
}
