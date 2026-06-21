import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffold,

    appBarTheme: const AppBarTheme(
      elevation: 0,

      backgroundColor: AppColors.scaffold,

      centerTitle: true,

      foregroundColor: AppColors.black,
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,

      fillColor: AppColors.white,

      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),

        borderSide: const BorderSide(color: AppColors.border),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),

        borderSide: const BorderSide(color: AppColors.border),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),

        borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
      ),
    ),
  );
}
