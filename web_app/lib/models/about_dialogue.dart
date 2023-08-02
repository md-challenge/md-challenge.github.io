import 'package:flutter/material.dart';
import '../formats/about_dialogue.dart';

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.1,
      child: TextButton(
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
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
        child: Text('About', style: AboutData.buttonStyle(context)),
      ),
    );
  }
}
