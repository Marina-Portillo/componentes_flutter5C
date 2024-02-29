import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  static const mainColor = Color.fromARGB(255, 19, 170, 216);
  static const backColor = Color.fromARGB(255, 222, 231, 244);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: AppBarTheme(
      color: mainColor,
      titleTextStyle: GoogleFonts.alice(
        color: backColor,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
      ),
      iconTheme: const IconThemeData(
      color: mainColor,
      size: 35.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          mainColor,
          ),
          foregroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 233, 232, 232),
          ),
          textStyle: MaterialStateProperty.all(
            GoogleFonts.pacifico(fontSize: 20),
        ),
      )
    ),
    textTheme: TextTheme(
          headlineLarge: GoogleFonts.abel(
            color: const Color.fromARGB(221, 12, 11, 11),
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
            decorationColor: mainColor,
            decorationStyle: TextDecorationStyle.double,
            decorationThickness: 1.5,
            fontStyle: FontStyle.italic,
          ), 
          headlineMedium: GoogleFonts.abel(
            color: const Color.fromARGB(221, 12, 11, 11),
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
            decorationStyle: TextDecorationStyle.double,
            decorationThickness: 1.5,
          ), 
          bodySmall: GoogleFonts.dancingScript(
            color: const Color.fromARGB(255, 40, 4, 107),
            fontSize: 20,
            ),
            bodyMedium: GoogleFonts.dancingScript(
            color: Color.fromARGB(255, 8, 8, 8),
            fontSize: 20,
            ),
          ),
  );
}