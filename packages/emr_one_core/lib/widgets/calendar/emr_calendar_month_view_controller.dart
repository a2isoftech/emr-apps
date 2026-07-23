import 'package:emr_one_core/emr_one_core.dart';
import 'package:signals/signals.dart';

enum EmrCalendarDisplayMode {
  full,
  compact,
}

class EmrCalendarMonthViewController extends EmrCalendarViewController {
  /// A controller for use with [EmrCalendarMonthView].
  EmrCalendarMonthViewController({
    super.onEventTapped,
    this.displayMode = EmrCalendarDisplayMode.full,
    this.onMonthChanged,
    this.onDateSelected,
    this.onMoreEventsTapped,
  }) {
    effect(() {
      onDateSelected?.call(selectedDate.value);
    });
  }

  /// The display mode for the calendar. This will usually be [full] for
  /// desktop and `compact` for mobile.
  final EmrCalendarDisplayMode displayMode;

  /// Called when the month changes.
  final void Function(DateTime firstDate, DateTime lastDate)? onMonthChanged;

  /// Called when a date is selected.
  final void Function(DateTime date)? onDateSelected;

  /// Called when the more events item is selected (if not all events will fit
  /// in the date cell).
  void Function(List<EmrCalendarEvent<dynamic>> events)? onMoreEventsTapped;

  /// The currently visible month.
  Signal<DateTime> visibleMonth =
      signal(DateTime(DateTime.now().year, DateTime.now().month));

  /// The first date in the currently visible month.
  DateTime get firstDate => visibleMonth.value.dateOnly;

  /// The last date in the currently visible month.
  DateTime get lastDate =>
      visibleMonth.value.startOfNextMonth().add(const Duration(days: -1));

  /// The currently selected date.
  Signal<DateTime> selectedDate = signal(DateTime.now().dateOnly);

  /// The events to display in the calendar.
  Signal<List<EmrCalendarEvent<dynamic>>> events = signal([]);

  void previousMonth() {
    visibleMonth.value = visibleMonth.value.startOfPreviousMonth();

    onMonthChanged?.call(visibleMonth.value, lastDate);
  }

  void nextMonth() {
    visibleMonth.value = visibleMonth.value.startOfNextMonth();

    onMonthChanged?.call(visibleMonth.value, lastDate);
  }
}

extension EmrCalendarDateTimeExtensions on DateTime {
  DateTime startOfNextMonth() =>
      (month == 12) ? DateTime(year + 1) : DateTime(year, month + 1);

  DateTime startOfPreviousMonth() =>
      (month == 1) ? DateTime(year - 1, 12) : DateTime(year, month - 1);
}
