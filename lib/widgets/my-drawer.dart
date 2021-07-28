import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class MyDrawer extends StatelessWidget {
  final String imageUrl =
      "https://res.cloudinary.com/practicaldev/image/fetch/s--neiVwW5x--/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/450387/58c3bfa0-6289-4e9d-960c-615e5731570d.jpeg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    // decoration: BoxDecoration(color: Colors.red),
                    accountName: Text("Muhammad Asim"),
                    accountEmail: Text("m.asimkhaskheli@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ))),
            ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
                leading: Icon(
                  CupertinoIcons.mail_solid,
                  color: Colors.white,
                ),
                title: Text(
                  "Email",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
