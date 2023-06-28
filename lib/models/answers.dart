import 'package:flutter/material.dart';
import 'text_answer.dart';
import 'graph_tabs.dart';
import 'comment.dart';
import 'next_button.dart';

class Answers extends StatelessWidget {
  const Answers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [TextAnswer(), GraphTabs(), Comment(), NextButton()],
    );
  }
}
