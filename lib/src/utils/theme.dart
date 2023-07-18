import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/utils/text_theme.dart';

class CustomAppTheme {
  CustomAppTheme._();

  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.yellow,
    brightness: Brightness.light,
    textTheme: CustomTextTheme.lightTextTheme,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.yellow, 
    brightness: Brightness.dark,
    textTheme: CustomTextTheme.darkTextTheme,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(),
    ),
  );
}
