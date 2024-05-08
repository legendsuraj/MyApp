import 'package:flutter/material.dart';
import 'package:my_app/Screens/Home_Page.dart';
import 'package:my_app/Screens/login.dart';
import 'package:my_app/Utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    //  home: Homepage(),
      initialRoute: MyRoutes.homeRoute,
      routes: {
      "/" : (context) => Loginpage(),
        MyRoutes.loginRoute :(context) => Loginpage(),
        MyRoutes.homeRoute :(context) => Homepage(),
},
    );
  }
}