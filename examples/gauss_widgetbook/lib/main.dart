import 'package:flutter/material.dart';
import 'package:gauss_widgetbook/knobs/bool_knobs.dart';
import 'package:gauss_widgetbook/knobs/double_knobs.dart';
import 'package:widgetbook/widgetbook.dart';

import 'knobs/color_knobs.dart';
import 'knobs/string_knobs.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: [
        WidgetbookFolder(
          name: 'WidgetBook - example',
          children: [
            WidgetbookComponent(
              name: "Knobs - example",
              useCases: [
                WidgetbookUseCase(
                  name: 'String',
                  builder: (context) => GBStringKnobsExample(),
                ),
                WidgetbookUseCase(
                  name: 'Color',
                  builder: (context) => GBColorKnobsExample(),
                ),
                WidgetbookUseCase(
                  name: 'Bool',
                  builder: (context) => GBBoolKnobsExample(),
                ),
                WidgetbookUseCase(
                  name: 'Double',
                  builder: (context) => GBDoubleKnobsExample(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}