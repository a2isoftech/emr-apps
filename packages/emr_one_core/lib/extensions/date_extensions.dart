import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

extension NullableDateTimeExtensions on DateTime? {
  DateTime? get dateOnly =>
      this == null ? null : DateTime(this!.year, this!.month, this!.day);
}

extension DateTimeExtensions on DateTime {
  DateTime get dateOnly => DateTime(year, month, day);
  String get toIso8601date =>
      DateTime(year, month, day).toString().substring(0, 10);

  String asyMMMd(Locale activeLocale) =>
      DateFormat.yMMMd(activeLocale.toString()).format(this);

  String asyMMdtime(Locale activeLocale, {bool toLocal = true}) {
    final value = toLocal ? this.toLocal() : this;

    return '${value.asyMMMd(activeLocale)} '
        '${DateFormat.jm(activeLocale.toString()).format(value)}';
  }

  String asTime(Locale activeLocale, {bool toLocal = true}) {
    final value = toLocal ? this.toLocal() : this;

    return DateFormat.jm(activeLocale.toString()).format(value);
  }
}
