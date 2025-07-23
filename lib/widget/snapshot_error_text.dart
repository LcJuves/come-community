import 'dart:ui';

import 'package:devfans/constants.dart';
import 'package:devfans/widget/devfans_text.dart';
import 'package:flutter/material.dart';

class SnapshotErrorText extends StatelessWidget {
  final AsyncSnapshot asyncSnapshot;
  final double sigma;
  const SnapshotErrorText(
      {super.key, required this.asyncSnapshot, this.sigma = 6.18});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
      child: OverflowBox(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(Constants.edgePadding),
          child: DevFansText(
            selectable: true,
            '${asyncSnapshot.error}\n${asyncSnapshot.stackTrace}',
            textAlign: TextAlign.start,
            fontSize: 20,
            foregroundPaintColor: Colors.white,
            blendMode: BlendMode.difference,
          ),
        ),
      ),
    );
  }
}
