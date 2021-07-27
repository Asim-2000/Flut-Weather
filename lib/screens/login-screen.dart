// import 'package:catalog_app/routes/routes.dart';
import 'package:catalog_app/screens/home-screen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static final String routeName = "/login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String Name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Hello World $Name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 16.0),
                child: Column(children: [
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        Name = value;
                      }); // setState calls build method again i.e it re renders UI
                    },
                    decoration: InputDecoration(
                        hintText: "Enter UserName", labelText: "UserName"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(height: 40.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                  )
                ]),
              )
            ],
          ),
        ));
  }
}
