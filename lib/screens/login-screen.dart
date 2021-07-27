import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static final String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset('assets/images/login.png', fit: BoxFit.cover),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Hello World",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter UserName", labelText: "UserName"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Hello World");
                  },
                  child: Text("Login"),
                  style: TextButton.styleFrom(),
                )
              ]),
            )
          ],
        ));
  }
}
