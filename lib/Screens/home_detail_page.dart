import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Widgets/theme.dart';
import 'package:my_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

    class HomeDetailPage extends StatelessWidget {
      final Item catalog;
      const HomeDetailPage({super.key , required this.catalog } );

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: MyTheme.creamColor,
          body: SafeArea(
            child: Column(
              children: [
                Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image)),
              ],
            ).p16(),
          ),
        );
      }
    }
