import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String getCurrencySymbol(String territoryCode) {
  switch (territoryCode) {
    case TerritoryCodes.uk:
      return '£';
    case TerritoryCodes.us:
      return r'$';
    default:
      return '€';
  }
}

String formatCurrency(
  BuildContext context,
  String currencyCode,
  double value, {
  int decimalDigits = 2,
}) {
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
