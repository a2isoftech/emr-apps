import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TicketsUtility {
  static String formatCurrency(
    BuildContext context,
    String currencyCode,
    double value,
    int decimalDigits,
  ) {
    final locale = Localizations.localeOf(context);
    final formatter = NumberFormat.simpleCurrency(
      name: currencyCode,
      locale: locale.toString(),
    );
    final numberFormat = NumberFormat.currency(
      locale: locale.toString(),
      decimalDigits: decimalDigits,
      symbol: formatter.currencySymbol,
    );
    return numberFormat.format(value);
  }
}
