import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';
import 'package:molslice/formats/drawer_mobile.dart';
// import 'package:molslice/models/about_dialogue.dart';

class MobileAppDrawer extends StatefulWidget {
  const MobileAppDrawer({super.key});

  @override
  State<MobileAppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<MobileAppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, valueProvider, child) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.35,
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: drawerList(valueProvider.totalProblemCount, context),
            ),
          ),
        );
      },
    );
  }
}

List<Widget> drawerList(int problemCount, BuildContext context) {
  List<Widget> drawerList = [];
  for (var iProblem in List.generate(problemCount, (index) => index)) {
    drawerList.add(DrawerItem(problemNum: iProblem));
  }

  // drawerList.add(const AboutPop());

  return drawerList;
}

// class AboutPop extends StatelessWidget {
//   const AboutPop({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: const Text('About'),
//       titleTextStyle: DrawerData.drawerStyle,
//       textColor: Theme.of(context).colorScheme.onBackground,
//       onTap: () {
//         showAboutDialog(context: context);
//         Navigator.pop(context);
//       },
//     );
//   }
// }

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.problemNum});
  final int problemNum;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, valueProvider2, child) {
        return ListTile(
          title: DrawerData.drawerText(problemNum + 1),
          titleTextStyle: DrawerData.drawerStyle,
          textColor: Theme.of(context).colorScheme.onBackground,
          onTap: () {
            valueProvider2.assignProblemNumber(problemNum);
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
