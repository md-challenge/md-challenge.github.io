import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';
import 'questions.dart';
import 'answers.dart';

class QnA extends StatefulWidget {
  const QnA({super.key});

  @override
  State<QnA> createState() => _QnAState();
}

class _QnAState extends State<QnA> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, valueProviderQnA, child) {
        return SizedBox(
          width: MediaQuery.of(context).size.width / 2.0,
          child: chooseQnA(valueProviderQnA.dispAnsBool),
        );
      },
    );
  }
}

Widget chooseQnA(bool dispAns) {
  if (dispAns == false) {
    return const Questions();
  } else {
    return const Answers();
  }
}
