import 'package:flutter/material.dart';
import 'package:my_app/Widgets/drawer.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shops"),
      ),
        body: Center(
          child: Container(
              child: Text("Welcome to Flutter")
          ),
        ),
      drawer: Mydrawer(),
      );

  }
}
