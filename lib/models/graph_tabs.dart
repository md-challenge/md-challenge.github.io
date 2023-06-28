import 'package:flutter/material.dart';
import 'package:molslice/app_provider.dart';
import 'package:provider/provider.dart';
import '../data/problem_data.dart';

class GraphTabs extends StatefulWidget {
  const GraphTabs({super.key});

  @override
  State<GraphTabs> createState() => _GraphTabsState();
}

class _GraphTabsState extends State<GraphTabs> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (context, valueProviderTab, child) {
      return SizedBox(
        height: 500,
        width: MediaQuery.of(context).size.width,
        child: makeTabs(context, valueProviderTab.problemNumber),
      );
    });
  }
}

Widget makeTabs(BuildContext context, int problemNumber) {
  return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: const TabBar(
                indicatorColor: Colors.black,
                labelColor: Color.fromARGB(255, 0, 0, 0),
                tabs: [
                  Tab(
                    text: 'Speedup',
                    icon: Icon(Icons.speed_sharp),
                  ),
                  Tab(
                    text: 'Energy',
                    icon: Icon(Icons.energy_savings_leaf_sharp),
                  ),
                  Tab(
                    text: 'Carbon Footprint',
                    icon: Icon(Icons.co2_sharp),
                  )
                ]),
          ),
          SizedBox(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: TabBarView(children: [
              Image.network(dataList[problemNumber].speedupImageURL),
              Image.network(dataList[problemNumber].energyImageURL),
              Image.network(dataList[problemNumber].carbonImageURL),
            ]),
          )
        ],
      ));
}
