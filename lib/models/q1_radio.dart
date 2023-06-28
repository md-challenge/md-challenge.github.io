import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';
import '../formats/q1_radio.dart';

class Q1Radio extends StatefulWidget {
  const Q1Radio({super.key});

  @override
  State<Q1Radio> createState() => _Q1RadioState();
}

class _Q1RadioState extends State<Q1Radio> {
  @override
  Widget build(BuildContext context) {
    Widget intRadio(int iRadio) {
      return Consumer<AppProvider>(
        builder: (context, valueProviderRadio, child) {
          return Row(
            children: [
              Radio<int>(
                value: Q1RadioData.q1Options()[iRadio],
                groupValue: valueProviderRadio.procSelection,
                onChanged: (value) {
                  setState(() {
                    valueProviderRadio.setProcSelection(value);
                  });
                },
              ),
              Q1RadioData.createQ1Radio(Q1RadioData.q1Options()[iRadio]),
              const SizedBox(
                width: 10.0,
              )
            ],
          );
        },
      );
    }

    List<Widget> makeQ1Radio(List<int> q1Options) {
      List<Widget> radioList = [];

      for (var iRadio in List.generate(q1Options.length, (index) => index)) {
        radioList.add(intRadio(iRadio));
      }
      return radioList;
    }

    return Consumer<AppProvider>(builder: (context, valueProviderQ1, child) {
      return Container(
        margin: const EdgeInsets.all(Q1RadioData.padding),
        padding: const EdgeInsets.all(Q1RadioData.padding),
        decoration: Q1RadioData.boxDecoration,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: makeQ1Radio(Q1RadioData.q1Options()),
        ),
      );
    });
  }
}
