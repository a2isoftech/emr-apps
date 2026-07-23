import 'package:decimal/decimal.dart';
import 'package:decimal/intl.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

extension DecimalExtensions on Decimal? {
  /// Returns a formatted string for the current locale.
  /// e.g. for a value of 1234.56, en_gb would return '1234.56' and de_de would
  /// return '1234,56'.
  /// For null values, an empty string is returned.
  String toStringForLocale(
    BuildContext context, {
    int maximumFractionDigits = 10,
  }) {
    if (this == null || context.mounted == false) {
      return '';
    }

    final locale = Localizations.localeOf(context).toString();
    final decimalPattern = NumberFormat.decimalPattern(locale);
    decimalPattern.maximumFractionDigits = maximumFractionDigits;
    decimalPattern.turnOffGrouping(); // Prevent the thousands separator.

    final formatter = DecimalFormatter(decimalPattern);

    final text = formatter.format(this!);

    return text;
  }
}
