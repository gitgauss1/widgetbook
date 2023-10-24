import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class GBDoubleKnobsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Double knobs Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _requiredDoubleSliderKnob(context),
            SizedBox(
              height: 20,
            ),
            _requiredDoubleInputKnob(context),
            SizedBox(
              height: 20,
            ),
            _optionalDoubleSliderKnob(context),
            SizedBox(
              height: 20,
            ),
            _optionalDoubleInputKnob(context),
          ],
        ),
      ),
    );
  }

  Widget _requiredDoubleSliderKnob(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Required Double Slider Knob: ",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        Text(
          context.knobs.double.slider(label: "Knob double slider", description: "Knob Description", initialValue: 0.0, min: 0, max: 10).toString(),
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }

  Widget _requiredDoubleInputKnob(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Required Double Input Knob: ",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        Text(
          context.knobs.double.input(label: "Knob double input", initialValue: 0.0, description: "Knob input description").toString(),
          style: TextStyle(fontSize: 20)
        )
      ],
    );
  }

  Widget _optionalDoubleSliderKnob(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Optional Double Slider Knob: ",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        Text(
          context.knobs.doubleOrNull.slider(label: "Knob optional double slider", description: "Knob Description", initialValue: null, min: 0, max: 10).toString(),
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }

  Widget _optionalDoubleInputKnob(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Optional Double Input Knob: ",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        Text(
            context.knobs.doubleOrNull.input(label: "Knob optional double input", initialValue: null, description: "Knob input description").toString(),
            style: TextStyle(fontSize: 20)
        )
      ],
    );
  }
}
