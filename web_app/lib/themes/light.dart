import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Colors.white,
        onPrimary: Colors.black,
        secondary: Colors.black,
        onSecondary: Colors.white,
        error: Colors.white,
        onError: Colors.red,
        background: Colors.white,
        onBackground: Colors.black,
        surface: Colors.transparent,
        onSurface: Colors.black),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white, foregroundColor: Colors.black),
    bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
    brightness: Brightness.light,
    dialogTheme: const DialogTheme(
        backgroundColor: Colors.white, iconColor: Colors.black87),
    drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.white,
        scrimColor: Color.fromARGB(128, 128, 128, 128)),
    textTheme: const TextTheme(displayLarge: TextStyle(color: Colors.black)));
