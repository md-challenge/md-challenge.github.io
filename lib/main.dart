import 'package:flutter/material.dart';
import 'app_provider.dart';
import 'package:provider/provider.dart';
import 'molslice.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (context) => AppProvider())],
        child: const MolSlice());
  }
}
