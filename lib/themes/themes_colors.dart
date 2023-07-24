import 'package:flutter/material.dart';

class MyThemes {
  static final lightMode = ThemeData.light().copyWith(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      shadowColor: Colors.transparent,
    ),
    colorScheme: const ColorScheme.dark(
      background: Colors.white,
      primary: Color(0xFFf7f7f7),
      secondary: Color(0xFF606060),
      tertiary: Color(0xFFe6e6e6),
    ),
  );

  static final darkMode = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[900]!,
      elevation: 0,
      shadowColor: Colors.transparent,
    ),
    colorScheme: ColorScheme.dark(
      background: Colors.grey[900]!,
      primary: const Color(0xFF1a1a1a),
      secondary: Colors.grey[600]!,
      tertiary: const Color(0xFF2b2b2b),
    ),
  );
}