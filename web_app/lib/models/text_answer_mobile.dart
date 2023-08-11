import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';
import '../formats/text_answer_mobile.dart';
import '../data/problem_data.dart';

class TextAnswer extends StatelessWidget {
  const TextAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> makeAnswer(int optProc, int optDivX, int optDivY,
        int? procSelection, int divXselection, int divYselection) {
      List<Widget> ansStack = [];
      if (procSelection == optProc) {
        ansStack
            .add(Flexible(child: TextAnswerData.goodProcSelection(optProc)));
        if (divXselection == optDivX && divYselection == optDivY) {
          ansStack.add(Flexible(
              child: TextAnswerData.goodDivSelection(optDivX, optDivY)));
        } else {
          ansStack.add(Flexible(
              child: TextAnswerData.badDivSelection(
                  divXselection, divYselection, optDivX, optDivY)));
        }
      } else {
        ansStack.add(Flexible(
            child: TextAnswerData.badProcSelection(
                procSelection, optProc, optDivX, optDivY)));
      }
      ansStack.add(Container(
        height: 10.0,
      ));
      ansStack.add(Flexible(child: TextAnswerData.referGraphs()));
      return ansStack;
    }

    return Consumer<AppProvider>(
      builder: (context, valueProviderTextAnswer, child) {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(TextAnswerData.padding),
          decoration: TextAnswerData.boxDecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: makeAnswer(
                dataList[valueProviderTextAnswer.problemNumber].optimalProc,
                dataList[valueProviderTextAnswer.problemNumber].optimalXcount,
                dataList[valueProviderTextAnswer.problemNumber].optimalYcount,
                valueProviderTextAnswer.procSelection,
                valueProviderTextAnswer.divCountX,
                valueProviderTextAnswer.divCountY),
          ),
        );
      },
    );
  }
}
