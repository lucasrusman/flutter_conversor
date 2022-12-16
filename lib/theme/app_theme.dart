import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(184, 73, 73, 254);
  static const Color secondary = Color(0xFFFFFFFF);
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      //app bar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      //text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary),
      ),
      //floating action button theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
      ),
      // elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: primary,
              minimumSize: const Size(100, 40),
              elevation: 0)),
      // input theme
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
      ));
}
