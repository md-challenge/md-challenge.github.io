// import 'dart:math';
import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';
import '../formats/q2_radio_mobile.dart';

class Q2Radio extends StatefulWidget {
  const Q2Radio({super.key});

  @override
  State<Q2Radio> createState() => _Q2RadioState();
}

class _Q2RadioState extends State<Q2Radio> {
  @override
  Widget build(BuildContext context) {
    Widget intRadio(int iRadio, int xDivs, int? procSelection) {
      return Consumer<AppProvider>(
          builder: (context, valueProviderRadio, child) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio<int>(
                value: iRadio,
                groupValue: valueProviderRadio.q2Selection,
                onChanged: (value) {
                  setState(() {
                    valueProviderRadio.setQ2Selection(value);
                    valueProviderRadio.setDivCounts(
                        xDivs, procSelection! ~/ xDivs);
                  });
                },
              ),
              Q2RadioData.createQ2Radio(procSelection!, xDivs)
            ]);
      });
    }

    List<Widget> makeQ2Radio(int? procSelection) {
      List<int> q2Xdivs = generateQ2options(procSelection);
      List<Widget> radioList = [];
      for (var iRadio in List.generate(q2Xdivs.length, (index) => index)) {
        radioList.add(intRadio(
          iRadio,
          q2Xdivs[iRadio],
          procSelection,
        ));
      }
      return radioList;
    }

    return Consumer<AppProvider>(
      builder: (context, valueProviderQ2, child) {
        return Container(
          alignment: AlignmentDirectional.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(Q2RadioData.padding),
          decoration: Q2RadioData.boxDecoration,
          child: Wrap(
              direction: Axis.horizontal,
              spacing: MediaQuery.of(context).size.width * 0.001,
              runSpacing: MediaQuery.of(context).size.height * 0.001,
              children: makeQ2Radio(valueProviderQ2.procSelection)),
        );
      },
    );
  }
}

// class IRadio extends StatefulWidget {
//   final int iRadio;
//   final int xDivs;
//   final int? procSelection;
//   const IRadio(
//       {super.key,
//       required this.iRadio,
//       required this.xDivs,
//       required this.procSelection});

//   @override
//   State<IRadio> createState() => _IRadioState();
// }

// class _IRadioState extends State<IRadio> {
//   int? groupValue;
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<AppProvider>(
//         builder: (context, valueProviderQ2Radio, child) {
//       return Row(children: [
//         Radio<int>(
//           value: widget.iRadio,
//           groupValue: groupValue,
//           onChanged: (value) {
//             setState(() {
//               print(value);
//               groupValue = value;
//               valueProviderQ2Radio.setDivCounts(
//                   widget.xDivs, widget.procSelection! ~/ widget.xDivs);
//             });
//           },
//         ),
//         Q2RadioData.createQ2Radio(widget.procSelection!, widget.xDivs),
//         const SizedBox(
//           width: 10.0,
//         ),
//       ]);
//     });
//   }
// }

List<int> generateQ2options(int? procSelection) {
  List<int> q2DivX = [];
  // int procRange = 0;
  if (procSelection != null) {
    // procRange = sqrt(procSelection).ceil();
    for (var iDivX in List.generate(procSelection + 1, (index) => index)) {
      if (procSelection % iDivX == 0) {
        q2DivX.add(iDivX);
      }
    }
  }
  return q2DivX;
}
