import 'dart:ui' show ImageFilter;

import 'package:come/constants.dart' show Constants;
import 'package:come/widget/come_circular_progress_bar.dart'
    show ComeCircularProgressIndicator;
import 'package:flutter/material.dart'
    show
        StatelessWidget,
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
        BackdropFilter;

class AdaptiveCircularProgressBar extends StatelessWidget {
  final double sigma;
  const AdaptiveCircularProgressBar({super.key, this.sigma = 6.18});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final circularProgressSize =
        screenWidth > screenHeight ? screenHeight : screenWidth;
    final circularProgressEdgePadding =
        circularProgressSize - (circularProgressSize * Constants.goldenRatio);
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
      child: Center(
          child: SizedBox(
        width: circularProgressSize,
        height: circularProgressSize,
        child: Padding(
          padding: EdgeInsets.all(circularProgressEdgePadding),
          child: const ComeCircularProgressIndicator(
            strokeWidth: 9,
            strokeCap: StrokeCap.round,
            color: Colors.white,
            blendMode: BlendMode.difference,
          ),
        ),
      )),
    );
  }
}
