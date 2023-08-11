import 'package:flutter/material.dart';
import '../formats/case_heading_mobile.dart';

class CaseHeading extends StatelessWidget {
  final int problemNumber;
  const CaseHeading({super.key, required this.problemNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(CaseHeadingData.padding),
      decoration: CaseHeadingData.boxDecoration,
      child: CaseHeadingData.createCaseHeading(problemNumber + 1),
    );
  }
}
