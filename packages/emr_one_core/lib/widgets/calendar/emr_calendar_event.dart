import 'package:flutter/widgets.dart';

class EmrCalendarEvent<T> {
  /// A calendar event model with a title, start date, and optional data
  /// and colour.
  EmrCalendarEvent(
    this.title,
    this.start, {
    this.data,
    this.colour,
  });

  final String title;

  final DateTime start;

  final T? data;

  final Color? colour;
}
