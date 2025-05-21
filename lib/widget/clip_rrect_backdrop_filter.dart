import 'dart:ui';

import 'package:flutter/material.dart';

class ClipRRrectBackdropFilter extends StatelessWidget {
  const ClipRRrectBackdropFilter(
      {super.key,
      this.child,
      this.borderRadius = BorderRadius.zero,
      this.clipper,
      this.elevation = 3});

  final Widget? child;

  final BorderRadiusGeometry borderRadius;

  final double? elevation;

  /// If non-null, determines which clip to use.
  final CustomClipper<RRect>? clipper;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      clipBehavior: Clip.none,
      elevation: elevation,
      child: ClipRRect(
          clipper: clipper,
          borderRadius: borderRadius,
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), child: child)),
    );
  }
}
