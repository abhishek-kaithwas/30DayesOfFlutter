import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // this is constructor

  @override // this is method
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeClass(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          // ignore: deprecated_member_use
          // textTheme: Theme.of(context). ,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/": (context) => LoginPage(),
        // ignore: prefer_const_constructors
        MyRoutes.homeRoutes: (context) => HomePage(),
        MyRoutes.loginRoutes: (context) => LoginPage(),
      },
    );
  }
}
