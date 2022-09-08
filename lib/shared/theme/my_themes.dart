import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primarySwatch: Colors.orange,
    // inputDecorationTheme: InputDecorationTheme(
    //     focusColor: Colors.green, hoverColor: Colors.green),
    colorScheme: const ColorScheme.dark(
        primary: Colors.orange,
        onBackground: Colors.green,
        surface: Colors.orange,
        onSurface: Colors.black),
  );
  static final lightTheme = ThemeData(primarySwatch: Colors.red);
}
