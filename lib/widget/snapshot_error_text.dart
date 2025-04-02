import 'package:devfans/constants.dart';
import 'package:flutter/material.dart';

class SnapshotErrorText extends StatelessWidget {
  final AsyncSnapshot asyncSnapshot;
  const SnapshotErrorText({super.key, required this.asyncSnapshot});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(Constants.edgePadding),
        child: SelectionArea(
            child: Text(
          '${asyncSnapshot.error}\n${asyncSnapshot.stackTrace}',
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        )),
      ),
    );
  }
}
