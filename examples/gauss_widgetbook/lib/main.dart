import 'package:flutter/material.dart';
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
      addons: [
        DeviceFrameAddon(devices: Devices.ios.all),
        AlignmentAddon(),
      ],
      directories: [
        WidgetbookFolder(
          name: 'WidgetBook - example',
          children: [
            WidgetbookComponent(
              name: "String Knobs",
              useCases: [
                WidgetbookUseCase(
                  name: 'Example',
                  builder: (context) => GBStringKnobsExample(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: "Color Knobs",
              useCases: [
                WidgetbookUseCase(
                  name: 'Example',
                  builder: (context) => GBColorKnobsExample(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}