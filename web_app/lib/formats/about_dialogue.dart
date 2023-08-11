import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutData {
  // static const _titleAlignment = TextAlign.left;
  static const padding = 10.0;
  static const _borderColor = Color.fromARGB(255, 0, 0, 0);
  static const _borderradius = 5.0;
  // static const _fontSize = 20.0;
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

  static const String _markdownData = '''
## Created by [Vishnu Prasad Kurupuath](https://vishnu-prasad-kurupath.github.io) and [Simon Gravelle](https://simongravelle.github.io) (c) 2023 using [Flutter](https://flutter.dev)

The source code of this website is available as per GNU Public License v3.0.

---

## Vote of thanks for Flutter Code:
Flutter Documentation[[1]](https://docs.flutter.dev/)[[2]](https://www.youtube.com/@flutterdev)[[3]](https://www.youtube.com/@GoogleDevelopers)[[4]](https://www.youtube.com/@GoogleTechTalks)[[5]](https://dart.dev/),
[Flutter Mapp](https://www.youtube.com/@FlutterMapp),
[See Nick Code | Flutter Crash Course](https://fluttercrashcourse.seenickcode.com/),
[HeyFlutter.com](https://heyflutter.com),
[Code with Andrea](https://codewithandrea.com/),
[Mitch Koko](https://www.youtube.com/@createdbykoko),
[Akshit Madan](https://www.youtube.com/@AkshitMadan),
[Learn App Code](https://www.youtube.com/@LearnFlutterCode/),
[TutorialsPoint | Flutter](https://www.tutorialspoint.com/flutter/),
[Remi Rousselet](https://stackoverflow.com/users/8394265/r%c3%a9mi-rousselet),
[Jack'](https://stackoverflow.com/users/5446285/jack),
[KindaCode | Flutter](https://www.kindacode.com/cat/mobile/flutter/),
[Ronak Patel](https://ronak.vercel.app/),
[Rainer Wittmann](https://stackoverflow.com/users/6414732/rainer-wittmann),
[geisterfurz007](http://geisterfurz007.github.io/),
[Arash Mohammadi](https://stackoverflow.com/users/5423747/arash-mohammadi),
[Mehmet Esen](http://mehmetesen.com/),
[Void](https://stackoverflow.com/users/13452640/void),
[Darrell Brogdon](https://stackoverflow.com/users/55589/darrell-brogdon),
[Shady Aziza](https://stackoverflow.com/users/3434970/shady-aziza),
[Thierry](https://stackoverflow.com/users/10118505/thierry),
[Chinedu Imoh](https://blog.logrocket.com/author/chineduimoh/),
[Michael Soliman](https://stackoverflow.com/users/13478605/michael-soliman),
[Rob Lyndon](https://stackoverflow.com/users/1002908/rob-lyndon),
[Diego Velasquez](https://medium.com/@diegoveloper),
[Kaboc](https://blog.kaboc.cc/),
[Md. Yeasin Sheikh](http://linkedin.com/in/mdyeasinsheikh/),
[Ivan Andrianto](https://www.linkedin.com/in/ivan-andrianto-1aa73954/),
[BBK](https://stackoverflow.com/users/8928149/bbk),
[YoBo](https://stackoverflow.com/users/14513938/yobo),
[Shaiq Khan](https://medium.com/@shaiq_khan),
[Collin Jackson](https://stackoverflow.com/users/1463116/collin-jackson),
[Andrei](https://stackoverflow.com/users/1990021/andrei),
[Red Sun](https://stackoverflow.com/users/6916338/red-sun),
[creativecreatorormaybenot](http://portfolio.creativemaybeno.dev/),
[Christian](https://stackoverflow.com/users/25282/christian),
[Diego Cattarinich Clavel](http://thechileankink.github.io/),
[oneimperfectguy](https://stackoverflow.com/users/3740610/oneimperfectguy),
[Aakash Kumar](https://stackoverflow.com/users/4315644/aakash-kumar),
[Ash Khachatryan](https://stackoverflow.com/users/10946093/ash-khachatryan)


''';

  static Widget createAbout(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Markdown(
        onTapLink: (text, url, title) {
          launchUrl(Uri.parse(url!));
        },
        data: _markdownData,
        styleSheet: MarkdownStyleSheet.fromTheme(ThemeData(
            textTheme: TextTheme(
                bodyMedium: buttonStyle(context),
                titleMedium: headerStyle(context),
                titleLarge: headerStyle(context),
                titleSmall: headerStyle(context)))),
        selectable: true,
        shrinkWrap: true,
      ),
    );
  }
}
