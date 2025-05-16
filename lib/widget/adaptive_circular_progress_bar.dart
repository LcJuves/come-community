import 'dart:ui';

import 'package:devfans/constants.dart';
import 'package:flutter/material.dart';

class AdaptiveCircularProgressBar extends StatelessWidget {
  const AdaptiveCircularProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final circularProgressSize =
        screenWidth > screenHeight ? screenHeight : screenWidth;
    final circularProgressEdgePadding =
        circularProgressSize - (circularProgressSize * Constants.goldenRatio);
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6.18, sigmaY: 6.18),
      child: Center(
          child: SizedBox(
        width: circularProgressSize,
        height: circularProgressSize,
        child: Padding(
          padding: EdgeInsets.all(circularProgressEdgePadding),
          child: const CircularProgressIndicator(
            strokeWidth: 9,
            color: Colors.white,
          ),
        ),
      )),
    );
  }
}
