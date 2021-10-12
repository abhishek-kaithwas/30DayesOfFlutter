import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/models/catlog.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Abhsihek kaithwas";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));

    var catlogJson = await rootBundle.loadString("assets/files/catlog.json");
    var jsonDecodedData = jsonDecode(catlogJson);
    var productsData = jsonDecodedData["products"];
    CatalogModel.items =
        List.from(productsData).map((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // ignore: unnecessary_null_comparison
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                // ignore: prefer_const_constructors
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                            padding: const EdgeInsets.all(12),
                            decoration:
                                const BoxDecoration(color: Colors.deepPurple),
                            child: Text(
                              item.name,
                              style: const TextStyle(color: Colors.white),
                            )),
                        child: Image.network(
                          item.image,
                          fit: BoxFit.cover,
                        ),
                        footer: Container(
                            padding: const EdgeInsets.all(12),
                            decoration:
                                const BoxDecoration(color: Colors.black),
                            child: Text(
                              item.price.toString(),
                              style: const TextStyle(color: Colors.white),
                            )),
                      ));
                },
                itemCount: CatalogModel.items.length)
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: const MyDrawer(),
    );
  }
}

// ListView.builder(
//   itemCount: CatalogModel.items.length,
//   itemBuilder: (context, index) {
//     return ItemWidget(item: CatalogModel.items[index]);
//   },
// )