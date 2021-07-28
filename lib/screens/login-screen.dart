// import 'package:catalog_app/routes/routes.dart';
import 'package:catalog_app/screens/home-screen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static final String routeName = "/login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  "Hello World $name",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 16.0),
                  child: Column(children: [
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return ("Username can't be empty");
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        }); // setState calls build method again i.e it re renders UI
                      },
                      decoration: InputDecoration(
                          hintText: "Enter UserName", labelText: "UserName"),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return ("Password can't be empty");
                        }
                        if (value.length < 6) {
                          return ("Password Length should be atleast 6");
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    SizedBox(height: 40.0),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Navigator.pushNamed(context, HomeScreen.routeName);
                        }
                      },
                      child: Text("Login"),
                      style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                    )
                  ]),
                )
              ],
            ),
          ),
        ));
  }
}
