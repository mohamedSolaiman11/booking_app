import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTheme{
  static ColorScheme colorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.red,
    onPrimary: Colors.blue,
    secondary: Colors.grey,
    onSecondary: Colors.white70,
    error: Colors.deepPurple,
    onError: Colors.purpleAccent,
    background: Colors.white,
    onBackground: Colors.yellow,
    surface: Colors.pink,
    onSurface: Colors.black,
  );

  static AppBarTheme appBarTheme = const AppBarTheme(
    backgroundColor: Colors.white,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ),
  );
}
