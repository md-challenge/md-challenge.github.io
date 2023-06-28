import 'package:flutter/material.dart';
import 'submit_button.dart';
import 'qstack.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Qstack(), Submit()],
    );
  }
}
