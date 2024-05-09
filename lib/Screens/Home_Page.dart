import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/Widgets/drawer.dart';
import 'package:my_app/Widgets/item_widget.dart';
import 'package:my_app/models/catalog.dart';
import 'dart:convert';
import 'package:flutter/services.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  void initState(){
    super.initState();
      loadData();
  }

loadData() async{
    final productjson =
    await rootBundle.loadString("assets/files.product.json");
    final decodedData = jsonDecode(productjson);
    var productsData= decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {
    });

}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blueAccent,
        title: Text("Products App"),
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: CatalogModel.items[index],
              );
          },
          ),
        ),
      drawer: Mydrawer(),
      );

  }
}
