import 'package:flutter/material.dart';
import 'submit_button.dart';
import 'qstack.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.5 * 0.1,
          MediaQuery.of(context).size.height * 0.8 * 0.05,
          MediaQuery.of(context).size.width * 0.5 * 0.15,
          MediaQuery.of(context).size.height * 0.8 * 0.1),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Qstack(), Submit()],
      ),
    );
  }
}
