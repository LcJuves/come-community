import 'dart:ui';

import 'package:flutter/material.dart';

class TempTip extends StatelessWidget {
  const TempTip(
      {super.key,
      this.body,
      this.backgroundColor = Colors.transparent,
      this.singleChildScrollViewSpacing = 0});

  final double sigma = 6.18;

  final Widget? body;

  final Color? backgroundColor;

  final double singleChildScrollViewSpacing;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: Container(
            padding: EdgeInsets.all(singleChildScrollViewSpacing),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hello",
                      style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Text("How are you?",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))
                ],
              ),
            ),
          ),
        ));
  }
}
