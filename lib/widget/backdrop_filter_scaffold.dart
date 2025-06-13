import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterScaffold extends StatelessWidget {
  const BackdropFilterScaffold(
      {super.key,
      this.body,
      this.backgroundColor = Colors.transparent,
      this.sigma = 0.3,
      this.appBar});

  final double sigma;

  final Widget? body;

  final Color? backgroundColor;

  /// An app bar to display at the top of the scaffold.
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
        child: Scaffold(
          appBar: appBar,
          backgroundColor: backgroundColor,
          body: body,
        ));
  }
}
