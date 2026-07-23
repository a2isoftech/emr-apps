import 'package:flutter/material.dart';

class AccountRegistrationButtonStyles {
  static ButtonStyle disabled(ThemeData theme) {
    return FilledButton.styleFrom(
      backgroundColor: theme.disabledColor,
      foregroundColor: theme.colorScheme.onSecondary,
    );
  }

  static ButtonStyle secondaryCta(ThemeData theme) {
    return FilledButton.styleFrom(
      backgroundColor: theme.colorScheme.primary,
      foregroundColor: theme.colorScheme.onPrimary,
    );
  }
}
