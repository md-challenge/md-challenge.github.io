import 'package:flutter/material.dart';

class TextAnswerData {
  static const _titleAlignment = TextAlign.justify;
  static const padding = 10.0;
  // static const _borderColor = Color.fromARGB(255, 0, 0, 0);
  static const _borderradius = 5.0;
  static const _fontFamily = 'providence';
  static const _goodfontSize = 20.0;
  // static const Color _goodfontColor = Color.fromARGB(255, 27, 128, 2);
  static const _badfontSize = 20.0;
  // static const Color _badfontColor = Color.fromARGB(255, 240, 4, 4);
  static const _commentfontSize = 20.0;
  // static const Color _commentfontColor = Color.fromARGB(255, 20, 54, 189);

  static const goodStyle = TextStyle(
      fontFamily: _fontFamily,
      fontSize: _goodfontSize,
      // color: _goodfontColor,
      backgroundColor: Color.fromARGB(128, 76, 175, 79));

  static const badStyle = TextStyle(
      fontFamily: _fontFamily,
      fontSize: _badfontSize,
      // color: _badfontColor,
      backgroundColor: Color.fromARGB(125, 244, 67, 54));

  static const commentStyle = TextStyle(
    fontFamily: _fontFamily,
    fontSize: _commentfontSize,
    // color: _commentfontColor,
  );

  static const boxDecoration = BoxDecoration(
      // border: Border.all(color: _borderColor),
      borderRadius: BorderRadius.all(Radius.circular(_borderradius)));

  static Text goodProcSelection(int optProc) {
    String textAnswerText =
        'CONGRATS !! Your selection of processors ($optProc) was optimal !!';
    return Text(
      textAnswerText,
      textAlign: _titleAlignment,
      style: goodStyle,
    );
  }

  static Column badProcSelection(
      int? procSelection, int optProc, int optDivX, int optDivY) {
    String textAnswerText1 =
        'Sorry, your selection of $procSelection processors was SUB-OPTIMAL !!';
    String textAnswerText2 =
        'The optimal processors for the given case is $optProc \nWith a processor division of ($optDivX, $optDivY)';
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
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
        'Your selection of processor division ($optDivX, $optDivY) was ALSO optimal !!';
    return Text(
      textAnswerText,
      textAlign: _titleAlignment,
      style: goodStyle,
    );
  }

  static Column badDivSelection(
      int divXSelection, int divYSelection, int optDivX, int optDivY) {
    String textAnswerText1 =
        'BUT your selection of processor division ($divXSelection,$divYSelection) was sub-optimal';
    String textAnswerText2 =
        'The optimal processor division for the given case is ($optDivX, $optDivY)';
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
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
        'See the speedup(efficiency), energy and carbon footprint graphs (below) for more details';
    return Text(
      textAnswerText,
      textAlign: _titleAlignment,
      style: commentStyle,
    );
  }
}
