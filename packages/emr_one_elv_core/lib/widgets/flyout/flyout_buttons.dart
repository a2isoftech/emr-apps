import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class FlyoutButtons extends StatelessWidget {
  const FlyoutButtons({
    required this.onPressed,
    required this.label,
    this.onCancelPressed,
    this.backgroundColor,
    this.textColor,
    super.key,
  });
  final VoidCallback? onCancelPressed;
  final VoidCallback? onPressed;
  final String label;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (onCancelPressed != null)
          Padding(
            padding: const EdgeInsets.all(Insets.gutter),
            child: ElevatedButton(
              onPressed: onCancelPressed,
              child: Text(context.l10n.cancel),
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(backgroundColor),
              foregroundColor: WidgetStatePropertyAll(textColor),
            ),
            onPressed: onPressed,
            child: Text(label),
          ),
        ),
      ],
    );
  }
}
