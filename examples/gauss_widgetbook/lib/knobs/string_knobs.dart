import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class GBStringKnobsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("String knobs Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _requiredStringKnob(context),
            SizedBox(
              height: 20,
            ),
            _optionalStringKnob(context)
          ],
        ),
      ),
    );
  }

  Widget _requiredStringKnob(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Required String Knob: ",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        Text(
          context.knobs.string(label: "Required String Knob", initialValue: "Initial Value"),
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }

  Widget _optionalStringKnob(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Optional String Knob: ",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        Text(context.knobs.stringOrNull(label: "Optional String Knob", initialValue: null, description: "Optional knob description") ?? "Text is null", style: TextStyle(fontSize: 20))
      ],
    );
  }
}
