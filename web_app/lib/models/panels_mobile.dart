import 'package:flutter/material.dart';
import 'package:molslice/models/footer_mobile.dart';
import 'system_mobile.dart';
import 'q_n_a_mobile.dart';

class MobilePanels extends StatelessWidget {
  const MobilePanels({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      // height: MediaQuery.of(context).size.height * 0.85,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[System(), QnA()],
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
