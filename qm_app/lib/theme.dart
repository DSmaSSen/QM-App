import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = Colors.orange;
  static Color primaryAccent = Colors.orangeAccent;
  // static Color secondaryColor = ;
  // static Color secondaryAccent = ;
  // static Color titleColor = ;
  // static Color textColor = ;
  // static Color successColor = ;
  // static Color highlightColor = ;
}

ThemeData primaryTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.primaryAccent,
    centerTitle: true,
  ),
);

// Inspiration: https://github.com/iamshaunjp/flutter-masterclass/blob/lesson-83/lib/theme.dart
