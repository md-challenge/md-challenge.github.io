import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';
import 'q1_text.dart';
import 'q1_radio.dart';
import 'q2_text.dart';
import 'q2_radio.dart';

class Qstack extends StatefulWidget {
  const Qstack({super.key});

  @override
  State<Qstack> createState() => _QstackState();
}

class _QstackState extends State<Qstack> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, valueProviderQstack, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: makeQstack(MediaQuery.of(context).size.height * 0.05),
        );
      },
    );
  }
}

List<Widget> makeQstack(double gap) {
  List<Widget> qstack = [];
  qstack.add(const Q1Text());
  qstack.add(const Q1Radio());
  qstack.add(Container(
    height: gap,
  ));
  qstack.add(const Q2Text());
  qstack.add(const Q2Radio());

  return qstack;
}
