import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';
import 'case_header.dart';
import '../data/problem_data.dart';
import 'image_stack.dart';
import 'system_description.dart';

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
        return SizedBox(
          width: MediaQuery.of(context).size.width / 2.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CaseHeading(problemNumber: valueProviderSystem.problemNumber),
              ImageStack(
                  systemURL:
                      dataList[valueProviderSystem.problemNumber].sysImageURL,
                  divX: valueProviderSystem.divCountX,
                  divY: valueProviderSystem.divCountY,
                  overlayBool: valueProviderSystem.divOverlayBool,
                  divColor: valueProviderSystem.divColor),
              SysDescription(problemNumber: valueProviderSystem.problemNumber),
            ],
          ),
        );
      },
    );
  }
}
