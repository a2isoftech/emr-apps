import 'package:flutter/material.dart';

class EmrCalendarTheme extends ThemeExtension<EmrCalendarTheme> {
  /// The theme for [EmrCalendarMonthView] and [EmrCalendarAgendaView].
  EmrCalendarTheme({
    this.monthViewItemHeight = 20,
    this.monthViewItemRadius = 5,
    this.monthViewItemsDotPadding = 2,
    this.monthViewItemsDotSize = 6,
    this.monthViewDateTextPadding = 5,
    this.monthViewCellBorderWidth = 0.5,
    this.monthViewCellBorderWidthSelected = 2,
    this.monthViewCellMinimumHeight = 65,
    // Compact properties.
    this.monthViewCompactCellHeight = 45,
    this.monthViewCompactDateTextPadding = 4,
    this.monthViewCompactItemHeight = 12,
    // Agenda properties.
    this.agendaViewDateColumnWidth = 100,
    this.agendaViewItemHeight = 44,
  });

  final double monthViewItemHeight;

  final double monthViewItemRadius;

  final double monthViewItemsDotPadding;

  final double monthViewItemsDotSize;

  final double monthViewDateTextPadding;

  final double monthViewCellBorderWidth;

  final double monthViewCellBorderWidthSelected;

  final double monthViewCellMinimumHeight;

  final double monthViewCompactCellHeight;

  final double monthViewCompactDateTextPadding;

  final double monthViewCompactItemHeight;

  final double agendaViewDateColumnWidth;

  final double agendaViewItemHeight;

  @override
  ThemeExtension<EmrCalendarTheme> copyWith({
    double? monthViewItemHeight,
    double? monthViewItemRadius,
    double? monthViewItemsDotPadding,
    double? monthViewItemsDotSize,
    double? monthViewDateTextPadding,
    double? monthViewCellBorderWidth,
    double? monthViewCellBorderWidthSelected,
    double? monthViewCellMinimumHeight,
    double? monthViewCellCompactHeight,
    double? monthViewCompactDateTextPadding,
    double? monthViewCompactItemHeight,
    double? agendaViewDateColumnWidth,
    double? agendaViewItemHeight,
  }) =>
      EmrCalendarTheme(
        monthViewItemHeight: monthViewItemHeight ?? this.monthViewItemHeight,
        monthViewItemRadius: monthViewItemRadius ?? this.monthViewItemRadius,
        monthViewItemsDotPadding:
            monthViewItemsDotPadding ?? this.monthViewItemsDotPadding,
        monthViewItemsDotSize:
            monthViewItemsDotSize ?? this.monthViewItemsDotSize,
        monthViewDateTextPadding:
            monthViewDateTextPadding ?? this.monthViewDateTextPadding,
        monthViewCellBorderWidth:
            monthViewCellBorderWidth ?? this.monthViewCellBorderWidth,
        monthViewCellBorderWidthSelected: monthViewCellBorderWidthSelected ??
            this.monthViewCellBorderWidthSelected,
        monthViewCellMinimumHeight:
            monthViewCellMinimumHeight ?? this.monthViewCellMinimumHeight,
        monthViewCompactCellHeight:
            monthViewCellCompactHeight ?? monthViewCompactCellHeight,
        monthViewCompactDateTextPadding: monthViewCompactDateTextPadding ??
            this.monthViewCompactDateTextPadding,
        monthViewCompactItemHeight:
            monthViewCompactItemHeight ?? this.monthViewCompactItemHeight,
        agendaViewDateColumnWidth:
            agendaViewDateColumnWidth ?? this.agendaViewDateColumnWidth,
        agendaViewItemHeight: agendaViewItemHeight ?? this.agendaViewItemHeight,
      );

  @override
  ThemeExtension<EmrCalendarTheme> lerp(
    covariant ThemeExtension<EmrCalendarTheme>? other,
    double t,
  ) {
    if (other is! EmrCalendarTheme) {
      return this;
    }

    return EmrCalendarTheme(
      monthViewItemHeight: monthViewItemHeight,
      monthViewItemRadius: monthViewItemRadius,
      monthViewItemsDotPadding: monthViewItemsDotPadding,
      monthViewItemsDotSize: monthViewItemsDotSize,
      monthViewDateTextPadding: monthViewDateTextPadding,
      monthViewCellBorderWidth: monthViewCellBorderWidth,
      monthViewCellBorderWidthSelected: monthViewCellBorderWidthSelected,
      monthViewCellMinimumHeight: monthViewCellMinimumHeight,
      monthViewCompactCellHeight: monthViewCompactCellHeight,
      monthViewCompactDateTextPadding: monthViewCompactDateTextPadding,
      monthViewCompactItemHeight: monthViewCompactItemHeight,
      agendaViewDateColumnWidth: agendaViewDateColumnWidth,
      agendaViewItemHeight: agendaViewItemHeight,
    );
  }
}
