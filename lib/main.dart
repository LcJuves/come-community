import 'package:docs/item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import 'dart:convert';

import 'base_container.dart';

extension HexColor on Color {
  /// String is in the format"aabbcc" or"ffaabbcc" with an optional leading"#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Menlo'),
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @protected
  Future<List<Item>> fetchItems() async {
    final response =
        await http.get(Uri.parse('https://docs.lcjuves.com/items.json'));
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
      throw Exception('Failed to load album');
    }
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Item>> futureItems;

  @override
  void initState() {
    super.initState();
    futureItems = widget.fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Item>>(
      future: futureItems,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          snapshot.data!.sort((a, b) => a.title.compareTo(b.title));
          return Scaffold(
            backgroundColor: HexColor.fromHex("#242424"),
            body: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Center(
                    child: Wrap(
                  spacing: 50,
                  runSpacing: 40,
                  direction: Axis.horizontal,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  // verticalDirection: VerticalDirection.up,
                  children: snapshot.data!
                      .map((i) => BaseContainer(
                            item: i,
                            onTap: () async {
                              await launchUrl(Uri.parse(i.url));
                            },
                          ))
                      .toList(),
                ))),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        // By default, show a loading spinner.
        return const Center(
            child: SizedBox(
          width: 300,
          height: 300,
          child: CircularProgressIndicator(
            strokeWidth: 10,
          ),
        ));
      },
    );
  }
}
