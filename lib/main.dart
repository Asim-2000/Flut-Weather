import 'package:catalog_app/screens/home-screen.dart';
import 'package:flutter/material.dart';
import 'package:catalog_app/screens/login-screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: Login.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        Login.routeName: (context) => Login()
      },
    );
  }
}
