import 'dart:io' show Platform;
import 'dart:ui';

import 'package:come/constants.dart' show Constants;
import 'package:come/l10n/app_localizations_en.dart' show AppLocalizationsEn;
import 'package:come/l10n/app_localizations_zh.dart' show AppLocalizationsZh;
import 'package:come/webspec.dart' show isRunOnMobileWebViewOrBrowser;
import 'package:come/widget/clipr_superellipse_backdrop_filter.dart'
    show ClipRSuperellipseBackdropFilter;
import 'package:come/widget/linear_gradient_icon.dart' show LinearGradientIcon;
import 'package:come/widget/rounded_superellipse_border_physical_shape.dart'
    show RoundedSuperellipseBorderPhysicalShape;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart'
    show
        BlendMode,
        BorderRadius,
        BoxConstraints,
        BoxDecoration,
        BuildContext,
        Colors,
        Container,
        EdgeInsets,
        EdgeInsetsGeometry,
        FontWeight,
        Icons,
        MediaQuery,
        Padding,
        Paint,
        SearchBar,
        State,
        StatefulWidget,
        TextInputAction,
        TextInputType,
        TextStyle,
        ValueChanged,
        Widget,
        WidgetStatePropertyAll;

class ClipRSuperellipseBackdropFilterSearchBar extends StatefulWidget {
  const ClipRSuperellipseBackdropFilterSearchBar(
      {super.key,
      this.onChanged,
      required this.singleChildScrollViewSpacing,
      this.margin,
      this.geoInfo});

  final ValueChanged<String>? onChanged;

  final double singleChildScrollViewSpacing;

  final EdgeInsetsGeometry? margin;

  final dynamic geoInfo;

  @override
  State<ClipRSuperellipseBackdropFilterSearchBar> createState() =>
      _ClipRSuperellipseBackdropFilterSearchBarState();

  double _textBoxDynamicWidth(
      BuildContext context, double singleChildScrollViewSpacing) {
    final screenWidth = MediaQuery.of(context).size.width;
    final usableWidth = screenWidth -
        (singleChildScrollViewSpacing * 2) -
        (Constants.baseContainerPadding * 2) -
        Constants.vectorIconSize -
        (Constants.titleLeftPadding * 2);
    return usableWidth < Constants.urlBoxWidth
        ? usableWidth
        : Constants.urlBoxWidth;
  }

  String _getSearchBarHintText() {
    final currentLocaleIsNotCN =
        !"${geoInfo['country_code']}".toLowerCase().startsWith("cn");
    return ((!kIsWeb &&
                (Platform.isAndroid || Platform.isIOS || Platform.isFuchsia)) ||
            isRunOnMobileWebViewOrBrowser())
        ? (currentLocaleIsNotCN
            ? AppLocalizationsEn().searchBarHintTextShort
            : AppLocalizationsZh().searchBarHintTextShort)
        : (currentLocaleIsNotCN
            ? AppLocalizationsEn().searchBarHintTextLong
            : AppLocalizationsZh().searchBarHintTextLong);
  }
}

class _ClipRSuperellipseBackdropFilterSearchBarState
    extends State<ClipRSuperellipseBackdropFilterSearchBar> {
  @override
  Widget build(BuildContext context) {
    final searchBarMaxWidth = ((Constants.urlBoxWidth +
                (Constants.baseContainerPadding * 2) +
                Constants.titleLeftPadding +
                Constants.vectorIconSize -
                Constants.blurContainerPadding) *
            2) +
        widget.singleChildScrollViewSpacing;
    final screenWidth = MediaQuery.of(context).size.width;
    final textBoxDynamicWidth = widget._textBoxDynamicWidth(
        context, widget.singleChildScrollViewSpacing);
    final oneCardWidth = textBoxDynamicWidth +
        (Constants.baseContainerPadding * 2) +
        Constants.titleLeftPadding +
        Constants.vectorIconSize -
        Constants.blurContainerPadding;
    final double marginHorizontal = textBoxDynamicWidth == Constants.urlBoxWidth
        ? widget.singleChildScrollViewSpacing
        : (screenWidth - oneCardWidth - Constants.blurContainerPadding) / 2;
    return ClipRSuperellipseBackdropFilter(
      margin: widget.margin ??
          EdgeInsets.only(
              left: marginHorizontal,
              right: marginHorizontal,
              bottom: !kIsWeb && Platform.isIOS
                  ? Constants.blurContainerPadding
                  : MediaQuery.of(context).padding.bottom),
      padding: const EdgeInsets.all(Constants.blurContainerPadding),
      borderRadius:
          BorderRadius.circular(MediaQuery.of(context).size.longestSide),
      elevation: 0,
      child: RoundedSuperellipseBorderPhysicalShape(
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.longestSide),
          clipBehavior: Clip.antiAlias,
          child: Container(
              constraints: BoxConstraints(maxWidth: searchBarMaxWidth),
              decoration: BoxDecoration(
                  color: Colors.white.withAlpha(35),
                  backgroundBlendMode: BlendMode.plus),
              child: SearchBar(
                elevation: const WidgetStatePropertyAll(3),
                keyboardType: TextInputType.webSearch,
                autoFocus: true,
                surfaceTintColor: const WidgetStatePropertyAll(Colors.black),
                leading: const Padding(
                  padding: EdgeInsets.fromLTRB(
                      10, 10, 10 * Constants.goldenRatio, 10),
                  child: LinearGradientIcon(
                    Icons.search_rounded,
                  ),
                ),
                overlayColor:
                    WidgetStatePropertyAll(Colors.white.withAlpha(167)),
                textInputAction: TextInputAction.search,
                shadowColor: const WidgetStatePropertyAll(Colors.transparent),
                backgroundColor:
                    WidgetStatePropertyAll(Colors.white.withAlpha(60)),
                hintText: widget._getSearchBarHintText(),
                hintStyle: WidgetStatePropertyAll(TextStyle(
                    fontWeight: FontWeight.w500,
                    foreground: Paint()
                      ..blendMode = BlendMode.modulate
                      ..color = Constants.primaryColor)),
                textStyle: WidgetStatePropertyAll(TextStyle(
                    fontWeight: FontWeight.w600,
                    foreground: Paint()
                      ..blendMode = BlendMode.modulate
                      ..color = Constants.primaryColor)),
                onChanged: widget.onChanged,
              ))),
    );
  }
}
