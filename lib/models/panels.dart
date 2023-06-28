import 'package:flutter/material.dart';
import 'system.dart';
import 'q_n_a.dart';

class Panels extends StatelessWidget {
  const Panels({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(flex: 1, child: System()),
          Expanded(flex: 1, child: QnA())
        ],
      ),
    );
  }
}
