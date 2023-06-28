import 'package:flutter/material.dart';

class SysDescriptionData {
  static const _titleAlignment = TextAlign.left;
  static const padding = 10.0;
  static const _borderColor = Color.fromARGB(255, 0, 0, 0);
  static const _borderradius = 5.0;
  static const _fontSize = 15.0;
  static const _fontFamily = 'providence';
  static const Color _fontColor = Color.fromARGB(255, 0, 0, 0);
  static const _sysDescriptionStyle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: _fontSize,
    color: _fontColor,
  );
  static final boxDecoration = BoxDecoration(
      border: Border.all(color: _borderColor),
      borderRadius: const BorderRadius.all(Radius.circular(_borderradius)));
  static Text createSysDescription(int nMols, double xlen, double ylen) {
    String sysDescriptionText =
        'Box Size :$xlen (width) by $ylen (height), Number of molecules: $nMols';
    return Text(
      sysDescriptionText,
      textAlign: _titleAlignment,
      style: _sysDescriptionStyle,
    );
  }
}
