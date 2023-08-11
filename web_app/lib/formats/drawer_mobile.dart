import 'package:flutter/material.dart';

class DrawerData {
  static const _textAlignment = TextAlign.center;
  static const _fontFamily = 'providence';
  static const _fontSize = 20.0;
  // static const _fontColor = Colors.white;
  static const drawerStyle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: _fontSize,
  );
  static drawerText(int problemNumber) {
    String number = problemNumber.toString();
    return Text(
      "Case $number",
      textAlign: _textAlignment,
      style: drawerStyle,
    );
  }
}
