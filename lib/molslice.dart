import 'package:flutter/material.dart';
import 'models/web_app_bar.dart';
import 'models/app_drawer.dart';
import 'models/panels.dart';

class MolSlice extends StatelessWidget {
  const MolSlice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: webAppBar(),
          endDrawer: const AppDrawer(),
          body: const Panels()),
    );
  }
}
