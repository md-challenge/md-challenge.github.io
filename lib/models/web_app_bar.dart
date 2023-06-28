import 'package:flutter/material.dart';
import '../formats/header.dart';

PreferredSizeWidget webAppBar() {
  return AppBar(
    title: HeaderData.headerText,
    titleTextStyle: HeaderData.headerStyle,
  );
}
