import 'package:flutter/material.dart';

class AnimatedWallpaperContainer extends StatefulWidget {
  late final bool _visible;
  AnimatedWallpaperContainer({Key? key}) : super(key: key) {
    _visible = true;
  }

  @override
  State<AnimatedWallpaperContainer> createState() =>
      _AnimatedWallpaperContainerState();
}

class _AnimatedWallpaperContainerState
    extends State<AnimatedWallpaperContainer> {
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      // If the widget is visible, animate to 0.0 (invisible).
      // If the widget is hidden, animate to 1.0 (fully visible).
      opacity: widget._visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 1000),
      // The green box must be a child of the AnimatedOpacity widget.
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/img/wallpaper.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
