import 'package:come/widget/linear_gradient_shader_mask.dart'
    show LinearGradientShaderMask;
import 'package:flutter/material.dart'
    show
        StatelessWidget,
        IconData,
        AlignmentGeometry,
        Color,
        BuildContext,
        Widget,
        Alignment,
        Colors,
        Icon;

class LinearGradientIcon extends StatelessWidget {
  final IconData icon;
  final double? size;

  /// The offset at which stop 0.0 of the gradient is placed.
  ///
  /// If this is an [Alignment], then it is expressed as a vector from
  /// coordinate (0.0, 0.0), in a coordinate space that maps the center of the
  /// paint box at (0.0, 0.0) and the bottom right at (1.0, 1.0).
  ///
  /// For example, a begin offset of (-1.0, 0.0) is half way down the
  /// left side of the box.
  ///
  /// It can also be an [AlignmentDirectional], where the start is the
  /// left in left-to-right contexts and the right in right-to-left contexts. If
  /// a text-direction-dependent value is provided here, then the [createShader]
  /// method will need to be given a [TextDirection].
  final AlignmentGeometry begin;

  /// The offset at which stop 1.0 of the gradient is placed.
  ///
  /// If this is an [Alignment], then it is expressed as a vector from
  /// coordinate (0.0, 0.0), in a coordinate space that maps the center of the
  /// paint box at (0.0, 0.0) and the bottom right at (1.0, 1.0).
  ///
  /// For example, a begin offset of (1.0, 0.0) is half way down the
  /// right side of the box.
  ///
  /// It can also be an [AlignmentDirectional], where the start is the left in
  /// left-to-right contexts and the right in right-to-left contexts. If a
  /// text-direction-dependent value is provided here, then the [createShader]
  /// method will need to be given a [TextDirection].
  final AlignmentGeometry end;

  /// The color to use when drawing the icon.
  ///
  /// Defaults to the nearest [IconTheme]'s [IconThemeData.color].
  ///
  /// The color (whether specified explicitly here or obtained from the
  /// [IconTheme]) will be further adjusted by the nearest [IconTheme]'s
  /// [IconThemeData.opacity].
  ///
  /// {@tool snippet}
  /// Typically, a Material Design color will be used, as follows:
  ///
  /// ```dart
  /// Icon(
  ///   Icons.widgets,
  ///   color: Colors.blue.shade400,
  /// )
  /// ```
  /// {@end-tool}
  final Color? color;

  const LinearGradientIcon(this.icon,
      {super.key,
      this.size,
      this.begin = Alignment.centerLeft,
      this.end = Alignment.centerRight,
      this.color});

  @override
  Widget build(BuildContext context) {
    return LinearGradientShaderMask(
      begin: begin,
      end: end,
      child: Icon(
        color: color ?? Colors.white,
        icon,
        size: size,
      ),
    );
  }
}
