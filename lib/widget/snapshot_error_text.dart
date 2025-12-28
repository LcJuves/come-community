import 'dart:ui' show ImageFilter;

import 'package:come/constants.dart' show Constants;
import 'package:come/widget/come_text.dart' show ComeText;
import 'package:flutter/material.dart'
    show
        StatelessWidget,
        AsyncSnapshot,
        BuildContext,
        Widget,
        EdgeInsets,
        Axis,
        MediaQuery,
        Alignment,
        TextAlign,
        Colors,
        BlendMode,
        Container,
        SingleChildScrollView,
        BackdropFilter;

class SnapshotErrorText extends StatelessWidget {
  final AsyncSnapshot asyncSnapshot;
  final double sigma;
  const SnapshotErrorText(
      {super.key, required this.asyncSnapshot, this.sigma = 6.18});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
      child: SingleChildScrollView(
          padding: const EdgeInsets.all(Constants.edgePadding),
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topLeft,
            child: ComeText(
              selectable: true,
              '${asyncSnapshot.error}\n${asyncSnapshot.stackTrace}',
              textAlign: TextAlign.start,
              fontSize: 20,
              foregroundPaintColor: Colors.white,
              blendMode: BlendMode.difference,
            ),
          )),
    );
  }
}
