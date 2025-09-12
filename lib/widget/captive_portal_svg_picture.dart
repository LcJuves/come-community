import 'package:come/constants.dart';
import 'package:come/widget/linear_gradient_shader_mask.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CaptivePortalSvgPicture extends StatelessWidget {
  const CaptivePortalSvgPicture({super.key});

  final String _captivePortalSvg =
      """<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 -960 814 815"><path d="M758-145 640-263v89h-80v-226h226v80h-90l118 118zm-358-15q-83 0-156-31.5T117-277 31.5-404 0-560t31.5-156T117-843t127-85.5T400-960t156 31.5T683-843t85.5 127T800-560q0 20-2 40t-6 40h-82q5-20 7.5-40t2.5-40-2.5-40-7.5-40H574q3 20 4.5 40t1.5 40-1.5 40-4.5 40h-80q3-20 4.5-40t1.5-40-1.5-40-4.5-40H306q-3 20-4.5 40t-1.5 40 1.5 40 4.5 40h134v80H324q12 43 31 82.5t45 75.5q20 0 40-2.5t40-4.5v82q-20 2-40 4.5t-40 2.5M90-480h136q-3-20-4.5-40t-1.5-40 1.5-40 4.5-40H90q-5 20-7.5 40T80-560t2.5 40 7.5 40m34-240h118q9-37 22.5-72.5T296-862q-55 18-99 54.5T124-720m172 462q-18-34-31.5-69.5T242-400H124q29 51 73 87.5t99 54.5m28-462h152q-12-43-31-82.5T400-878q-26 36-45 75.5T324-720m234 0h118q-29-51-73-87.5T504-862q18 34 31.5 69.5T558-720"/></svg>""";

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: Constants.captivePortalSvgIconSize,
      child: LinearGradientShaderMask(
        blendMode: BlendMode.modulate,
        child: SvgPicture.string(
          _captivePortalSvg,
          colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcATop),
        ),
      ),
    );
  }
}
