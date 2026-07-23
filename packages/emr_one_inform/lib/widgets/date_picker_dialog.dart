import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/widgets/date/emr_datepicker.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum DatePickerType { date, range }

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({
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
  State<DatePickerWidget> createState() => _DatePickerWidget();
}

class _DatePickerWidget extends State<DatePickerWidget> {
  SelectedDates selectedDate =
      SelectedDates.date(date: DateTime.now().dateOnly);
  late final AppConfig appConfig;
  DateTime? _maxDate;
  @override
  void initState() {
    _maxDate = widget.maxDate;

    super.initState();
    selectedDate = widget.selectedDate;
    appConfig = Provider.of<AppConfig>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    final Widget pickerWidget = EmrDatePicker(
      isDateRange: widget.datePickerType == DatePickerType.range,
      initialDate: selectedDate.date,
      onDateChanged: (value) {
        selectedDate.date = value.dateOnly;
      },
      onDateRangeChanged: (value) {
        if (value.$1 != null && value.$2 != null) {
          selectedDate.dateRange = DateRange(start: value.$1!, end: value.$2!);
        } else if (value.$1 != null) {
          selectedDate.date = value.$1;
          setState(() {
            _maxDate = value.$1!.oneYearAhead();
          });
        } else if (value.$2 != null) {
          selectedDate.date = value.$2;
        }
      },
      firstDate: widget.minDate ?? DateTime.now().oneYearBehind(),
      lastDate: _maxDate ?? DateTime.now().oneYearAhead(),
    );

    return Dialog(
      backgroundColor: FormAppColors.background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Container(
        height: 400,
        width: appConfig.isWeb ? 400 : 300,
        color: FormAppColors.background,
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
                    child: Text(context.l10n.cancel),
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
                    child: Text(context.l10n.confirm),
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
