import 'package:flutter/material.dart';

class ResponsivePanels extends StatelessWidget {
  final Widget mobilePanels;
  final Widget desktopPanels;

  const ResponsivePanels(
      {super.key, required this.mobilePanels, required this.desktopPanels});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600.0) {
          return mobilePanels;
        } else {
          return desktopPanels;
        }
      },
    );
  }
}
