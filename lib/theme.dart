// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';

class MyThemes {
  static final primary = Colors.blue;
  static final primaryColor = Colors.blue.shade300;

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: primaryColor,
    dividerColor: Colors.white,
    colorScheme: ColorScheme.dark(
      primary: primary,
      // onPrimary: Colors.black,
      // surface: primaryColor,
      // onSurface: Colors.black,
    ),
  );
  static final ligthTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: primaryColor,
    dividerColor: Colors.black,
    colorScheme: ColorScheme.light(
      primary: primary,
      // onPrimary: Colors.white,
      // surface: primaryColor,
      // onSurface: Colors.white,
    ),
  );
}
