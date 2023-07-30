import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CommentData {
  static const _titleAlignment = TextAlign.left;
  static const padding = 10.0;
  static const _borderColor = Color.fromARGB(255, 0, 0, 0);
  static const _borderradius = 5.0;
  static const _fontSize = 20.0;
  static const _fontFamily = 'providence';
  // static const Color _fontColor = Color.fromARGB(255, 0, 0, 0);
  // static const _linkFontSize = 20.0;
  // static const Color _linkFontColor = Color.fromARGB(255, 11, 48, 168);

  // static const commentStyle = TextStyle(
  //   fontFamily: _fontFamily,
  //   fontSize: _fontSize,
  //   // color: _fontColor,
  // );

  // static const linkStyle = TextStyle(
  //   fontFamily: _fontFamily,
  //   fontSize: _linkFontSize,
  //   // color: _linkFontColor,
  // );

  static final boxDecoration = BoxDecoration(
      border: Border.all(color: _borderColor),
      borderRadius: const BorderRadius.all(Radius.circular(_borderradius)));

  static RichText createComment(BuildContext context) {
    String commentText1 =
        'Also see how processor distribution is handled in LAMMPS (';
    String commentText2 = 'link';
    String commentText3 = ') and Gromacs (';
    String commentText4 = 'link';
    String commentText5 = ')';
    return RichText(
        text: TextSpan(children: [
          TextSpan(
              text: commentText1,
              style: TextStyle(
                  fontFamily: _fontFamily,
                  fontSize: _fontSize,
                  color: Theme.of(context).colorScheme.onBackground)),
          TextSpan(
              text: commentText2,
              style: TextStyle(
                  fontFamily: _fontFamily,
                  fontSize: _fontSize,
                  color: Theme.of(context).colorScheme.onBackground,
                  backgroundColor: const Color.fromARGB(126, 33, 149, 243)),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launchUrl(Uri(
                      scheme: 'https',
                      host: 'docs.lammps.org',
                      path: '/balance.html'));
                }),
          TextSpan(
              text: commentText3,
              style: TextStyle(
                  fontFamily: _fontFamily,
                  fontSize: _fontSize,
                  color: Theme.of(context).colorScheme.onBackground)),
          TextSpan(
              text: commentText4,
              style: TextStyle(
                  fontFamily: _fontFamily,
                  fontSize: _fontSize,
                  color: Theme.of(context).colorScheme.onBackground,
                  backgroundColor: const Color.fromARGB(126, 33, 149, 243)),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launchUrl(Uri(
                      scheme: "https",
                      host: 'manual.gromacs.org',
                      path:
                          '/current/reference-manual/algorithms/parallelization-domain-decomp.html'));
                }),
          TextSpan(
              text: commentText5,
              style: TextStyle(
                  fontFamily: _fontFamily,
                  fontSize: _fontSize,
                  color: Theme.of(context).colorScheme.onBackground)),
        ]),
        textAlign: _titleAlignment);
  }
}
