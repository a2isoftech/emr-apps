import 'package:emr_one_inform/models/selected_dates.dart';

extension DateUtility on DateTime {
  static DateRange getWeekDateRange(DateTime date) {
    final weekDay = date.weekday - 1;
    final numberOfDaysToSubtract = weekDay % 7;
    final numberOfDaysToAdd = weekDay == 7 ? 6 : 6 - weekDay;

    return DateRange(
      start: date.subtract(Duration(days: numberOfDaysToSubtract)),
      end: date.add(Duration(days: numberOfDaysToAdd)),
    );
  }

  static DateRange getSelectedDateRange(SelectedDates selectedDate) {
    if (selectedDate.type == SelectedDateType.date) {
      return DateRange(
        start: selectedDate.date!,
        end: selectedDate.date!.add(const Duration(days: 1)),
      );
    }

    return DateRange(
      start: selectedDate.dateRange!.start,
      end: selectedDate.dateRange!.end.add(const Duration(days: 1)),
    );
  }

  DateTime oneYearBehind() {
    var date = subtract(const Duration(days: 365));
    if (year % 4 == 0 || date.year % 4 == 0) {
      date = date.subtract(const Duration(days: 1));
    }
    return date.subtract(const Duration(days: 1));
  }

  DateTime oneYearAhead() {
    var date = add(const Duration(days: 365));
    if (year % 4 == 0 || date.year % 4 == 0) {
      date = date.add(const Duration(days: 1));
    }
    return date.add(const Duration(days: 1));
  }
}
