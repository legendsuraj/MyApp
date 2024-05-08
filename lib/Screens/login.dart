import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/Utils/routes.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";

  final _formkey= GlobalKey<FormState>();

  moveToHome(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Image.asset("assets/images/login_image.jpg",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Welcome $name",
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
                      validator: (value){
                        if (value!.isEmpty){
                          return("Pleae enter Username");
                        }
                        return null;
                      },
                      onChanged: (value){
                        setState(() {
                          name = value;
                        });
                      },
                    ),
          
          
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value){
                        if (value!.isEmpty){
                          return("Please enter Password");
                        }
                       else if (value.length<8){
                          return("Enter atleast 8 characters ");
                        }
                        return null;
                      },
                    ),
          
                    SizedBox(
                      height: 20,
                    ),
          
                    ElevatedButton(
                      onPressed: (){
                        moveToHome(context);
                      },
                      child: Text("log in"),
                      style: TextButton.styleFrom(minimumSize: Size(150,40)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
