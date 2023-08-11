import 'package:flutter/material.dart';
import 'text_answer_mobile.dart';
import 'graph_tabs_mobile.dart';
import 'comment_mobile.dart';
import 'next_button_mobile.dart';

class Answers extends StatelessWidget {
  const Answers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.9,
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.5 * 0.0,
          MediaQuery.of(context).size.height * 0.8 * 0.00,
          MediaQuery.of(context).size.width * 0.5 * 0.0,
          MediaQuery.of(context).size.height * 0.8 * 0.01),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextAnswer(),
          GraphTabs(),
          Comment(),
          NextButton(),
        ],
      ),
    );
  }
}
