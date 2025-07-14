import 'dart:ui';

import 'package:devfans/constants.dart';
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
          child: SelectableText(
              '${asyncSnapshot.error}\n${asyncSnapshot.stackTrace}',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 20,
                  foreground: Paint()
                    ..blendMode = BlendMode.difference
                    ..color = Colors.white)),
        ),
      ),
    );
  }
}
