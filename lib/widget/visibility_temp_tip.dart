import 'package:devfans/constants.dart';
import 'package:devfans/webspec.dart';
import 'package:devfans/widget/backdrop_filter_scaffold.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VisibilityTempTip extends StatelessWidget {
  const VisibilityTempTip(
      {super.key,
      this.body,
      this.backgroundColor = Colors.transparent,
      this.singleChildScrollViewSpacing = 0,
      this.fetchedGeoInfo});

  final Widget? body;

  final Color? backgroundColor;

  final double singleChildScrollViewSpacing;

  final dynamic fetchedGeoInfo;

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      SystemChrome.setSystemUIOverlayStyle(
          Constants.defaultSystemUiOverlayStyle);
    }
    return Visibility(
        visible: (fetchedGeoInfo != null &&
                ("${fetchedGeoInfo['region']}".toLowerCase() ==
                        "Shandong".toLowerCase() ||
                    "${fetchedGeoInfo['region']}".toLowerCase() ==
                        "Jiangxi".toLowerCase() ||
                    "${fetchedGeoInfo['region']}".toLowerCase() ==
                        "Guangdong".toLowerCase() ||
                    "${fetchedGeoInfo['region']}".toLowerCase() ==
                        "Hubei".toLowerCase() ||
                    "${fetchedGeoInfo['region']}".toLowerCase() ==
                        "Liaoning".toLowerCase() ||
                    "${fetchedGeoInfo['region']}".toLowerCase() ==
                        "Henan".toLowerCase() ||
                    "${fetchedGeoInfo['region']}".toLowerCase() ==
                        "Shanghai"
                            .toLowerCase() /*  ||
                    "${fetchedGeoInfo['region']}".toLowerCase() ==
                        "Beijing".toLowerCase() */
                )) ||
            (!kDebugMode && letTempTipVisible()),
        child: BackdropFilterScaffold(
          sigma: 6.18,
          backgroundColor: backgroundColor,
          body: Container(
            padding: EdgeInsets.all(singleChildScrollViewSpacing),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hello",
                      style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Text("What's wrong with you?",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))
                ],
              ),
            ),
          ),
        ));
  }
}
