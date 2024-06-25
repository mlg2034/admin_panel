import 'package:flutter/material.dart';

class CustomColorSheme {
 
  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color.fromARGB(255, 48, 48, 72),
    onPrimary: Colors.white,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Color(0xFF322942),
    error: Colors.redAccent,
    onError: Colors.white,
    surface:  Color.fromARGB(255, 220, 219, 219),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
    onPrimaryContainer: Color.fromARGB(255, 56, 119, 228) , 
    );
  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFFFF8383),
    secondary: Color(0xFF4D1F7C),
    surface: Color(0xFF1F1929),
    error: Colors.redAccent,
    onError: Colors.white,
    onPrimary: Colors.black,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    brightness: Brightness.dark,
  );
}