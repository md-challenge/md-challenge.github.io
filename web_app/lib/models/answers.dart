import 'package:flutter/material.dart';
import 'text_answer.dart';
import 'graph_tabs.dart';
import 'comment.dart';

class Answers extends StatelessWidget {
  const Answers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.9,
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.5 * 0.1,
          MediaQuery.of(context).size.height * 0.8 * 0.001,
          MediaQuery.of(context).size.width * 0.5 * 0.1,
          MediaQuery.of(context).size.height * 0.8 * 0.05),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextAnswer(),
          GraphTabs(),
          Comment(),
        ],
      ),
    );
  }
}
