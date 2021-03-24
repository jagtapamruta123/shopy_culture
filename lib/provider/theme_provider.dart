import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(
      color: Colors.pink,
      opacity: 0.8,
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blue,
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(
      color: Colors.blue,
      opacity: 0.8,
    ),
  );
}
