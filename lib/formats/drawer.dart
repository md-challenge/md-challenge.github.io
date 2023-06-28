import 'package:flutter/material.dart';

class DrawerData {
  static const _textAlignment = TextAlign.center;
  static const _fontFamily = 'providence';
  static const _fontSize = 30.0;
  static const _fontColor = Color.fromARGB(255, 0, 0, 0);
  static const drawerStyle = TextStyle(
      fontFamily: _fontFamily, fontSize: _fontSize, color: _fontColor);
  static drawerText(int problemNumber) {
    String number = problemNumber.toString();
    return Text("Case $number", textAlign: _textAlignment);
  }
}
