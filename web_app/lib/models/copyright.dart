import 'package:flutter/material.dart';
import '../formats/copyright.dart';

class CopyRight extends StatelessWidget {
  const CopyRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CopyRightData.createCopyright(context),
      ],
    );
  }
}
