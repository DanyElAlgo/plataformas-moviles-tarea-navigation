import 'package:flutter/material.dart';

class AppColors {
  static const Color purple = Color(0xFF6B6BAE);
  static const Color background = Color(0xFFECECF4);
}

ThemeData buildAppTheme() {
  return ThemeData(
    primaryColor: AppColors.purple,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black87,
      elevation: 1,
      centerTitle: false,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.purple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    ),
    textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 14)),
    fontFamily: 'Test',
  );
}
