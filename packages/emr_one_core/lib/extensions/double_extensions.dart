import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

extension DoubleExtensions on double? {
  /// Returns a formatted string for the current locale.
  /// e.g. for a value of 1234.56, en_gb would return '1234.56' and de_de would
  /// return '1234,56'.
  /// For null values, an empty string is returned.
  String toStringForLocale(
    BuildContext context, {
    int minimumFractionDigits = 0,
    int maximumFractionDigits = 10,
  }) {
    if (this == null) {
      return '';
    }

    final locale = Localizations.localeOf(context).toString();
    final decimalPattern = NumberFormat.decimalPattern(locale);
    decimalPattern.minimumFractionDigits = minimumFractionDigits;
    decimalPattern.maximumFractionDigits = maximumFractionDigits;
    decimalPattern.turnOffGrouping(); // Prevent the thousands separator.

    final text = decimalPattern.format(this);

    return text;
  }
}
