import 'package:flutter/material.dart';

ButtonStyle elvSegementedButtonStyle(BuildContext context) => ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return Theme.of(context).colorScheme.outlineVariant.withAlpha(102);
        }
        return null;
      }),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
    );

ButtonStyle elvSecondaryButtonStyle(BuildContext context) {
  return ElevatedButton.styleFrom(
    backgroundColor: Theme.of(context).colorScheme.surface,
    shadowColor: Theme.of(context).colorScheme.surface,
    foregroundColor: Theme.of(context).colorScheme.onSurface,
    surfaceTintColor: Theme.of(context).colorScheme.surface,
    side: BorderSide(
      color: Theme.of(context).colorScheme.onSurface,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32),
    ),
  );
}
