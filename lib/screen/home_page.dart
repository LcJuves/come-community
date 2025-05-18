import 'package:devfans/constants.dart';
import 'package:devfans/future_data.dart';
import 'package:devfans/widget/adaptive_circular_progress_bar.dart';
import 'package:devfans/widget/animated_wallpaper_container.dart';
import 'package:devfans/widget/backdrop_filter_scaffold.dart';
import 'package:devfans/widget/base_container.dart';
import 'package:devfans/widget/clip_rrect_backdrop_filter_search_bar.dart';
import 'package:devfans/widget/snapshot_error_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:protobuffers/items.pb.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  Future<List<Item>> _fetchItemsFromUrl() async {
    final response =
        await http.get(Uri.parse("https://devfans.lcjuves.com/items.pb"));
    if (response.statusCode == Constants.httpOk) {
      return Items.fromBuffer(response.bodyBytes).itemList;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load items');
    }
  }

  Future<List<Item>> _fetchItemsFromBundle() async {
    final buffer = await rootBundle.load('items.pb');
    return Items.fromBuffer(Uint8List.sublistView(buffer)).itemList;
  }

  Future<List<Item>> _initFutureItems() async {
    return kDebugMode ? _fetchItemsFromBundle() : _fetchItemsFromUrl();
  }

  Future<FutureData> _initFutureData() async {
    final futureItems = await _initFutureItems();
    final futureGeoInfo = await getGeoInfo();
    final captivePortalSvg =
        await rootBundle.loadString("res/svg/captive-portal.svg");
    final futureData = FutureData(
        items: futureItems,
        geoInfo: futureGeoInfo,
        captivePortalSvg: captivePortalSvg);
    return Future.value(futureData);
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<FutureData> futureData;
  List<Item>? _loadedItems;

  @override
  void initState() {
    super.initState();
    futureData = /* kIsWeb ? */
        widget._initFutureData() /* : Isolate.run(widget._initFutureData) */;
  }

  @override
  Widget build(BuildContext context) {
    const singleChildScrollViewSpacing =
        ((Constants.edgePadding + Constants.baseContainerPadding) *
                Constants.goldenRatio) +
            (Constants.titleLeftPadding * Constants.goldenRatio);
    return Stack(
      children: [
        AnimatedWallpaperContainer(),
        BackdropFilterScaffold(
          backgroundColor: Colors.transparent,
          body: FutureBuilder<FutureData>(
            future: futureData,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return SnapshotErrorText(
                  asyncSnapshot: snapshot,
                );
              }
              if (snapshot.hasData) {
                final fetchedData = snapshot.data!;
                final filteredFetchedItems =
                    List.of(fetchedData.fetchedItems.where((item) {
                  if (item.currentlyOnlySupportsChinese &&
                      fetchedData.fetchedGeoInfo['country_code'] != "CN") {
                    // Let people who know English gradually understand Chinese culture
                    return fetchedData.fetchedGeoInfo['country_code'] == "EN";
                  }
                  return true;
                }));
                _loadedItems ??= filteredFetchedItems;
                return SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    padding: const EdgeInsets.fromLTRB(
                        Constants.edgePadding,
                        singleChildScrollViewSpacing,
                        Constants.edgePadding,
                        singleChildScrollViewSpacing),
                    child: Column(
                      children: [
                        ClipRRrectBackdropFilterSearchBar(
                          singleChildScrollViewSpacing:
                              singleChildScrollViewSpacing,
                          onChanged: (value) async {
                            final filteredItemsIterable = _loadedItems!.where(
                                (item) =>
                                    item.title
                                        .toLowerCase()
                                        .contains(value.toLowerCase()) ||
                                    item.enurl.contains(value) ||
                                    item.cnurl.contains(value));
                            setState(() {
                              futureData = Future.value(FutureData(
                                  items: List.of(filteredItemsIterable),
                                  geoInfo: fetchedData.fetchedGeoInfo,
                                  captivePortalSvg:
                                      fetchedData.captivePortalSvg));
                            });
                          },
                        ),
                        const SizedBox(
                          height: singleChildScrollViewSpacing,
                        ),
                        Center(
                            child: Wrap(
                          spacing: singleChildScrollViewSpacing,
                          runSpacing: singleChildScrollViewSpacing,
                          direction: Axis.horizontal,
                          children: filteredFetchedItems
                              .map(
                                (i) => BaseContainer(
                                  item: i,
                                  geoInfo: fetchedData.fetchedGeoInfo,
                                  captivePortalSvg:
                                      fetchedData.captivePortalSvg,
                                ),
                              )
                              .toList(),
                        ))
                      ],
                    ));
              }

              // By default, show a loading circular progress bar.
              return const AdaptiveCircularProgressBar();
            },
          ),
        )
      ],
    );
  }
}
