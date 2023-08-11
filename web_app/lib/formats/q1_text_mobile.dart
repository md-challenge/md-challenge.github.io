import 'package:flutter/material.dart';

class Q1TextData {
  static const _titleAlignment = TextAlign.center;
  static const padding = 3.0;
  // static const _borderColor = Color.fromARGB(255, 0, 0, 0);
  static const _borderradius = 5.0;
  static const _fontSize = 15.0;
  static const _fontFamily = 'providence';
  // static const Color _fontColor = Color.fromARGB(255, 0, 0, 0);
  static const caseHeaderStyle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: _fontSize,
    // color: _fontColor,
  );
  static const boxDecoration = BoxDecoration(
      // border: Border.all(color: _borderColor),
      borderRadius: BorderRadius.all(Radius.circular(_borderradius)));
  static Text createQ1Text() {
    String q1TextText = 'Estimate the number of processors required?';
    return Text(q1TextText, textAlign: _titleAlignment, style: caseHeaderStyle);
  }
}
