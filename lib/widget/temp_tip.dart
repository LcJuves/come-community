import 'dart:ui';

import 'package:devfans/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    if (!kIsWeb) {
      SystemChrome.setSystemUIOverlayStyle(
          Constants.defaultSystemUiOverlayStyle);
    }
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
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))
                ],
              ),
            ),
          ),
        ));
  }
}
