import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension LocalDateExtension on DateTime? {
  String getLocalDate(BuildContext context) {
    if (this == null) {
      return '';
    }
    final locale = Localizations.localeOf(context);
    return DateFormat.yMd(locale.toString()).format(this ?? DateTime.now());
  }
}
