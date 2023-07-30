import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';
import '../formats/q1_radio.dart';

class Q1Radio extends StatelessWidget {
  const Q1Radio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(Q1RadioData.padding),
      padding: const EdgeInsets.all(Q1RadioData.padding),
      decoration: Q1RadioData.boxDecoration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: makeQ1Radio(Q1RadioData.q1Options()),
      ),
    );
  }
}

List<Widget> makeQ1Radio(List<int> q1Options) {
  List<Widget> radioList = [];

  for (var iRadio in List.generate(q1Options.length, (index) => index)) {
    radioList.add(IRadio(iRadio: iRadio));
  }
  return radioList;
}

class IRadio extends StatefulWidget {
  final int iRadio;
  const IRadio({super.key, required this.iRadio});

  @override
  State<IRadio> createState() => _IRadioState();
}

class _IRadioState extends State<IRadio> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
        builder: (context, valueProviderQ1Radio, child) {
      return Row(
        children: [
          Radio<int>(
            value: Q1RadioData.q1Options()[widget.iRadio],
            groupValue: valueProviderQ1Radio.procSelection,
            onChanged: (value) {
              setState(() {
                valueProviderQ1Radio.setProcSelection(value);
              });
            },
          ),
          Q1RadioData.createQ1Radio(Q1RadioData.q1Options()[widget.iRadio]),
          const SizedBox(
            width: 10.0,
          )
        ],
      );
    });
  }
}
