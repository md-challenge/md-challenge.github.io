import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';

class DarkMode extends StatelessWidget {
  const DarkMode({super.key});
  static const double _size = 15.0;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, valueProviderDarkMode, child) {
        if (valueProviderDarkMode.darkBool == false) {
          return IconButton(
              onPressed: () {
                valueProviderDarkMode.switchDarkMode();
              },
              icon: const Icon(
                Icons.nightlight_round_outlined,
                size: _size,
              ));
        } else {
          return IconButton(
              onPressed: () {
                valueProviderDarkMode.switchDarkMode();
              },
              icon: const Icon(
                Icons.sunny,
                size: _size,
              ));
        }
      },
    );
  }
}
