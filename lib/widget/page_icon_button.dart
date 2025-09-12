import 'package:come/constants.dart';
import 'package:flutter/material.dart';

class PageIconButton extends StatelessWidget {
  /// The icon to display. The available icons are described in [Icons].
  ///
  /// The icon can be null, in which case the widget will render as an empty
  /// space of the specified [size].
  final IconData? icon;

  /// The callback that is called when the button is tapped or otherwise activated.
  ///
  /// If this is set to null, the button will be disabled.
  final VoidCallback? onPressed;

  const PageIconButton(this.icon, {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: (Constants.svgIconSize / 2) * Constants.goldenRatio,
        padding: const EdgeInsets.all(10),
        onPressed: onPressed,
        icon: Icon(icon));
  }
}
