import 'package:flutter/material.dart';

class SysDescriptionData {
  static const _titleAlignment = TextAlign.center;
  static const padding = 3.0;
  // static const _borderColor = Color.fromARGB(255, 0, 0, 0);
  static const _borderradius = 5.0;
  static const _fontSize = 14.0;
  static const _fontFamily = 'providence';
  // static const Color _fontColor = Color.fromARGB(255, 0, 0, 0);
  static const _sysDescriptionStyle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: _fontSize,
    // color: _fontColor,
  );
  static const boxDecoration = BoxDecoration(
      // border: Border.all(color: _borderColor),
      borderRadius: BorderRadius.all(Radius.circular(_borderradius)));
  static Text createSysDescription(int nMols, double xlen, double ylen) {
    String sysDescriptionText =
        'Box Size :\t $xlen x $ylen (width by height) \nNumber of Molecules:\t $nMols';
    return Text(
      sysDescriptionText,
      textAlign: _titleAlignment,
      style: _sysDescriptionStyle,
    );
  }
}
