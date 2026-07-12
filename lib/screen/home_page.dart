import 'package:come/constants.dart' show Constants;
import 'package:come/http_requests.dart' show fetchData;
import 'package:come/model/future_data.dart' show FutureData;
import 'package:come/widget/adaptive_circular_progress_bar.dart'
    show AdaptiveCircularProgressBar;
import 'package:come/widget/animated_wallpaper_container.dart'
    show AnimatedWallpaperContainer;
import 'package:come/widget/backdrop_filter_scaffold.dart'
    show BackdropFilterScaffold;
import 'package:come/widget/item_container.dart' show ItemContainer;
import 'package:come/widget/clipr_superellipse_backdrop_filter.dart'
    show ClipRSuperellipseBackdropFilter;
import 'package:come/widget/clipr_superellipse_backdrop_filter_search_bar.dart'
    show ClipRSuperellipseBackdropFilterSearchBar;
import 'package:come/widget/snapshot_error_text.dart' show SnapshotErrorText;
import 'package:come/widget/visibility_temp_tip.dart' show VisibilityTempTip;
import 'package:flutter/material.dart'
    show
        StatefulWidget,
        State,
        BuildContext,
        Widget,
        EdgeInsets,
        Colors,
        Container,
        OverflowBox,
        Axis,
        Alignment,
        MediaQuery,
        ValueKey,
        Wrap,
        SingleChildScrollView,
        Align,
        Stack,
        FutureBuilder;
import 'package:protobuffers/items.pb.dart' show Item;
import 'package:protobuffers/items.pbserver.dart' show Items;

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
                    fetchedItems.itemList.where((item) {
                  if (!item.hasEnUrl() &&
                      item.hasZhUrl() &&
                      !"${fetchedGeoInfo['country_code']}"
                          .toLowerCase()
                          .startsWith("cn")) {
                    item.clearZhTitle();
                    // Let people who know English gradually understand Chinese culture
                    return "${fetchedGeoInfo['country_code']}"
                        .toLowerCase()
                        .startsWith("en");
                  }
                  return item.hasEnUrl() || item.hasZhUrl();
                }).toList();

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
                                (i) => ItemContainer(
                                  key: ValueKey("${i.enUrl}#${i.imgUrl}"),
                                  totalItems: fetchedItems.itemList.length,
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
                      child: ClipRSuperellipseBackdropFilterSearchBar(
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
                      child: ClipRSuperellipseBackdropFilter(
                        elevation: 0,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).padding.top,
                        child: const OverflowBox(),
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
              return AdaptiveCircularProgressBar();
            },
          ),
        ),
      ],
    );
  }
}
