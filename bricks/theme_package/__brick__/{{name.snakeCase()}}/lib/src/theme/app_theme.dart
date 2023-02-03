import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const _colors = Colors.{{color}};

  static ThemeData getThemeData(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;

    switch (brightness) {
      case Brightness.light:
        return themeDataLight();
      case Brightness.dark:
        return themeDataDark();
      default:
        return themeDataLight();
    }
  }

  static ThemeData themeDataLight({
    Color? seedColor,
  }) {
    final theme = ThemeData.light();
    final colorScheme =
        ColorScheme.fromSeed(seedColor: seedColor ?? _colors);

    return theme.copyWith(
      colorScheme: colorScheme,
      useMaterial3: true,
    );
  }

  static ThemeData themeDataDark({Color? seedColor}) {
    final theme = ThemeData.dark();
    final colorScheme =
        ColorScheme.fromSeed(seedColor: seedColor ?? _colors);

    return theme.copyWith(
      colorScheme: colorScheme,
      useMaterial3: true,
    );
  }
}
