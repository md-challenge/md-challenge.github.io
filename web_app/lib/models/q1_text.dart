import 'package:flutter/material.dart';
import '../formats/q1_text.dart';

class Q1Text extends StatelessWidget {
  const Q1Text({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Q1TextData.padding),
      decoration: Q1TextData.boxDecoration,
      child: Row(
        children: [
          Flexible(child: Q1TextData.createQ1Text()),
        ],
      ),
    );
  }
}
