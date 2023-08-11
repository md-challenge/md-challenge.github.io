import 'package:flutter/material.dart';
import '../formats/about_dialogue.dart';

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // width: MediaQuery.of(context).size.width * 0.3,
        child: TextButton(
            onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    scrollable: true,
                    title: Text(
                      'About',
                      style: AboutData.headerStyle(context),
                    ),
                    content: AboutData.createAbout(context),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: Text(
                          'Close',
                          style: AboutData.buttonStyle(context),
                        ),
                      ),
                    ],
                  ),
                ),
            child: RichText(
                text: TextSpan(children: [
              WidgetSpan(
                  child: Icon(
                Icons.copyright_sharp,
                size: 15.0,
                color: Theme.of(context).colorScheme.onBackground,
              )),
              TextSpan(text: ' About', style: AboutData.buttonStyle(context)),
            ]))));
  }
}
