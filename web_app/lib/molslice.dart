import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:molslice/models/web_app_bar_mobile.dart';
import 'package:molslice/themes/dark.dart';
import 'package:molslice/themes/light.dart';
import 'models/web_app_bar.dart';
import 'models/app_drawer.dart';
import 'models/panels.dart';
import 'package:provider/provider.dart';
import 'models/app_drawer_mobile.dart';
import 'models/panels_mobile.dart';
import 'models/reponsive_drawer.dart';
import 'models/responsive_panels.dart';
import 'models/responsive_app_bar.dart';
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

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, valueProviderTheme, child) {
      return MaterialApp(
        title: 'MD-Proc Challenge: Optimize Molecular Dynamics Parallelization',
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ResponsiveTitle(
                    mobileTitle: webAppBarMobile(context),
                    desktopTitle: webAppBar(context))),
          ),
          endDrawer: const ResponsiveDrawer(
              mobileDrawer: MobileAppDrawer(), desktopDrawer: AppDrawer()),
          body: const ResponsivePanels(
              mobilePanels: MobilePanels(), desktopPanels: Panels()),
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
