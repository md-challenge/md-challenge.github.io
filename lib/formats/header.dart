import 'package:flutter/material.dart';

class HeaderData {
  static const _title = 'Parallelize Molecular Simulations';
  static const _titleAlignment = TextAlign.center;
  static const _fontSize = 30.0;
  static const _fontFamily = 'enigmatic';
  static const Color _fontColor = Color.fromARGB(255, 0, 0, 0);
  static const headerStyle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: _fontSize,
    color: _fontColor,
  );
  static const headerText = Text(_title, textAlign: _titleAlignment);
}
