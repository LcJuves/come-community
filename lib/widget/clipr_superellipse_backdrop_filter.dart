import 'dart:ui' show ImageFilter;

import 'package:come/widget/rounded_superellipse_border_physical_shape.dart'
    show RoundedSuperellipseBorderPhysicalShape;
import 'package:flutter/material.dart' show Colors;
import 'package:flutter/painting.dart' show Clip;
import 'package:flutter/rendering.dart'
    show BorderRadius, Color, Decoration, EdgeInsetsGeometry, EdgeInsets;
import 'package:flutter/widgets.dart'
    show
        BackdropFilter,
        BuildContext,
        Container,
        Padding,
        SizedBox,
        StatelessWidget,
        Widget;

class ClipRSuperellipseBackdropFilter extends StatelessWidget {
  const ClipRSuperellipseBackdropFilter({
    super.key,
    this.child,
    this.borderRadius = BorderRadius.zero,
    this.elevation = 3.0,
    this.sigma = 5,
    this.decoration,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.clipBehavior = Clip.antiAlias,
    this.color,
    this.shadowColor,
  });

  final Widget? child;

  final BorderRadius? borderRadius;

  final double elevation;

  final double sigma;

  final Decoration? decoration;

  final double? width;
  final double? height;

  /// Empty space to surround the [decoration] and [child].
  final EdgeInsetsGeometry? margin;

  /// Empty space to inscribe inside the [decoration]. The [child], if any, is
  /// placed inside this padding.
  ///
  /// This padding is in addition to any padding inherent in the [decoration];
  /// see [Decoration.padding].
  final EdgeInsetsGeometry? padding;

  /// {@macro flutter.material.Material.clipBehavior}
  ///
  /// Defaults to [Clip.antiAlias].
  final Clip clipBehavior;

  /// The background color.
  final Color? color;

  /// The shadow color.
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: RoundedSuperellipseBorderPhysicalShape(
        borderRadius: borderRadius ?? BorderRadius.zero,
        clipBehavior: clipBehavior,
        elevation: elevation,
        color: color ?? Colors.transparent,
        shadowColor: shadowColor ?? Colors.grey.withAlpha(106),
        child: SizedBox(
          width: width,
          height: height,
          child: BackdropFilter.grouped(
            filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
            child: Container(
              padding: padding,
              decoration: decoration,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
