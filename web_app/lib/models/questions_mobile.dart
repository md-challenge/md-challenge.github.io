import 'package:flutter/material.dart';
import 'submit_button_mobile.dart';
import 'qstack_mobile.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.4,
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.5 * 0.0,
          MediaQuery.of(context).size.height * 0.8 * 0.0,
          MediaQuery.of(context).size.width * 0.5 * 0.0,
          MediaQuery.of(context).size.height * 0.8 * 0.0),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Qstack(), Submit()],
      ),
    );
  }
}
