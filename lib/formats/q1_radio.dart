import 'package:flutter/material.dart';

class Q1RadioData {
  static const _titleAlignment = TextAlign.left;
  static const padding = 10.0;
  static const _borderColor = Color.fromARGB(255, 0, 0, 0);
  static const _borderradius = 5.0;
  static const _fontSize = 30.0;
  static const _fontFamily = 'providence';
  static const _q1Options = [2, 4, 8, 16, 32];
  static const Color _fontColor = Color.fromARGB(255, 0, 0, 0);
  static const caseHeaderStyle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: _fontSize,
    color: _fontColor,
  );
  static final boxDecoration = BoxDecoration(
      border: Border.all(color: _borderColor),
      borderRadius: const BorderRadius.all(Radius.circular(_borderradius)));
  static Text createQ1Radio(int procs) {
    String q1RadioText = '$procs';
    return Text(q1RadioText, textAlign: _titleAlignment);
  }

  static List<int> q1Options() {
    return _q1Options;
  }
}
