import 'package:flutter/material.dart';

class InkWellContainer extends StatelessWidget {
  final BorderRadius? borderRadius;
  final GestureTapCallback? onTap;
  final Color? color;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final BoxConstraints? constraints;
  const InkWellContainer({
    super.key,
    this.borderRadius,
    this.onTap,
    this.color,
    this.padding,
    this.child,
    this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: borderRadius,
      child: Container(
        decoration: BoxDecoration(color: color, borderRadius: borderRadius),
        padding: padding,
        constraints: constraints,
        child: child,
      ),
      onTap: () => onTap!.call(),
    );
  }
}
