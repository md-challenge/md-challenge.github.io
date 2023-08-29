import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';
import 'case_header_mobile.dart';
import '../data/problem_data.dart';
import 'image_stack_mobile.dart';
import 'system_description_mobile.dart';

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
              MediaQuery.of(context).size.width * 0.5 * 0.0,
              MediaQuery.of(context).size.height * 0.8 * 0.0,
              MediaQuery.of(context).size.width * 0.5 * 0.0,
              MediaQuery.of(context).size.height * 0.8 * 0.05),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            // height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
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
                CaseHeading(problemNumber: valueProviderSystem.problemNumber),
                SysDescription(
                    problemNumber: valueProviderSystem.problemNumber),
              ],
            ),
          ),
        );
      },
    );
  }
}
