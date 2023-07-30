import 'package:flutter/material.dart';
import '../formats/header.dart';

PreferredSizeWidget webAppBar(BuildContext context) {
  return AppBar(
    primary: true,
    title: const Wrap(children: <Widget>[HeaderData.headerText]),
    // leading: const DarkMode(),
  );
}
