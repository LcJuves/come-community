import 'dart:ui';

import 'package:flutter/material.dart';

class ClipRRrectBackdropFilter extends StatelessWidget {
  const ClipRRrectBackdropFilter(
      {super.key, this.child, this.borderRadius = BorderRadius.zero});

  final Widget? child;

  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      clipBehavior: Clip.none,
      elevation: 3,
      child: ClipRRect(
        borderRadius: borderRadius,
        clipBehavior: Clip.antiAlias,
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), child: child),
      ),
    );
  }
}
