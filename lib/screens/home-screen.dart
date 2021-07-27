import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = "/";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
