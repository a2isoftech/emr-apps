import 'package:emr_one_transport/core/constants/string_constants.dart';

class DateHelper {
  static bool isSameDate(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  static bool isDateInDayWindow(DateTime referenceDate, DateTime dateToCheck) {
    final startOfDay = DateTime(
      referenceDate.year,
      referenceDate.month,
      referenceDate.day,
    );

    final endOfDay = DateTime(
      referenceDate.year,
      referenceDate.month,
      referenceDate.day,
      23,
      59,
      59,
    );

    // Check if dateToCheck falls within this window
    return dateToCheck.isAfter(
          startOfDay.subtract(const Duration(milliseconds: 1)),
        ) &&
        dateToCheck.isBefore(endOfDay.add(const Duration(milliseconds: 1)));
  }

  static String? validateEndDate(
    DateTime? start,
    DateTime? end, {
    bool compareTime = false,
  }) {
    if (start != null && end != null) {
      final startTimeInMinutes = start.hour * 60 + start.minute;
      final endTimeInMinutes = end.hour * 60 + end.minute;

      if (end.isAfter(start)) {
        return null;
      } else {
        if (!compareTime &&
            (start.year > end.year ||
                start.month > end.month ||
                start.day > end.day)) {
          return StringConstants.endDateValidationMsg;
        } else if (start.year == end.year &&
            start.month == end.month &&
            start.day == end.day &&
            compareTime &&
            endTimeInMinutes <= startTimeInMinutes) {
          return StringConstants.endDateTimeValidationMsg;
        }
      }
    }
    return null;
  }

  static String formatDurationFromDates(DateTime? start, DateTime? end) {
    if (start == null || end == null) return StringConstants.noData;

    final duration = end.difference(start);

    if (duration.isNegative) return StringConstants.noData;

    final days = duration.inDays;
    final hours = duration.inHours.remainder(24);
    final minutes = duration.inMinutes.remainder(60);

    final parts = <String>[];

    if (days > 0) parts.add('${days}d');
    if (hours > 0) parts.add('${hours}h');
    if (minutes > 0) parts.add('${minutes}m');

    return parts.isEmpty ? '0m' : parts.join(' ');
  }

  static Duration? getDuration(DateTime? start, DateTime? end) {
    if (start == null || end == null) return null;
    return end.difference(start);
  }

  static String formatDuration(Duration duration) {
    final days = duration.inDays;
    final hours = duration.inHours.remainder(24);
    final minutes = duration.inMinutes.remainder(60);

    final parts = <String>[];

    if (days > 0) parts.add('${days}d');
    if (hours > 0) parts.add('${hours}h');
    if (minutes > 0) parts.add('${minutes}m');

    return parts.isEmpty ? '0m' : parts.join(' ');
  }

  static String? validateDateRangeMaxDays(
    {
      required int maxDays,
      DateTime? start,
      DateTime? end,
  }) {
    if (start != null && end != null) {
      final difference = end.difference(start);
      if (difference.inDays > maxDays) {
        return 'Date range cannot exceed $maxDays days';
      }
    }
    return null;
  }
}
