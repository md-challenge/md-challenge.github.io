import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';
import 'q1_text_mobile.dart';
import 'q1_radio_mobile.dart';
import 'q2_text_mobile.dart';
import 'q2_radio_mobile.dart';

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: makeQstack(MediaQuery.of(context).size.height * 0.01),
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
  qstack.add(Container(
    height: gap,
  ));

  return qstack;
}
