import 'package:catalog_app/screens/home-screen.dart';
import 'package:catalog_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:catalog_app/screens/login-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        Login.routeName: (context) => Login()
      },
    );
  }
}
