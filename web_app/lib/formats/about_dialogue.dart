import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutData {
  static const _titleAlignment = TextAlign.left;
  static const padding = 10.0;
  static const _borderColor = Color.fromARGB(255, 0, 0, 0);
  static const _borderradius = 5.0;
  static const _fontSize = 20.0;
  static const _fontFamily = 'providence';
  // static const Color _fontColor = Color.fromARGB(255, 0, 0, 0);
  // static const _linkFontSize = 20.0;
  // static const Color _linkFontColor = Color.fromARGB(255, 11, 48, 168);

  // static const aboutStyle = TextStyle(
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

  static TextStyle buttonStyle(BuildContext context) {
    return TextStyle(
        fontFamily: _fontFamily,
        fontSize: 15.0,
        color: Theme.of(context).colorScheme.onBackground);
  }

  static TextStyle linksStyle(BuildContext context) {
    return TextStyle(
        fontFamily: _fontFamily,
        fontSize: 10.0,
        decoration: TextDecoration.underline,
        color: Theme.of(context).colorScheme.onBackground);
  }

  static TextStyle headerStyle(BuildContext context) {
    return TextStyle(
        fontFamily: _fontFamily,
        fontSize: 20.0,
        color: Theme.of(context).colorScheme.onBackground);
  }

  static RichText createAbout(BuildContext context) {
    String creatdText1 = 'Created using ';
    String creatdText2 = 'Flutter';
    String creatdText3 = ' by ';
    String creatdText4 = 'Vishnu Prasad Kurupath';
    String creatdText5 = ' and ';
    String creatdText6 = ' Simon Gravelle';
    String creatdText7 = '. \n';
    String thanksHead1 = 'Our vote of thanks for \n';
    String thanksHead2 = 'Flutter code:';
    String thanksPerson1 = 'Person A';

    return RichText(
        text: TextSpan(children: [
          TextSpan(text: creatdText1, style: headerStyle(context)),
          TextSpan(
              text: creatdText2,
              style: headerStyle(context),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launchUrl(
                      Uri(scheme: 'https', host: 'flutter.dev', path: '/'));
                }),
          TextSpan(text: creatdText3, style: headerStyle(context)),
          TextSpan(
              text: creatdText4,
              style: headerStyle(context),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launchUrl(Uri(
                      scheme: "https",
                      host: 'vishnu-prasad-kurupath.github.io',
                      path: '/'));
                }),
          TextSpan(text: creatdText5, style: headerStyle(context)),
          TextSpan(
              text: creatdText6,
              style: headerStyle(context),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launchUrl(Uri(
                      scheme: 'https',
                      host: 'simon-gravelle.github.io',
                      path: '/'));
                }),
          TextSpan(text: creatdText7, style: headerStyle(context)),
        ]),
        textAlign: _titleAlignment);
  }
}
