import 'package:decimal/decimal.dart';
import 'package:decimal/intl.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

extension StringExtensions on String {
  bool get isPortal => this == AppIds.kPortalWeb;

  double? tryParseDoubleForLocale(BuildContext context) {
    final locale = Localizations.localeOf(context).toString();
    final decimalPattern = NumberFormat.decimalPattern(locale);

    try {
      return decimalPattern.parse(this).toDouble();
    } catch (e) {
      return null;
    }
  }

  Decimal? tryParseDecimalForLocale(BuildContext context) {
    final locale = Localizations.localeOf(context).toString();
    final decimalPattern = NumberFormat.decimalPattern(locale);
    final formatter = DecimalFormatter(decimalPattern);

    try {
      return formatter.parse(this);
    } catch (e) {
      return null;
    }
  }

  int hashForColourChoice() {
    return codeUnits.fold<int>(0, (prev, element) => prev + element) %
        EmrOneConstants.brandColours.length;
  }
}
