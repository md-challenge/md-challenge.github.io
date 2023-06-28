import 'package:flutter/material.dart';

class CaseHeadingData {
  static const _title = 'Case ';
  static const _titleAlignment = TextAlign.left;
  static const padding = 10.0;
  static const _borderColor = Color.fromARGB(255, 0, 0, 0);
  static const _borderradius = 5.0;
  static const _fontSize = 30.0;
  static const _fontFamily = 'providence';
  static const Color _fontColor = Color.fromARGB(255, 0, 0, 0);
  static const caseHeaderStyle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: _fontSize,
    color: _fontColor,
  );
  static final boxDecoration = BoxDecoration(
      border: Border.all(color: _borderColor),
      borderRadius: const BorderRadius.all(Radius.circular(_borderradius)));
  static Text createCaseHeading(int problemNumber) {
    String caseHeadingText = _title.toString() + problemNumber.toString();
    return Text(
      caseHeadingText,
      textAlign: _titleAlignment,
      style: caseHeaderStyle,
    );
  }
}
