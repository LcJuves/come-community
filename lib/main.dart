import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:protobuffers/items.pb.dart';

import 'animated_wallpaper_container.dart';
import 'base_container.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white,
          useMaterial3: true,
          fontFamily: 'Menlo',
          textSelectionTheme: TextSelectionThemeData(
              cursorColor: Colors.black.withAlpha(180),
              selectionColor: const Color(0xFFB4D7FF))),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @protected
  Future<List<Item>> fetchItemsFromUrl() async {
    final response =
        await http.get(Uri.parse("https://docs.lcjuves.com/items.pb"));
    if (response.statusCode == 200) {
      return Items.fromBuffer(response.bodyBytes).itemList;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load items');
    }
  }

  @protected
  Future<List<Item>> fetchItemsFromBundle() async {
    final buffer = await rootBundle.load('items.pb');
    return Items.fromBuffer(Uint8List.sublistView(buffer)).itemList;
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Item>> futureItems;
  List<Item>? _loadedItems;

  @override
  void initState() {
    super.initState();
    futureItems =
        kDebugMode ? widget.fetchItemsFromBundle() : widget.fetchItemsFromUrl();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedWallpaperContainer(),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6.3, sigmaY: 6.3),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: FutureBuilder<List<Item>>(
              future: futureItems,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                if (snapshot.hasData) {
                  final fetchedItems = snapshot.data!;
                  _loadedItems ??= fetchedItems;
                  return SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.all(Constants.edgePadding),
                      child: Column(
                        children: [
                          SearchBar(
                            autoFocus: true,
                            surfaceTintColor:
                                const WidgetStatePropertyAll(Colors.black),
                            leading: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  10, 10, 10 * 0.618, 10),
                              child: Icon(
                                Icons.search_rounded,
                                color: Colors.black.withAlpha(102),
                              ),
                            ),
                            overlayColor:
                                const WidgetStatePropertyAll(Colors.white),
                            textInputAction: TextInputAction.search,
                            shadowColor: const WidgetStatePropertyAll(
                                Colors.transparent),
                            backgroundColor: WidgetStatePropertyAll(
                                Colors.white.withAlpha(204)),
                            hintText: Constants.searchBarHintText,
                            hintStyle: WidgetStatePropertyAll(
                                TextStyle(color: Colors.black.withAlpha(102))),
                            textStyle: const WidgetStatePropertyAll(TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                            onChanged: (value) async {
                              final filteredItems = _loadedItems!.where(
                                  (item) =>
                                      item.title.contains(value) ||
                                      item.url.contains(value));
                              setState(() {
                                futureItems =
                                    Future.value(List.of(filteredItems));
                              });
                            },
                          ),
                          const SizedBox(
                            height: Constants.edgePadding,
                          ),
                          Center(
                              child: Wrap(
                            spacing: Constants.edgePadding +
                                (Constants.edgePadding * 0.618),
                            runSpacing: Constants.edgePadding,
                            direction: Axis.horizontal,
                            children: fetchedItems
                                .map((i) => BaseContainer(item: i))
                                .toList(),
                          ))
                        ],
                      ));
                }

                final screenWidth = MediaQuery.of(context).size.width;
                final screenHeight = MediaQuery.of(context).size.height;
                final circularProgressSize =
                    screenWidth > screenHeight ? screenHeight : screenWidth;
                final circularProgressEdgePadding =
                    circularProgressSize - (circularProgressSize * 0.618);
                // By default, show a loading spinner.
                return Center(
                    child: SizedBox(
                  width: circularProgressSize,
                  height: circularProgressSize,
                  child: Padding(
                    padding: EdgeInsets.all(circularProgressEdgePadding),
                    child: const CircularProgressIndicator(
                      strokeWidth: 9,
                      color: Colors.white,
                    ),
                  ),
                ));
              },
            ),
          ),
        )
      ],
    );
  }
}
