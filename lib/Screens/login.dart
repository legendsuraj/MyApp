import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
          child: Text("Login",
            style: TextStyle(
            fontSize: 20,
            color: Colors.greenAccent,
              fontWeight: FontWeight.bold,
          ),
          )
      ),
      
    );
  }
}
