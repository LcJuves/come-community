import 'dart:ui' show ImageFilter;

import 'package:come/constants.dart' show Constants;
import 'package:come/widget/come_circular_progress_bar.dart'
    show ComeCircularProgressIndicator;
import 'package:flutter/material.dart'
    show
        BuildContext,
        Widget,
        MediaQuery,
        EdgeInsets,
        StrokeCap,
        Colors,
        BlendMode,
        Padding,
        SizedBox,
        Center,
        BackdropFilter,
        State,
        StatefulWidget;
import 'package:flutter/widgets.dart' show Curves, AnimatedOpacity;

class AdaptiveCircularProgressBar extends StatefulWidget {
  final double sigma;
  late final bool _visible;
  AdaptiveCircularProgressBar(
      {super.key, this.sigma = Constants.goldenRatio * 10}) {
    _visible = true;
  }

  @override
  State<AdaptiveCircularProgressBar> createState() =>
      _AdaptiveCircularProgressBarState();
}

class _AdaptiveCircularProgressBarState
    extends State<AdaptiveCircularProgressBar> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final circularProgressSize =
        screenWidth > screenHeight ? screenHeight : screenWidth;
    final circularProgressEdgePadding =
        circularProgressSize - (circularProgressSize * Constants.goldenRatio);
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: widget.sigma, sigmaY: widget.sigma),
      child: Center(
          child: SizedBox(
        width: circularProgressSize,
        height: circularProgressSize,
        child: Padding(
          padding: EdgeInsets.all(circularProgressEdgePadding),
          child: AnimatedOpacity(
            // If the widget is visible, animate to 0.0 (invisible).
            // If the widget is hidden, animate to 1.0 (fully visible).
            opacity: widget._visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastEaseInToSlowEaseOut,
            child: const ComeCircularProgressIndicator(
              strokeWidth: 9,
              strokeCap: StrokeCap.round,
              color: Colors.white,
              blendMode: BlendMode.difference,
            ),
          ),
        ),
      )),
    );
  }
}
