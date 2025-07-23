import 'package:devfans/widget/linear_gradient_shader_mask.dart';
import 'package:flutter/material.dart';

class LinearGradientIcon extends StatelessWidget {
  final IconData icon;
  final double? size;

  const LinearGradientIcon(this.icon, {super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return LinearGradientShaderMask(
      child: Icon(
        color: Colors.white,
        icon,
        size: size,
      ),
    );
  }
}
