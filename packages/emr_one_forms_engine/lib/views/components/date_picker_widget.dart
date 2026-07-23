import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum DatePickerType { date, range }

class EmrDatePickerDialog extends StatefulWidget {
  const EmrDatePickerDialog({
    required this.selectedDate,
    required this.datePickerType,
    this.minDate,
    this.maxDate,
    super.key,
  });

  final SelectedDates selectedDate;
  final DatePickerType datePickerType;
  final DateTime? minDate;
  final DateTime? maxDate;

  @override
  State<EmrDatePickerDialog> createState() => _EmrDatePickerDialog();
}

class _EmrDatePickerDialog extends State<EmrDatePickerDialog> {
  SelectedDates selectedDate = SelectedDates.date(date: DateTime.now());

  @override
  void initState() {
    super.initState();
    selectedDate = widget.selectedDate;
  }

  @override
  Widget build(BuildContext context) {
    final Widget pickerWidget = EmrDatePicker(
      isDateRange: widget.datePickerType == DatePickerType.range,
      initialDate: selectedDate.date,
      dateRangeStart: selectedDate.dateRange?.start ?? selectedDate.date,
      dateRangeEnd: selectedDate.dateRange?.end ?? selectedDate.date,
      onDateChanged: (value) {
        selectedDate.date = value;
      },
      onDateRangeChanged: (value) {
        if (value.$1 != null && value.$2 != null) {
          selectedDate.dateRange = DateRange(start: value.$1!, end: value.$2!);
        } else if (value.$1 != null) {
          selectedDate.date = value.$1;
        } else if (value.$2 != null) {
          selectedDate.date = value.$2;
        }
      },
      firstDate: widget.minDate ?? DateTime(DateTime.now().toUtc().year - 1),
      lastDate: widget.maxDate ?? DateTime(DateTime.now().toUtc().year + 1),
    );

    return Dialog(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? const Color.fromARGB(255, 51, 50, 54)
          : Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Container(
        height: 400,
        width: kIsWeb ? 400 : 300,
        color: Theme.of(context).brightness == Brightness.dark
            ? const Color.fromARGB(255, 51, 50, 54)
            : Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: pickerWidget,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text('Cancel'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      if (selectedDate.dateRange != null) {
                        context.pop(
                          SelectedDates.dateRange(
                            dateRange: DateRange(
                              start: selectedDate.dateRange!.start,
                              end: selectedDate.dateRange!.end,
                            ),
                          ),
                        );
                      } else {
                        context.pop(selectedDate);
                      }
                    },
                    child: const Text('Confirm'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SelectedDates {
  SelectedDates.date({this.date}) {
    _type = SelectedDateType.date;
    dateRange = null;
  }

  SelectedDates.dateRange({this.dateRange}) {
    _type = SelectedDateType.dateRange;
    date = null;
  }

  SelectedDateType _type = SelectedDateType.date;
  SelectedDateType get type => _type;

  late DateTime? date;
  late DateRange? dateRange;
}

class DateRange {
  DateRange({required this.start, required this.end});

  final DateTime start;
  final DateTime end;
}

enum SelectedDateType { date, dateRange }
