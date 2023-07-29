import 'package:flutter/material.dart';

class MyThemes {
  static final lightMode = ThemeData.light().copyWith(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF39b54a),
      elevation: 0,
      shadowColor: Colors.transparent,
    ),
    colorScheme: const ColorScheme.dark(
      background: Colors.white,
      primary: Color(0xFFf7f7f7),
      secondary: Color(0xFFf5f6fb),
      tertiary: Color(0xFFcdd2db),
    ),
  );

  static final darkMode = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF39b54a),
      elevation: 0,
      shadowColor: Colors.transparent,
    ),
    colorScheme: ColorScheme.dark(
      background: Colors.grey[900]!,
      primary: const Color(0xFF1a1a1a),
      secondary: Colors.grey[850]!,
      tertiary: const Color(0xFFcdd2db),
    ),
  );
}