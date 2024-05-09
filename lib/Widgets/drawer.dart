import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
                accountName:Text(" Suraj Sahu"),
                accountEmail: Text("Suraj@gmail.com"),
              currentAccountPicture: CircleAvatar(),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                color:Colors.white,
              ),
              ),

            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color:Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                color: Colors.white,
              ),
              title: Text("Messages",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color:Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
