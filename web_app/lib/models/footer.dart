import 'package:flutter/material.dart';
import 'package:molslice/models/copyright.dart';
import 'package:molslice/models/dark_mode.dart';
import 'package:molslice/models/about_dialogue.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DarkMode(),
          Spacer(),
          CopyRight(),
          // Spacer(),
          // DialogExample()
        ],
      ),
    );
  }
}
