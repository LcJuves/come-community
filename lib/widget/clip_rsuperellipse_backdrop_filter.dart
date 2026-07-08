import 'dart:ui' show ImageFilter;

import 'package:come/widget/rounded_superellipse_border_physical_shape.dart'
    show RoundedSuperellipseBorderPhysicalShape;
import 'package:flutter/material.dart' show Colors;
import 'package:flutter/painting.dart' show RoundedSuperellipseBorder;
import 'package:flutter/rendering.dart'
    show BorderRadius, Decoration, EdgeInsetsGeometry, Color, ShapeDecoration;
import 'package:flutter/widgets.dart'
    show
        StatelessWidget,
        BackdropFilter,
        Widget,
        BuildContext,
        Container,
        ClipRSuperellipse;

class ClipRSuperellipseBackdropFilter extends StatelessWidget {
  const ClipRSuperellipseBackdropFilter(
      {super.key,
      this.child,
      this.borderRadius = BorderRadius.zero,
      this.elevation = 3.0,
      this.sigma = 5,
      this.decoration,
      this.width,
      this.height,
      this.margin,
      this.color,
      this.shadowColor});

  final Widget? child;

  final BorderRadius? borderRadius;

  final double elevation;

  final double sigma;

  final Decoration? decoration;

  final double? width;
  final double? height;

  /// Empty space to surround the [decoration] and [child].
  final EdgeInsetsGeometry? margin;

  /// The background color.
  final Color? color;

  /// The shadow color.
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: ShapeDecoration(
        shape: RoundedSuperellipseBorder(borderRadius: borderRadius),
      ),
      child: RoundedSuperellipseBorderPhysicalShape(
          borderRadius: borderRadius ?? BorderRadius.zero,
          elevation: elevation,
          color: color ?? Colors.transparent,
          shadowColor: shadowColor ?? Colors.grey.withAlpha(169),
          child: ClipRSuperellipse(
            borderRadius: borderRadius ?? BorderRadius.zero,
            child: BackdropFilter.grouped(
                filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
                child: child),
          )),
    );
  }
}
