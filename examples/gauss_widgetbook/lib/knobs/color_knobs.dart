import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class GBColorKnobsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color knobs Example"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Set Android (android.graphics.Color) color"),
            Text("other not work"),
            Container(color: context.knobs.color(label: "Color", initialValue: Colors.white), width: 200, height: 200,),
          ],
        )
      ),
    );
  }
}
