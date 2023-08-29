import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';
import 'case_header.dart';
import '../data/problem_data.dart';
import 'image_stack_2.dart';
import 'system_description.dart';
import 'next_button.dart';

class System extends StatefulWidget {
  const System({super.key});

  @override
  State<System> createState() => _SystemState();
}

class _SystemState extends State<System> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, valueProviderSystem, child) {
        return Padding(
          padding: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.width * 0.5 * 0.1,
              MediaQuery.of(context).size.height * 0.8 * 0.1,
              MediaQuery.of(context).size.width * 0.5 * 0.15,
              MediaQuery.of(context).size.height * 0.8 * 0.05),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CaseHeading(problemNumber: valueProviderSystem.problemNumber),
                ImageStack(
                    systemURL: valueProviderSystem.darkBool
                        ? dataList[valueProviderSystem.problemNumber]
                            .sysImageURLDark
                        : dataList[valueProviderSystem.problemNumber]
                            .sysImageURL,
                    divX: valueProviderSystem.divCountX,
                    divY: valueProviderSystem.divCountY,
                    overlayBool: valueProviderSystem.divOverlayBool,
                    divColor: Theme.of(context).colorScheme.onBackground),
                SysDescription(
                    problemNumber: valueProviderSystem.problemNumber),
                const NextButton()
              ],
            ),
          ),
        );
      },
    );
  }
}
