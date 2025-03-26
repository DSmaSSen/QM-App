import 'package:flutter/material.dart';

const seedColor = Colors.blueGrey;

ThemeData buildTheme(Brightness brightness) {
  final ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: brightness,
  );

  final TextTheme textTheme;
  if (brightness == Brightness.light) {
    textTheme = Typography.blackMountainView;
  } else {
    textTheme = Typography.whiteMountainView;
  }

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

final ThemeData lightTheme = buildTheme(Brightness.light);
final ThemeData darkTheme = buildTheme(Brightness.dark);
