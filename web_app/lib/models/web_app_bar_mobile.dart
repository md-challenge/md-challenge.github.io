import 'package:flutter/material.dart';
import '../formats/header_mobile.dart';

PreferredSizeWidget webAppBarMobile(BuildContext context) {
  return AppBar(
    primary: true,
    title: const Wrap(children: <Widget>[HeaderData.headerText]),
    // leading: const DarkMode(),
  );
}
