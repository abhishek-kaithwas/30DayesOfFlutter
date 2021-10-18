import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        // ignore: prefer_const_constructors
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                  const TextStyle(fontWeight: FontWeight.w800)),
              backgroundColor: MaterialStateProperty.all(Colors.grey.shade700),
              foregroundColor: MaterialStateProperty.all(Colors.white)),
        ),

        // canvasColor: creamColor,
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          // ignore: prefer_const_constructors
          iconTheme: IconThemeData(color: Colors.black),
          // ignore: deprecated_member_use
          textTheme: Theme.of(context).textTheme,
        ),
      );

  // ignore: non_constant_identifier_names
  static ThemeData DarkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                  const TextStyle(fontWeight: FontWeight.w800)),
              backgroundColor: MaterialStateProperty.all(Colors.grey.shade700),
              foregroundColor: MaterialStateProperty.all(Colors.white)),
        ),
        // ignore: prefer_const_constructors
        colorScheme: ColorScheme(
          primary: Colors.white,
          primaryVariant: Colors.grey.shade100,
          secondary: Colors.white,
          secondaryVariant: Colors.white,
          surface: Colors.white,
          background: Colors.white,
          error: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.white,
          brightness: Brightness.dark,
        ),
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          // ignore: prefer_const_constructors
          iconTheme: IconThemeData(color: Colors.white),
          // ignore: deprecated_member_use
          textTheme: Theme.of(context).textTheme,
        ),
      );

  // custom colors
  // ignore: use_full_hex_values_for_flutter_colors
  static Color creamColor = const Color(0xfff5f5f5f);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
