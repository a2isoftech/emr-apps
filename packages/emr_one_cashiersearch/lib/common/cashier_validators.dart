import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class CashierValidators {
  static String? validateGreaterThanZero(String? value, BuildContext context) {
    final parsedValue = num.tryParse(value ?? '');

    if (parsedValue != null && parsedValue <= 0) {
      return context.l10n.mustBeGreater(0);
    }

    return null;
  }

  static String? validateLessOrMax(
    BuildContext context,
    String? value,
    double maxNumber,
  ) {
    final parsedValue = double.tryParse(value ?? '');

    if (parsedValue != null && parsedValue > maxNumber) {
      return context.l10n.mustBeLessOrMax(maxNumber);
    }

    return null;
  }
}
