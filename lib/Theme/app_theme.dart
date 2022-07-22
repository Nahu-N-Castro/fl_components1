import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.redAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: Colors.redAccent,
      elevation: 0,
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: Colors.redAccent,
      elevation: 0,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
    scaffoldBackgroundColor: Colors.black,
  );
  static const BouncingScrollPhysics bouncing = BouncingScrollPhysics(
    parent: AlwaysScrollableScrollPhysics(),
  );
}
