import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Image.asset("assets/images/login_image.jpg",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Welcome",
          style: GoogleFonts.lato(
            textStyle: TextStyle(
            fontSize: 30,
          ),
          ),
          ),

          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),


                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                ElevatedButton(
                    onPressed: (){
                      print("Welcome User");
                    },
                    child: Text("logged in"),
                    ),
              ],
            ),
          ),


        ],
      )
    );
  }
}
