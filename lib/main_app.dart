import 'package:flutter/material.dart';
import 'package:practica3/home_screen.dart';



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 60, 183, 240),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(235, 25, 48, 247),),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color.fromARGB(255, 5, 7, 4),
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif',
          )
        ),
      ),
    );
  }
}