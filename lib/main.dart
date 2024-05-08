import 'package:flutter/material.dart';
import 'package:my_app/Screens/Home_Page.dart';
import 'package:my_app/Screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    //  home: Homepage(),
      routes: {
      "/" : (context) => Loginpage()
},
    );
  }
}