import 'package:devfans/constants.dart';
import 'package:devfans/widget/clip_rrect_backdrop_filter.dart';
import 'package:devfans/widget/gradient_icon.dart';
import 'package:flutter/material.dart';

class ClipRRrectBackdropFilterSearchBar extends StatefulWidget {
  const ClipRRrectBackdropFilterSearchBar(
      {super.key,
      this.onChanged,
      required this.singleChildScrollViewSpacing,
      this.margin});

  final ValueChanged<String>? onChanged;

  final double singleChildScrollViewSpacing;

  final EdgeInsetsGeometry? margin;

  @override
  State<ClipRRrectBackdropFilterSearchBar> createState() =>
      _ClipRRectBackdropFilterSearchBarState();
}

class _ClipRRectBackdropFilterSearchBarState
    extends State<ClipRRrectBackdropFilterSearchBar> {
  @override
  Widget build(BuildContext context) {
    final searchBarMaxWidth = ((Constants.urlBoxWidth +
                (Constants.baseContainerPadding * 2) +
                Constants.titleLeftPadding +
                Constants.svgIconSize +
                5) *
            2) +
        widget.singleChildScrollViewSpacing;
    return ClipRRrectBackdropFilter(
      margin: EdgeInsets.only(
          left: widget.singleChildScrollViewSpacing,
          right: widget.singleChildScrollViewSpacing),
      borderRadius:
          BorderRadius.circular(MediaQuery.of(context).size.longestSide),
      elevation: 0,
      child: Container(
        margin:
            const EdgeInsets.all(Constants.edgePadding * Constants.goldenRatio),
        constraints: BoxConstraints(maxWidth: searchBarMaxWidth),
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
          backgroundColor: WidgetStatePropertyAll(Colors.white.withAlpha(204)),
          hintText: Constants.searchBarHintText,
          hintStyle:
              WidgetStatePropertyAll(TextStyle(color: Constants.primaryColor)),
          textStyle: const WidgetStatePropertyAll(
              TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
          onChanged: widget.onChanged,
        ),
      ),
    );
  }
}
