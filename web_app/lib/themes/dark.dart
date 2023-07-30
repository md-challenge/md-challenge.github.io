import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.black,
        onPrimary: Colors.white,
        secondary: Colors.white,
        onSecondary: Colors.black,
        error: Colors.black,
        onError: Colors.red,
        background: Colors.black,
        onBackground: Colors.white,
        surface: Colors.transparent,
        onSurface: Colors.white),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black, foregroundColor: Colors.white),
    bottomAppBarTheme: const BottomAppBarTheme(color: Colors.black),
    brightness: Brightness.dark,
    dialogTheme: const DialogTheme(
        backgroundColor: Colors.black, iconColor: Colors.white),
    drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.black,
        scrimColor: Color.fromARGB(128, 128, 128, 128)),
    textTheme: const TextTheme(displayLarge: TextStyle(color: Colors.white)));
