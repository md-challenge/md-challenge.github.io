import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:molslice/themes/dark.dart';
import 'package:molslice/themes/light.dart';
import 'models/web_app_bar.dart';
import 'models/app_drawer.dart';
import 'models/panels.dart';
import 'package:provider/provider.dart';
// import 'models/copyright.dart';
// import 'models/dark_mode.dart';

class MolSlice extends StatefulWidget {
  const MolSlice({super.key});

  @override
  State<MolSlice> createState() => _MolSliceState();
}

class _MolSliceState extends State<MolSlice> {
  ThemeData getTheme(bool darkBool) {
    if (darkBool == true) {
      return darkTheme;
    } else {
      return lightTheme;
    }
  }

  // Widget sizeResponse() {
  //   if (MediaQuery.of(context).size.width < 500) {
  //     return MobilePanels();
  //   } else {
  //     return Panels();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, valueProviderTheme, child) {
      return MaterialApp(
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
            child: Padding(
                padding: const EdgeInsets.all(10.0), child: webAppBar(context)),
          ),
          endDrawer: const AppDrawer(),
          body: const Panels(),
          // persistentFooterButtons: <Widget>[
          //   SizedBox(
          //     height: 25.0,
          //     width: MediaQuery.of(context).size.width * 0.95,
          //     child: const CopyRight(),
          //   ),
          //   const DarkMode(),
          // ],
        ),
        theme: getTheme(valueProviderTheme.darkBool),
      );
    });
  }
}
