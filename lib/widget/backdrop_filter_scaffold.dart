import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart'
    show
        StatelessWidget,
        Colors,
        Widget,
        Color,
        BlendMode,
        PreferredSizeWidget,
        BuildContext,
        Scaffold,
        BackdropFilter;

class BackdropFilterScaffold extends StatelessWidget {
  const BackdropFilterScaffold(
      {super.key,
      this.body,
      this.backgroundColor = Colors.transparent,
      this.blendMode = BlendMode.srcOver,
      this.sigma = 0,
      this.appBar});

  final double sigma;

  final Widget? body;

  final Color? backgroundColor;

  final BlendMode blendMode;

  /// An app bar to display at the top of the scaffold.
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
        blendMode: blendMode,
        child: Scaffold(
          appBar: appBar,
          backgroundColor: backgroundColor,
          body: body,
        ));
  }
}
