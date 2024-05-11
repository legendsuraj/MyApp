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
    await Future.delayed(Duration(seconds: 1));
    final productjson =
    await rootBundle.loadString("assets/files/product.json");
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
          child: (CatalogModel.items!= null && CatalogModel.items.isNotEmpty)
              ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
          ),
            itemBuilder:(Context, index){
                final item =CatalogModel.items[index];
                return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: GridTile(
                    header: Container(
                        child: Text(item.name,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    ),
                    child: Image.network(item.image),
                    footer: Container(
                      child: Text(item.price.toString(),
                      style: TextStyle(
                          color: Colors.white,
                      ),
                      ),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                  ),
                );
            },
          )
             : Center(

                child: CircularProgressIndicator(),
              )

        ),
      drawer: Mydrawer(),
      );

  }
}
