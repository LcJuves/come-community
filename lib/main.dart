import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:protobuffers/items.pb.dart';

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
          textSelectionTheme: const TextSelectionThemeData(
              cursorColor: Colors.white, selectionColor: Color(0xFFB4D7FF))),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @protected
  Future<List<Item>> fetchItems(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return Items.fromBuffer(response.bodyBytes).itemList;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load items');
    }
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
    futureItems = widget.fetchItems('https://docs.lcjuves.com/items.pb');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242424),
      body: FutureBuilder<List<Item>>(
        future: futureItems,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          if (snapshot.hasData) {
            final fetchedItems = snapshot.data!;
            _loadedItems ??= fetchedItems;
            fetchedItems.sort((a, b) =>
                a.title.toLowerCase().compareTo(b.title.toLowerCase()));
            return SingleChildScrollView(
                padding: const EdgeInsets.all(edgePadding),
                child: Column(
                  children: [
                    SearchBar(
                      shadowColor:
                          const WidgetStatePropertyAll(Colors.transparent),
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.white.withOpacity(0.8)),
                      hintText: "Please enter some information for search",
                      hintStyle: WidgetStatePropertyAll(
                          TextStyle(color: Colors.black.withOpacity(0.4))),
                      textStyle: const WidgetStatePropertyAll(TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500)),
                      onChanged: (value) async {
                        final filteredItems = _loadedItems!.where((item) =>
                            item.title.contains(value) ||
                            item.url.contains(value));
                        setState(() {
                          futureItems = Future.value(List.of(filteredItems));
                        });
                      },
                    ),
                    const SizedBox(
                      height: edgePadding,
                    ),
                    Center(
                        child: Wrap(
                      spacing: edgePadding + (edgePadding * 0.618),
                      runSpacing: edgePadding,
                      direction: Axis.horizontal,
                      children: fetchedItems
                          .map((i) => BaseContainer(
                                item: i,
                                onTap: () async {
                                  await launchUrl(Uri.parse(i.url),
                                      mode: LaunchMode.inAppWebView);
                                },
                              ))
                          .toList(),
                    ))
                  ],
                ));
          }

          final screenWidth = MediaQuery.of(context).size.width;
          final screenHeight = MediaQuery.of(context).size.height;
          final circularProgressSize =
              screenWidth > screenHeight ? screenHeight : screenWidth;
          // By default, show a loading spinner.
          return Center(
              child: SizedBox(
            width: circularProgressSize,
            height: circularProgressSize,
            child: const Padding(
              padding: EdgeInsets.all(100),
              child: CircularProgressIndicator(
                strokeWidth: 10,
                color: Colors.white,
              ),
            ),
          ));
        },
      ),
    );
  }
}
