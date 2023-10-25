import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class GBDateTimeKnobsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time knobs Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _requiredDateTimeKnob(context),
            SizedBox(
              height: 20,
            ),
            _optionalDateTimeKnob(context)
          ],
        ),
      ),
    );
  }

  Widget _requiredDateTimeKnob(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Required DateTime Knob: ",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        Text(
          context.knobs.dateTime(label: "Required DateTime Knob", initialValue: DateTime.now(), start: DateTime.now(), end: DateTime(DateTime.now().year + 1)).toString(),
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }

  Widget _optionalDateTimeKnob(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Optional DateTime Knob: ",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        Text(context.knobs.dateTimeOrNull(label: "Optional DateTime Knob", initialValue: null, description: "Optional knob description", start: DateTime.now(), end: DateTime(DateTime.now().year + 1)).toString() ?? "Text is null", style: TextStyle(fontSize: 20))
      ],
    );
  }
}
