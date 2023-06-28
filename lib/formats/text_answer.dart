import 'package:flutter/material.dart';

class TextAnswerData {
  static const _titleAlignment = TextAlign.left;
  static const padding = 10.0;
  static const _borderColor = Color.fromARGB(255, 0, 0, 0);
  static const _borderradius = 5.0;
  static const _fontFamily = 'providence';
  static const _goodfontSize = 15.0;
  static const Color _goodfontColor = Color.fromARGB(255, 49, 165, 20);
  static const _badfontSize = 15.0;
  static const Color _badfontColor = Color.fromARGB(255, 173, 93, 22);
  static const _commentfontSize = 15.0;
  static const Color _commentfontColor = Color.fromARGB(255, 20, 54, 189);

  static const goodStyle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: _goodfontSize,
    color: _goodfontColor,
  );

  static const badStyle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: _badfontSize,
    color: _badfontColor,
  );

  static const commentStyle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: _commentfontSize,
    color: _commentfontColor,
  );

  static final boxDecoration = BoxDecoration(
      border: Border.all(color: _borderColor),
      borderRadius: const BorderRadius.all(Radius.circular(_borderradius)));

  static Text goodProcSelection(int optProc) {
    String textAnswerText =
        'Your selection of processors ($optProc) was optimal';
    return Text(
      textAnswerText,
      textAlign: _titleAlignment,
      style: goodStyle,
    );
  }

  static Column badProcSelection(
      int? procSelection, int optProc, int optDivX, int optDivY) {
    String textAnswerText1 =
        'Your selection of $procSelection processors was sub-optimal';
    String textAnswerText2 =
        'The optimal number of processors for the given case is $optProc with a processor division of ($optDivX, $optDivY)';
    return Column(
      children: [
        Text(
          textAnswerText1,
          textAlign: _titleAlignment,
          style: badStyle,
        ),
        Text(
          textAnswerText2,
          textAlign: _titleAlignment,
          style: badStyle,
        )
      ],
    );
  }

  static Text goodDivSelection(int optDivX, int optDivY) {
    String textAnswerText =
        'Your selection of processor division ($optDivX, $optDivY) was also optimal';
    return Text(
      textAnswerText,
      textAlign: _titleAlignment,
      style: goodStyle,
    );
  }

  static Column badDivSelection(
      int divXSelection, int divYSelection, int optDivX, int optDivY) {
    String textAnswerText1 =
        'Your selection of processor division ($divXSelection,$divYSelection) was sub-optimal';
    String textAnswerText2 =
        'The optimal processor division for the given case is ($optDivX, $optDivY)';
    return Column(
      children: [
        Text(
          textAnswerText1,
          textAlign: _titleAlignment,
          style: badStyle,
        ),
        Text(
          textAnswerText2,
          textAlign: _titleAlignment,
          style: badStyle,
        )
      ],
    );
  }

  static Text referGraphs() {
    String textAnswerText =
        'See speedup(efficiency), energy and carbon footprint graphs (below) for more details';
    return Text(
      textAnswerText,
      textAlign: _titleAlignment,
      style: commentStyle,
    );
  }
}
