import 'package:devfans/constants.dart';
import 'package:devfans/http_requests.dart';
import 'package:devfans/model/future_data.dart';
import 'package:devfans/widget/adaptive_circular_progress_bar.dart';
import 'package:devfans/widget/animated_wallpaper_container.dart';
import 'package:devfans/widget/backdrop_filter_scaffold.dart';
import 'package:devfans/widget/base_container.dart';
import 'package:devfans/widget/clip_rrect_backdrop_filter.dart';
import 'package:devfans/widget/clip_rrect_backdrop_filter_search_bar.dart';
import 'package:devfans/widget/snapshot_error_text.dart';
import 'package:devfans/widget/visibility_temp_tip.dart';
import 'package:flutter/material.dart';
import 'package:protobuffers/items.pb.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<FutureData> futureData;
  List<Item>? _loadedItemList;

  @override
  void initState() {
    super.initState();
    futureData = fetchData(context);
  }

  @override
  Widget build(BuildContext context) {
    const singleChildScrollViewSpacing = ((Constants.edgePadding +
                Constants.balancePadding +
                Constants.balanceBackPadding +
                Constants.baseContainerPadding) *
            Constants.goldenRatio) +
        (Constants.titleLeftPadding * Constants.goldenRatio);
    return Stack(
      children: [
        Constants.enableWallpaper
            ? AnimatedWallpaperContainer()
            : OverflowBox(
                child: Container(
                  color: Colors.white,
                ),
              ),
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
                final fetchedGeoInfo = fetchedData.fetchedGeoInfo;
                final fetchedItems = fetchedData.fetchedItems;
                final filteredFetchedItemList =
                    List.of(fetchedItems.itemList.where((item) {
                  if (!item.hasEnUrl() &&
                      item.hasZhUrl() &&
                      fetchedGeoInfo['country_code'] != "CN") {
                    // Let people who know English gradually understand Chinese culture
                    return fetchedGeoInfo['country_code'] == "EN";
                  }
                  return !(!item.hasEnUrl() && !item.hasZhUrl());
                }));

                _loadedItemList ??= filteredFetchedItemList;
                return Stack(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.only(
                          top: singleChildScrollViewSpacing,
                          bottom: singleChildScrollViewSpacing),
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).padding.top,
                            bottom: ((singleChildScrollViewSpacing * 3) *
                                    Constants.goldenRatio) +
                                (Constants.edgePadding *
                                    Constants.goldenRatio)),
                        child: Wrap(
                          spacing: singleChildScrollViewSpacing,
                          runSpacing: singleChildScrollViewSpacing,
                          direction: Axis.horizontal,
                          children: filteredFetchedItemList
                              .map(
                                (i) => BaseContainer(
                                  key: ValueKey("${i.enUrl}#${i.imgUrl}"),
                                  item: i,
                                  geoInfo: fetchedData.fetchedGeoInfo,
                                  singleChildScrollViewSpacing:
                                      singleChildScrollViewSpacing,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipRRrectBackdropFilterSearchBar(
                        geoInfo: fetchedData.fetchedGeoInfo,
                        singleChildScrollViewSpacing:
                            singleChildScrollViewSpacing,
                        onChanged: (value) async {
                          final filteredItemListIterable = _loadedItemList!
                              .where((item) =>
                                  item.title
                                      .toLowerCase()
                                      .contains(value.toLowerCase()) ||
                                  (item.hasZhTitle() &&
                                      item.zhTitle
                                          .toLowerCase()
                                          .contains(value.toLowerCase())) ||
                                  item.enUrl.contains(value) ||
                                  item.zhUrl.contains(value));
                          setState(() {
                            futureData = Future.value(FutureData(
                                items: Items(
                                  itemList: filteredItemListIterable.toList(),
                                ),
                                geoInfo: fetchedData.fetchedGeoInfo));
                          });
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: ClipRRrectBackdropFilter(
                        elevation: 0,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).padding.top,
                        child: OverflowBox(
                          child: Container(
                            color: Colors.black.withAlpha(20),
                          ),
                        ),
                      ),
                    ),
                    VisibilityTempTip(
                      items: fetchedItems,
                      fetchedGeoInfo: fetchedGeoInfo,
                      singleChildScrollViewSpacing:
                          singleChildScrollViewSpacing,
                    ),
                  ],
                );
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
