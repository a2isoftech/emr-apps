import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EmrFilterDateRangePicker extends StatefulWidget {
  const EmrFilterDateRangePicker({
    required this.filterModel,
    required this.controller,
    super.key,
  });

  final EmrFilterModel<EmrDateRangeValue> filterModel;
  final EmrFilterController controller;

  @override
  State<EmrFilterDateRangePicker> createState() =>
      _EmrFilterDateRangePickerState();
}

class _EmrFilterDateRangePickerState extends State<EmrFilterDateRangePicker> {
  late EmrDateRangeValue emrDateRangeValue;

  @override
  void initState() {
    super.initState();

    final currentRange = widget.controller
        .tryGetFilter<EmrDateRangeValue>(key: widget.filterModel.key);

    emrDateRangeValue = EmrDateRangeValue(
      currentRange?.value?.startDate,
      currentRange?.value?.endDate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: EmrDatePicker.range(
              firstDate: DateTime(1990),
              lastDate: DateTime(2099),
              dateRangeStart: emrDateRangeValue.startDate,
              dateRangeEnd: emrDateRangeValue.endDate,
              onDateRangeChanged: (value) {
                setState(() {
                  emrDateRangeValue.startDate = value.$1;
                  emrDateRangeValue.endDate = value.$2;
                });
              },
            ),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: emrDateRangeValue.startDate != null &&
                    emrDateRangeValue.endDate != null
                ? () {
                    widget.controller.addOrUpdateFilter(
                      filter: widget.filterModel,
                      text: _getFilterText(),
                      value: emrDateRangeValue,
                    );
                    Navigator.pop(context);
                  }
                : null,
            child: Text(context.l10n.apply),
          ),
        ),
      ],
    );
  }

  String _getFilterText() {
    if (emrDateRangeValue.startDate != null &&
        emrDateRangeValue.endDate != null) {
      final shortDateFormatter = DateFormat.yMd(
        Localizations.localeOf(context).toLanguageTag(),
      );

      return '${widget.filterModel.name}: '
          '${shortDateFormatter.format(emrDateRangeValue.startDate!)} - '
          '${shortDateFormatter.format(emrDateRangeValue.endDate!)}';
    } else {
      throw Exception(
        'Date Range values are invalid',
      );
    }
  }
}

class EmrDateRangeValue {
  EmrDateRangeValue(this.startDate, this.endDate);
  DateTime? startDate;
  DateTime? endDate;
}
