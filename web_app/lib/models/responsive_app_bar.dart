import 'package:flutter/material.dart';

class ResponsiveTitle extends StatelessWidget {
  final Widget mobileTitle;
  final Widget desktopTitle;

  const ResponsiveTitle(
      {super.key, required this.mobileTitle, required this.desktopTitle});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600.0) {
          return mobileTitle;
        } else {
          return desktopTitle;
        }
      },
    );
  }
}
