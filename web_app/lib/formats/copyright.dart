import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CopyRightData {
  static const _titleAlignment = TextAlign.center;
  static const padding = 0.0;
  static const _fontSize = 20.0;
  static const _fontFamily = 'providence';

  static RichText createCopyright(BuildContext context) {
    String copyText1 = '2023 ';
    String copyText2 = 'vishnu-prasad-kurupath';
    String copyText3 = ' & ';
    String copyText4 = 'simon-gravelle';
    String copyText5 = ' ';
    return RichText(
        text: TextSpan(children: [
          const WidgetSpan(
              child: Icon(
            Icons.copyright_sharp,
            size: _fontSize,
          )),
          TextSpan(
              text: copyText1,
              style: TextStyle(
                  fontFamily: _fontFamily,
                  fontSize: _fontSize,
                  color: Theme.of(context).colorScheme.onBackground)),
          TextSpan(
              text: copyText2,
              style: TextStyle(
                fontFamily: _fontFamily,
                fontSize: _fontSize,
                color: Theme.of(context).colorScheme.onBackground,
                // backgroundColor: const Color.fromARGB(126, 33, 149, 243)
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launchUrl(Uri(
                      scheme: 'https',
                      host: 'vishnu-prasad-kurupath.github.io',
                      path: '/'));
                }),
          TextSpan(
              text: copyText3,
              style: TextStyle(
                  fontFamily: _fontFamily,
                  fontSize: _fontSize,
                  color: Theme.of(context).colorScheme.onBackground)),
          TextSpan(
              text: copyText4,
              style: TextStyle(
                fontFamily: _fontFamily,
                fontSize: _fontSize,
                color: Theme.of(context).colorScheme.onBackground,
                // backgroundColor: const Color.fromARGB(126, 33, 149, 243)
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launchUrl(Uri(
                      scheme: "https",
                      host: 'simongravelle.github.io',
                      path: '/'));
                }),
          TextSpan(
              text: copyText5,
              style: TextStyle(
                  fontFamily: _fontFamily,
                  fontSize: _fontSize,
                  color: Theme.of(context).colorScheme.onBackground)),
        ]),
        textAlign: _titleAlignment);
  }
}
