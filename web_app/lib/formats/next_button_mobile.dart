import 'package:flutter/material.dart';

class NextButtonData {
  static const _titleAlignment = TextAlign.left;
  static const padding = 10.0;
  // static const _borderColor = Color.fromARGB(255, 0, 0, 0);
  static const _borderradius = 5.0;
  static const _fontSize = 20.0;
  static const _fontFamily = 'providence';
  // static const Color _fontColor = Color.fromARGB(255, 0, 0, 0);

  static const nextButtonStyle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: _fontSize,
    // color: _fontColor,
  );
  static const boxDecoration = BoxDecoration(
      // border: Border.all(color: _borderColor),
      borderRadius: BorderRadius.all(Radius.circular(_borderradius)));
  static Text createNextButton() {
    String nextButtonText = 'Next';
    return Text(
      nextButtonText,
      textAlign: _titleAlignment,
      style: nextButtonStyle,
    );
  }
}
