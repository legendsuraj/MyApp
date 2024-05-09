import 'package:flutter/material.dart';
import 'package:my_app/Widgets/drawer.dart';
import 'package:my_app/Widgets/item_widget.dart';
import 'package:my_app/models/catalog.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummylist= List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.blueAccent,
        title: Text("Products App"),
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummylist.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummylist[index],
              );
          },
          ),
        ),
      drawer: Mydrawer(),
      );

  }
}
