import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class GBListKnobsExample extends StatelessWidget {

  List<String> options = ["option 1.", "option 2.", "option 3."];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List knobs Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _requiredListKnob(context),
            SizedBox(
              height: 20,
            ),
            _optionalListKnob(context)
          ],
        ),
      ),
    );
  }

  Widget _requiredListKnob(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Required List Knob: ",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        Text(
          context.knobs.list(label: "Required List Knob", options: options),
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }

  Widget _optionalListKnob(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Optional List Knob: ",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        Text(context.knobs.listOrNull(label: "Optional List Knob", options: options) ?? "Empty", style: TextStyle(fontSize: 20))
      ],
    );
  }
}
