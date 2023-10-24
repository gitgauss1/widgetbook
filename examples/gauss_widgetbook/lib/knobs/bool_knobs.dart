import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class GBBoolKnobsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bool knobs Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _requiredBoolKnob(context),
            SizedBox(
              height: 20,
            ),
            _optionalBoolKnob(context)
          ],
        ),
      ),
    );
  }

  Widget _requiredBoolKnob(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Required Bool Knob: ",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        Text(
          context.knobs.boolean(label: "Required String Knob", initialValue: true).toString(),
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }

  Widget _optionalBoolKnob(BuildContext context) {
    final boolKnob = context.knobs.booleanOrNull(label: "Optional Bool Knob", initialValue: null, description: "Optional knob description");
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Optional Bool Knob: ",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        Text(boolKnob != null ? boolKnob.toString() : "Knob is not defined", style: TextStyle(fontSize: 20))
      ],
    );
  }
}
