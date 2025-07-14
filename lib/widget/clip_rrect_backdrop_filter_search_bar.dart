import 'dart:io';

import 'package:devfans/constants.dart';
import 'package:devfans/widget/clip_rrect_backdrop_filter.dart';
import 'package:devfans/widget/gradient_icon.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ClipRRrectBackdropFilterSearchBar extends StatefulWidget {
  const ClipRRrectBackdropFilterSearchBar(
      {super.key,
      this.onChanged,
      required this.singleChildScrollViewSpacing,
      this.margin});

  final blurContainerPadding = Constants.edgePadding * Constants.goldenRatio;

  final ValueChanged<String>? onChanged;

  final double singleChildScrollViewSpacing;

  final EdgeInsetsGeometry? margin;

  @override
  State<ClipRRrectBackdropFilterSearchBar> createState() =>
      _ClipRRectBackdropFilterSearchBarState();
}

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

class _ClipRRectBackdropFilterSearchBarState
    extends State<ClipRRrectBackdropFilterSearchBar> {
  @override
  Widget build(BuildContext context) {
    final searchBarMaxWidth = ((Constants.urlBoxWidth +
                (Constants.baseContainerPadding * 2) +
                Constants.titleLeftPadding +
                Constants.svgIconSize -
                (Constants.edgePadding * Constants.goldenRatio)) *
            2) +
        widget.singleChildScrollViewSpacing;
    final screenWidth = MediaQuery.of(context).size.width;
    final textBoxDynamicWidth =
        _textBoxDynamicWidth(context, widget.singleChildScrollViewSpacing);
    final oneCardWidth = textBoxDynamicWidth +
        (Constants.baseContainerPadding * 2) +
        Constants.titleLeftPadding +
        Constants.svgIconSize -
        (Constants.edgePadding * Constants.goldenRatio);
    final double marginHorizontal = textBoxDynamicWidth == Constants.urlBoxWidth
        ? widget.singleChildScrollViewSpacing
        : (screenWidth - oneCardWidth - widget.blurContainerPadding) / 2;
    return ClipRRrectBackdropFilter(
      margin: widget.margin ??
          EdgeInsets.only(
              left: marginHorizontal,
              right: marginHorizontal,
              bottom: !kIsWeb && Platform.isIOS
                  ? widget.blurContainerPadding
                  : MediaQuery.of(context).padding.bottom),
      borderRadius:
          BorderRadius.circular(MediaQuery.of(context).size.longestSide),
      elevation: 0,
      child: Container(
        margin: EdgeInsets.all(widget.blurContainerPadding),
        constraints: BoxConstraints(maxWidth: searchBarMaxWidth),
        child: PhysicalModel(
          color: Colors.transparent,
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.longestSide),
          elevation: Constants.goldenRatio,
          child: SearchBar(
            elevation: const WidgetStatePropertyAll(0),
            keyboardType: TextInputType.webSearch,
            autoFocus: true,
            surfaceTintColor: const WidgetStatePropertyAll(Colors.black),
            leading: const Padding(
              padding:
                  EdgeInsets.fromLTRB(10, 10, 10 * Constants.goldenRatio, 10),
              child: GradientIcon(
                Icons.search_rounded,
              ),
            ),
            overlayColor: const WidgetStatePropertyAll(Colors.white),
            textInputAction: TextInputAction.search,
            shadowColor: const WidgetStatePropertyAll(Colors.transparent),
            backgroundColor:
                WidgetStatePropertyAll(Colors.white.withAlpha(204)),
            hintText: Constants.searchBarHintText,
            hintStyle: WidgetStatePropertyAll(TextStyle(
                foreground: Paint()
                  ..blendMode = BlendMode.multiply
                  ..color = Constants.primaryColor)),
            textStyle: WidgetStatePropertyAll(TextStyle(
                fontWeight: FontWeight.w500,
                foreground: Paint()
                  ..blendMode = BlendMode.multiply
                  ..color = Colors.black)),
            onChanged: widget.onChanged,
          ),
        ),
      ),
    );
  }
}
