import 'package:flutter/material.dart';
import 'package:hero_software_test/app/core/styles/color_style.dart';

class ThemeStyle {
  ThemeStyle._();

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.grey[400]!),
  );
  static final _defaultFocusedInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: ColorsStyle.instance.blue),
  );

  static final theme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsStyle.instance.black,
      elevation: 0,
      iconTheme: IconThemeData(
        color: ColorsStyle.instance.secondary,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsStyle.instance.primary,
      primary: ColorsStyle.instance.primary,
      secondary: ColorsStyle.instance.secondary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(20),
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultFocusedInputBorder,
    ),
  );
}
