import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

extension LocaleExtensions on Locale {
  /// Returns a [TextInputFormatter] which allows decimal input.
  /// In the EU this supports the comma as a decimal separator.
  TextInputFormatter decimalInputFormatter({
    bool allowNegative = false,
    int maximumFractionDigits = 10,
  }) {
    final decimalPattern = NumberFormat.decimalPattern(toString());
    final inputRegex = RegExp(
      '^${allowNegative ? '-?' : ''}\\d*[${decimalPattern.symbols.DECIMAL_SEP}]?\\d{0,$maximumFractionDigits}\$',
    );

    return TextInputFormatter.withFunction(
      (oldValue, newValue) =>
          inputRegex.hasMatch(newValue.text) ? newValue : oldValue,
    );
  }
}
