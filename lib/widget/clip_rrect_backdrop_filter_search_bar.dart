import 'dart:io';

import 'package:devfans/constants.dart';
import 'package:devfans/l10n/app_localizations_en.dart';
import 'package:devfans/l10n/app_localizations_zh.dart';
import 'package:devfans/webspec.dart';
import 'package:devfans/widget/clip_rrect_backdrop_filter.dart';
import 'package:devfans/widget/linear_gradient_icon.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ClipRRrectBackdropFilterSearchBar extends StatefulWidget {
  const ClipRRrectBackdropFilterSearchBar(
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
  State<ClipRRrectBackdropFilterSearchBar> createState() =>
      _ClipRRectBackdropFilterSearchBarState();

  double _textBoxDynamicWidth(
      BuildContext context, double singleChildScrollViewSpacing) {
    final screenWidth = MediaQuery.of(context).size.width;
    final usableWidth = screenWidth -
        (singleChildScrollViewSpacing * 2) -
        (Constants.baseContainerPadding * 2) -
        Constants.svgIconSize -
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

class _ClipRRectBackdropFilterSearchBarState
    extends State<ClipRRrectBackdropFilterSearchBar> {
  @override
  Widget build(BuildContext context) {
    final searchBarMaxWidth = ((Constants.urlBoxWidth +
                (Constants.baseContainerPadding * 2) +
                Constants.titleLeftPadding +
                Constants.svgIconSize -
                Constants.blurContainerPadding) *
            2) +
        widget.singleChildScrollViewSpacing;
    final screenWidth = MediaQuery.of(context).size.width;
    final textBoxDynamicWidth = widget._textBoxDynamicWidth(
        context, widget.singleChildScrollViewSpacing);
    final oneCardWidth = textBoxDynamicWidth +
        (Constants.baseContainerPadding * 2) +
        Constants.titleLeftPadding +
        Constants.svgIconSize -
        Constants.blurContainerPadding;
    final double marginHorizontal = textBoxDynamicWidth == Constants.urlBoxWidth
        ? widget.singleChildScrollViewSpacing
        : (screenWidth - oneCardWidth - Constants.blurContainerPadding) / 2;
    return ClipRRrectBackdropFilter(
      margin: widget.margin ??
          EdgeInsets.only(
              left: marginHorizontal,
              right: marginHorizontal,
              bottom: !kIsWeb && Platform.isIOS
                  ? Constants.blurContainerPadding
                  : MediaQuery.of(context).padding.bottom),
      borderRadius:
          BorderRadius.circular(MediaQuery.of(context).size.longestSide),
      elevation: 0,
      child: Container(
        margin: const EdgeInsets.all(Constants.blurContainerPadding),
        decoration: BoxDecoration(
            color: Colors.white.withAlpha(40),
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.longestSide),
            backgroundBlendMode: BlendMode.plus),
        constraints: BoxConstraints(maxWidth: searchBarMaxWidth),
        child: SearchBar(
          elevation: const WidgetStatePropertyAll(3),
          keyboardType: TextInputType.webSearch,
          autoFocus: true,
          surfaceTintColor: const WidgetStatePropertyAll(Colors.black),
          leading: const Padding(
            padding:
                EdgeInsets.fromLTRB(10, 10, 10 * Constants.goldenRatio, 10),
            child: LinearGradientIcon(
              Icons.search_rounded,
            ),
          ),
          overlayColor: WidgetStatePropertyAll(Colors.white.withAlpha(167)),
          textInputAction: TextInputAction.search,
          shadowColor: const WidgetStatePropertyAll(Colors.transparent),
          backgroundColor: WidgetStatePropertyAll(Colors.white.withAlpha(60)),
          hintText: widget._getSearchBarHintText(),
          hintStyle: WidgetStatePropertyAll(TextStyle(
              fontWeight: FontWeight.w500,
              foreground: Paint()
                ..blendMode = BlendMode.modulate
                ..color = Constants.primaryColor)),
          textStyle: WidgetStatePropertyAll(TextStyle(
              fontWeight: FontWeight.w600,
              foreground: Paint()
                ..blendMode = BlendMode.difference
                ..color = Colors.white)),
          onChanged: widget.onChanged,
        ),
      ),
    );
  }
}
