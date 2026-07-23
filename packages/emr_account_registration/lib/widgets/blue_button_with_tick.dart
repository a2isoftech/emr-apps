import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class BlueButtonWithTick extends StatelessWidget {
  const BlueButtonWithTick({
    required this.text,
    required this.completed,
    required this.onPressed,
    super.key,
  });
  final String text;
  final bool completed;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        blueButton(text: text, theme: theme, onPressed: onPressed),
        const SizedBox(width: Insets.gutter),
        tickOrExclaimation(theme: theme, enabled: completed),
      ],
    );
  }
}
