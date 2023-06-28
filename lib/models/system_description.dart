import 'package:flutter/material.dart';
import '../formats/system_description.dart';
import '../data/problem_data.dart';

class SysDescription extends StatelessWidget {
  final int problemNumber;
  const SysDescription({super.key, required this.problemNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.0,
      padding: const EdgeInsets.all(SysDescriptionData.padding),
      decoration: SysDescriptionData.boxDecoration,
      child: SysDescriptionData.createSysDescription(
          dataList[problemNumber].nMols,
          dataList[problemNumber].xLen,
          dataList[problemNumber].yLen),
    );
  }
}
