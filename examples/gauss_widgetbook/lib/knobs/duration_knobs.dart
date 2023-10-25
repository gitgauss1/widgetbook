import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class GBDurationKnobsExample extends StatelessWidget {
  ValueNotifier<bool> value = ValueNotifier(false);
  ValueNotifier<bool> optionalValue = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Duration knobs Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _requiredDurationKnob(context),
            SizedBox(
              height: 20,
            ),
            _optionalDurationKnob(context)
          ],
        ),
      ),
    );
  }

  Widget _requiredDurationKnob(BuildContext context) {
    Future.delayed(context.knobs.duration(label: "Required DateTime Knob", initialValue: Duration(seconds: 3), description: "Container change color when duration finish"), () {
      value.value = true;
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Required Duration Knob: ",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        AnimatedBuilder(
          animation: value,
          builder: (context, child) {
            return value.value ? Container(width: 100, height: 100, color: Colors.black) : Container(width: 100, height: 100, color: Colors.yellow);
          },
        )
      ],
    );
  }

  Widget _optionalDurationKnob(BuildContext context) {
    final duration = context.knobs.durationOrNull(label: "Optional DateTime Knob", initialValue: Duration(seconds: 3), description: "Container change color when duration finish");
    if (duration != null) {
      Future.delayed(duration, () {
        optionalValue.value = true;
      });
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Optional Duration Knob: ",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
        ),
        duration != null ? AnimatedBuilder(
          animation: optionalValue,
          builder: (context, child) {
            return optionalValue.value ? Container(width: 100, height: 100, color: Colors.black) : Container(width: 100, height: 100, color: Colors.yellow);
          },
        ) : Text(duration.toString())
      ],
    );
  }
}
