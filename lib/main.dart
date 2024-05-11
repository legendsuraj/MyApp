import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/Screens/Home_Page.dart';
import 'package:my_app/Screens/login.dart';
import 'package:my_app/Utils/routes.dart';
import 'package:my_app/Widgets/theme.dart';

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
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
      "/" : (context) => Loginpage(),
        MyRoutes.loginRoute :(context) => Loginpage(),
        MyRoutes.homeRoute :(context) => HomePage(),
},
    );
  }
}