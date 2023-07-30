import 'package:flutter/material.dart';

class HeaderData {
  static const _title =
      'MD-Proc Challenge:\t Optimize Molecular Dynamics Parallelization';
  static const _subtitle =
      'Optimally parallelize Molecular Dynamics simulations !!';
  static const _titleAlignment = TextAlign.center;
  static const _fontSize = 40.0;
  static const _subFontSize = 30.0;
  static const _fontFamily = 'providence';
  static const Color _fontColor = Colors.black;
  static const headerStyle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: _fontSize,
    // color: _fontColor,
  );
  static const subHeaderStyle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: _subFontSize,
    color: _fontColor,
  );
  static const headerText = Text(
    _title,
    textAlign: _titleAlignment,
    style: headerStyle,
  );
  static const subHeaderText =
      Text(_subtitle, textAlign: _titleAlignment, style: subHeaderStyle);
  static RichText fullTitle = RichText(
      text: const TextSpan(children: [
    TextSpan(text: _title, style: headerStyle),
    TextSpan(text: _subtitle, style: subHeaderStyle)
  ]));
}
