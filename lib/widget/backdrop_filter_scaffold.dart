import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterScaffold extends StatelessWidget {
  const BackdropFilterScaffold(
      {super.key, this.body, this.backgroundColor = Colors.transparent});

  final double sigma = 0.3;

  final Widget? body;

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: body,
        ));
  }
}
