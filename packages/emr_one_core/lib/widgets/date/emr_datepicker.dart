import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

/// Creates a calendar date picker.
///
/// It will build a [CalendarDatePicker] if [isDateRange] is false, otherwise
/// it will build a [TabBar] with two [CalendarDatePicker] widgets.
///
/// Please refer to the documentation for [CalendarDatePicker] for more base
/// functionality.
///
/// When used with its factory constructor [EmrDatePicker.range], it will
/// display 2 [CalendarDatePicker] widgets in a [TabBar] to select a date range.
/// The user must provide a [onDateRangeChanged] callback when using the factory
/// constructor.
class EmrDatePicker extends StatefulWidget {
  const EmrDatePicker({
    required this.initialDate,
    required this.firstDate,
    required this.lastDate,
    required this.onDateChanged,
    this.onDateRangeChanged,
    super.key,
    this.isDateRange = false,
    this.dateRangeStart,
    this.dateRangeEnd,
  });

  factory EmrDatePicker.range({
    required DateTime firstDate,
    required DateTime lastDate,
    required ValueChanged<(DateTime?, DateTime?)> onDateRangeChanged,
    DateTime? dateRangeStart,
    DateTime? dateRangeEnd,
  }) {
    return EmrDatePicker(
      initialDate: null,
      firstDate: firstDate,
      lastDate: lastDate,
      onDateChanged: (_) {},
      onDateRangeChanged: onDateRangeChanged,
      isDateRange: true,
      dateRangeStart: dateRangeStart,
      dateRangeEnd: dateRangeEnd,
    );
  }

  final DateTime? initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final DateTime? dateRangeStart;
  final DateTime? dateRangeEnd;
  final ValueChanged<DateTime> onDateChanged;
  final ValueChanged<(DateTime?, DateTime?)>? onDateRangeChanged;
  final bool isDateRange;

  @override
  State<EmrDatePicker> createState() => _EmrDatePickerState();
}

class _EmrDatePickerState extends State<EmrDatePicker>
    with SingleTickerProviderStateMixin {
  DateTime? _dateRangeStart;
  DateTime? _dateRangeEnd;

  @override
  void initState() {
    super.initState();
    _dateRangeStart = widget.dateRangeStart;
    _dateRangeEnd = widget.dateRangeEnd;
  }

  @override
  Widget build(BuildContext context) {
    /// In range mode build 2 pickers and internally handle their changes
    if (widget.isDateRange) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            tabs: [
              Tab(text: context.l10n.startDate),
              Tab(text: context.l10n.endDate),
            ],
          ),
          body: TabBarView(
            children: [
              CalendarDatePicker(
                initialDate: _dateRangeStart,
                firstDate: widget.firstDate,
                lastDate: _dateRangeEnd ?? widget.lastDate,
                onDateChanged: _onDateRangeStartChanged,
              ),
              CalendarDatePicker(
                initialDate: _dateRangeEnd,
                firstDate: _dateRangeStart ?? widget.firstDate,
                lastDate: widget.lastDate,
                onDateChanged: _onDateRangeEndChanged,
              ),
            ],
          ),
        ),
      );
    }

    // In standard mode return the SDK CalendarDatePicker
    return CalendarDatePicker(
      initialDate: widget.initialDate,
      firstDate: widget.firstDate,
      lastDate: widget.lastDate,
      onDateChanged: widget.onDateChanged,
    );
  }

  void _onDateRangeStartChanged(DateTime date) {
    setState(() {
      _dateRangeStart = date;
    });
    if (widget.onDateRangeChanged != null) {
      widget.onDateRangeChanged?.call((_dateRangeStart, _dateRangeEnd));
    }
  }

  void _onDateRangeEndChanged(DateTime date) {
    setState(() {
      _dateRangeEnd = date;
    });
    if (widget.onDateRangeChanged != null) {
      widget.onDateRangeChanged?.call((_dateRangeStart, _dateRangeEnd));
    }
  }
}
