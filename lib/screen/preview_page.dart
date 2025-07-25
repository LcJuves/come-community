import 'package:devfans/constants.dart';
import 'package:devfans/widget/svg_network_icon.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class PreviewPage extends StatefulWidget {
  final String title;
  final SvgNetworkIcon svgNetworkIcon;
  final String previewUrl;
  const PreviewPage(
      {super.key,
      required this.title,
      required this.svgNetworkIcon,
      required this.previewUrl});

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  late final InAppWebView inAppWebView;

  @override
  void initState() {
    super.initState();
    inAppWebView = InAppWebView(
        initialUrlRequest: URLRequest(
            url: WebUri(widget.previewUrl),
            assumesHTTP3Capable: true,
            headers: Map.of(<String, String>{
              "Origin": Uri.parse(widget.previewUrl).origin
            })));
  }

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      SystemChrome.setSystemUIOverlayStyle(
          Constants.defaultSystemUiOverlayStyle.copyWith(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.light,
      ));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            bottom: MediaQuery.of(context).padding.bottom),
        child: Stack(
          children: [
            inAppWebView,
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(
                    bottom: Constants.blurContainerPadding),
                child: PhysicalModel(
                  shadowColor: Colors.grey.withAlpha(169),
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.longestSide),
                  elevation: 3,
                  color: Colors.white.withAlpha(222),
                  child: Container(
                    padding:
                        const EdgeInsets.all(Constants.blurContainerPadding),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            iconSize: (Constants.svgIconSize / 2) *
                                Constants.goldenRatio,
                            padding: const EdgeInsets.all(10),
                            onPressed: () async =>
                                await Navigator.maybePop(context),
                            icon: const Icon(Icons.arrow_back_rounded)),
                        Container(
                          margin: const EdgeInsets.only(
                              left: Constants.blurContainerPadding * 3),
                          child: SizedBox.square(
                            dimension: (((Constants.svgIconSize / 2) *
                                        Constants.goldenRatio) *
                                    3) *
                                Constants.goldenRatio,
                            child: widget.svgNetworkIcon,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: Constants.blurContainerPadding * 2,
                              right: Constants.blurContainerPadding * 3),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                Uri.parse(widget.previewUrl).host,
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
