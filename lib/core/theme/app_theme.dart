import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.amber,
      surface: Colors.white,
      background: Colors.white,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.white,
      brightness: Brightness.light,
    ),
    cardTheme: CardTheme(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: Colors.grey[200],
      labelStyle: TextStyle(color: Colors.black87),
      secondaryLabelStyle: TextStyle(color: Colors.black87),
      selectedColor: Colors.blue.withAlpha(100),
      disabledColor: Colors.grey[400],
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide.none,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(color: Colors.grey[400]!),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(color: Colors.grey[400]!),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(color: Colors.blue, width: 2.0),
      ),
      filled: true,
      fillColor: Colors.grey[100],
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 10.0,
      ),
    ),
    textTheme: const TextTheme(),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.teal,
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[850],
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    colorScheme: ColorScheme.dark(
      primary: Colors.teal,
      secondary: Colors.orange,
      surface: Colors.grey[800]!,
      background: Colors.grey[900]!,
      error: Colors.redAccent,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
      onBackground: Colors.white,
      onError: Colors.black,
      brightness: Brightness.dark,
    ),
    cardTheme: CardTheme(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.grey[800],
    ),
    chipTheme: ChipThemeData(
      backgroundColor: Colors.grey[700],
      labelStyle: TextStyle(color: Colors.white70),
      secondaryLabelStyle: TextStyle(color: Colors.white70),
      selectedColor: Colors.teal.withAlpha(100),
      disabledColor: Colors.grey[600],
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide.none,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(color: Colors.grey[700]!),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(color: Colors.grey[700]!),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(color: Colors.teal, width: 2.0),
      ),
      filled: true,
      fillColor: Colors.grey[850],
      hintStyle: TextStyle(color: Colors.grey[500]),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 10.0,
      ),
    ),
    textTheme: const TextTheme(),
  );
}
