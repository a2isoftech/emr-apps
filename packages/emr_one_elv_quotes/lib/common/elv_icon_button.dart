import 'package:flutter/material.dart';

class ElvIconButton extends StatelessWidget {
  const ElvIconButton({
    required this.onPressed,
    required this.child,
    this.style,
    this.enabled = true,
    this.disabledStyle,
    super.key,
  });

  factory ElvIconButton.icon({
    required IconData child,
    required VoidCallback onPressed,
    ButtonStyle? style,
    bool enabled = true,
  }) {
    return ElvIconButton(
      onPressed: onPressed,
      style: style,
      enabled: enabled,
      child: Icon(child),
    );
  }
  final VoidCallback onPressed;
  final Icon child;
  final ButtonStyle? style;
  final ButtonStyle? disabledStyle;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final disabledButtonStyle =
        disabledStyle ?? (style == null ? genericButtonStyle(context) : style!);

    return OutlinedButton(
      style:
          enabled ? style ?? genericButtonStyle(context) : disabledButtonStyle,
      onPressed: enabled ? onPressed : null,
      child: child,
    );
  }
}

ButtonStyle genericButtonStyle(BuildContext context) =>
    OutlinedButton.styleFrom(
      backgroundColor: Theme.of(context).disabledColor,
      disabledForegroundColor: Theme.of(context).disabledColor.withAlpha(128),
      side: BorderSide(
        color: Theme.of(context).dividerColor,
      ),
    );
