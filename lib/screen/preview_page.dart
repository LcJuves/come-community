import 'package:devfans/constants.dart';
import 'package:devfans/widget/svg_network_icon.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class PreviewPage extends StatefulWidget {
  final String previewUrl;
  final String title;
  final SvgNetworkIcon svgNetworkIcon;
  const PreviewPage(
      {super.key,
      required this.title,
      required this.svgNetworkIcon,
      required this.previewUrl});

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
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
      /* appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () async => await Navigator.maybePop(context),
            icon: const Icon(Icons.arrow_back_rounded)),
        systemOverlayStyle: Constants.defaultSystemUiOverlayStyle.copyWith(
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(Constants.goldenRatio * 10),
              child: SizedBox.square(
                dimension: Constants.svgIconSize * Constants.goldenRatio,
                child: widget.svgNetworkIcon,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: Constants.goldenRatio * 10),
              child: Text(
                widget.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            )
          ],
        ),
        actions: const <Widget>[
          /* IconButton(
            icon: const Icon(Icons.navigate_before_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next_rounded),
            onPressed: () {},
          ), */
        ],
      ), */
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            bottom: MediaQuery.of(context).padding.bottom),
        child: InAppWebView(
            initialUrlRequest: URLRequest(
                url: WebUri(widget.previewUrl),
                assumesHTTP3Capable: true,
                headers: Map.of(<String, String>{
                  "Origin": Uri.parse(widget.previewUrl).origin
                }))),
      ),
    );
  }
}
