import 'package:docs/item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import 'dart:convert';

import 'base_container.dart';

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
    final List<Item> items = [];

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final data = jsonDecode(response.body)['data'];
      for (var item in data) {
        items.add(Item.fromJson(item));
      }
      return items;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to fetch items');
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
    futureItems = widget.fetchItems('https://docs.lcjuves.com/items.json');
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
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SearchBar(
                      shadowColor:
                          const MaterialStatePropertyAll(Colors.transparent),
                      backgroundColor: MaterialStatePropertyAll(
                          Colors.white.withOpacity(0.8)),
                      hintText: "Please enter some information for search",
                      hintStyle: MaterialStatePropertyAll(
                          TextStyle(color: Colors.black.withOpacity(0.4))),
                      textStyle: const MaterialStatePropertyAll(TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500)),
                      onChanged: (value) async {
                        if (value.isEmpty) {
                          setState(() {
                            futureItems = Future.value(_loadedItems);
                          });
                          return;
                        }

                        final List<Item> list = [];
                        for (final item in fetchedItems) {
                          if (item.title.contains(value) ||
                              item.url.contains(value)) {
                            list.add(item);
                          }
                        }
                        setState(() {
                          futureItems = Future.value(list);
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Wrap(
                      spacing: 50,
                      runSpacing: 40,
                      direction: Axis.horizontal,
                      // clipBehavior: Clip.antiAliasWithSaveLayer,
                      // verticalDirection: VerticalDirection.up,
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
            ),
          );
        },
      ),
    );
  }
}
