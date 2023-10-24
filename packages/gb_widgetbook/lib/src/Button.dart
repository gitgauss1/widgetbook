import 'package:flutter/material.dart';

class GBButton extends StatelessWidget {
  final String title;
  final bool isEnabled;
  final Function()? onPressed;
  final ButtonStyle? style;
  final EdgeInsets? padding;
  final IconData? icon;

  const GBButton({super.key, required this.title, this.isEnabled = true, this.onPressed, this.style, this.padding, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: _buttons(),
    );
  }

  Widget _buttons() {
    return icon != null
        ? IconButton(
        style: style,
        onPressed: onPressed,
        icon: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 12),
            const SizedBox(
              width: 10,
            ),
            Text(title)
          ],
        ))
        : TextButton(onPressed: onPressed, style: style, child: Text(title));
  }
}
