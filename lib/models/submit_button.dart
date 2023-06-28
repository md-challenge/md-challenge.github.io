import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';
import '../formats/submit_button.dart';

class Submit extends StatefulWidget {
  const Submit({super.key});

  @override
  State<Submit> createState() => _SubmitState();
}

class _SubmitState extends State<Submit> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, valueProviderSubmit, child) {
        return ElevatedButton(
            onPressed: () {
              valueProviderSubmit.allowDispAnsBool();
            },
            child: Container(
              padding: const EdgeInsets.all(SubmitButtonData.padding),
              decoration: SubmitButtonData.boxDecoration,
              child: SubmitButtonData.createSubmitButton(),
            ));
      },
    );
  }
}
