import 'package:flutter/material.dart';
import '../formats/q2_text_mobile.dart';

class Q2Text extends StatelessWidget {
  const Q2Text({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Q2TextData.padding),
      decoration: Q2TextData.boxDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Q2TextData.createQ2Text()),
        ],
      ),
    );
  }
}
