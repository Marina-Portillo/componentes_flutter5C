import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  static const mainColor = Color.fromARGB(255, 19, 170, 216);
  static const backColor = Color.fromARGB(255, 222, 231, 244);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: mainColor),
    textTheme: TextTheme(
          headlineLarge: GoogleFonts.dancingScript(
            color: mainColor,
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
            decorationColor: mainColor,
            decorationStyle: TextDecorationStyle.wavy,
            decorationThickness: 3.0,
            fontStyle: FontStyle.italic,
          ), 
        ),
  );
}