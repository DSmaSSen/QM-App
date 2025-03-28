import 'package:flutter/material.dart';

class ThemeBuilder {
  // fields
  final Color seedColor;

  // constructor
  ThemeBuilder({required this.seedColor});

  // methods
  ThemeData build(Brightness brightness) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: brightness,
    );

    final textTheme = brightness == Brightness.dark
        ? Typography.whiteMountainView
        : Typography.blackMountainView;

    return ThemeData(
      colorScheme: colorScheme,
      useMaterial3: true,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        centerTitle: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
        ),
      ),
    );
  }
}
