import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';
import '../formats/next_button.dart';

class NextButton extends StatefulWidget {
  const NextButton({super.key});

  @override
  State<NextButton> createState() => _NextState();
}

class _NextState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, valueProviderNext, child) {
        return ElevatedButton(
            onPressed: () {
              valueProviderNext.incrementProblemNumber();
            },
            child: Container(
              padding: const EdgeInsets.all(NextButtonData.padding),
              decoration: NextButtonData.boxDecoration,
              child: NextButtonData.createNextButton(),
            ));
      },
    );
  }
}
