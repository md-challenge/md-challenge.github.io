import 'package:flutter/material.dart';

class ResponsiveDrawer extends StatelessWidget {
  final Widget mobileDrawer;
  final Widget desktopDrawer;

  const ResponsiveDrawer(
      {super.key, required this.mobileDrawer, required this.desktopDrawer});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600.0) {
          return mobileDrawer;
        } else {
          return desktopDrawer;
        }
      },
    );
  }
}
