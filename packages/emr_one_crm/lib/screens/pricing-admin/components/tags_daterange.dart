import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum StartDateBehaviour {
  noDefault,
  supplied,
  today,
}

enum EndDateBehaviour {
  required,
  allowNull,
}

class PvTagDateRangePicker extends StatefulWidget {
  const PvTagDateRangePicker({
    required this.formKey,
    required this.onDatesSelected,
    required this.startDateBehaviour,
    required this.endDateBehaviour,
    super.key,
    this.locale = const Locale('en', 'US'),
    this.minStartDate,
  }) : assert(
          startDateBehaviour != StartDateBehaviour.supplied ||
              minStartDate != null,
          "If you',re using StartDateBehaviour.supplied, "
          ' you must supply a minStartDate',
        );

  final GlobalKey<FormState> formKey;
  final void Function(DateTime startDate, DateTime? endDate) onDatesSelected;
  final StartDateBehaviour startDateBehaviour;
  final EndDateBehaviour endDateBehaviour;
  final Locale locale;
  final DateTime? minStartDate;

  @override
  State<PvTagDateRangePicker> createState() => _PvTagDateRangePickerState();
}

class _PvTagDateRangePickerState extends State<PvTagDateRangePicker> {
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();

  late DateTime _minDate;

  DateTime? _startDate;
  DateTime? _endDate;

  @override
  void initState() {
    super.initState();

    if (widget.startDateBehaviour == StartDateBehaviour.today) {
      _startDate = DateTime.now();
      _minDate = _startDate!;
    } else if (widget.startDateBehaviour == StartDateBehaviour.supplied) {
      _startDate = DateTime.now();
      _minDate = widget.minStartDate!;
    } else {
      _minDate = DateTime.now();
    }

    _startDateController.text =
        DateFormat.yMd(widget.locale.toString()).format(_startDate!);
  }

  @override
  Widget build(BuildContext context) {
    return FormField(
      validator: (value) {
        var validationMessage = context.l10n.pleaseSelectAStartAndEndDate;
        if (widget.endDateBehaviour == EndDateBehaviour.allowNull) {
          validationMessage = context.l10n.pleaseSelectAStartAndOptionalEndDate;
        }

        if (_startDate == null ||
            (_endDate == null &&
                widget.endDateBehaviour == EndDateBehaviour.required)) {
          return validationMessage;
        }
        return null;
      },
      builder: (field) {
        return Column(
          children: [
            _controls(context),
            if (field.hasError)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
                child: Text(
                  field.errorText ?? context.l10n.error,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _controls(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Start date:',
                style: EmrOneConstants.kSmallHeadingTextStyle,
              ),
              TextFormField(
                controller: _startDateController,
                readOnly: true,
                onTap: _updateStartDate,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.calendar_month),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: Insets.gutter),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'End date:',
                style: EmrOneConstants.kSmallHeadingTextStyle,
              ),
              TextFormField(
                controller: _endDateController,
                readOnly: true,
                onTap: _updateEndDate,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.calendar_month),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _updateStartDate() async {
    final result = await showDatePicker(
      context: context,
      initialDate: _startDate ?? DateTime.now(),
      firstDate: _minDate,
      lastDate: _endDate ?? DateTime.now().add(const Duration(days: 365)),
    );

    if (result == null) {
      return;
    }

    widget.formKey.currentState?.reset();

    _startDate = result;

    updateDates();
  }

  Future<void> _updateEndDate() async {
    final result = await showDatePicker(
      context: context,
      initialDate: _startDate ?? _endDate ?? DateTime.now(),
      firstDate: _startDate ?? _minDate,
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (result == null) {
      return;
    }

    widget.formKey.currentState?.reset();

    _endDate = DateTime(result.year, result.month, result.day, 23, 59, 59);

    updateDates();
  }

  void updateDates() {
    if (_startDate != null &&
        (_endDate != null ||
            widget.endDateBehaviour == EndDateBehaviour.allowNull)) {
      widget.onDatesSelected(_startDate!, _endDate);

      _startDateController.text =
          DateFormat.yMd(widget.locale.toString()).format(_startDate!);

      _endDateController.text = _endDate != null
          ? DateFormat.yMd(widget.locale.toString()).format(_endDate!)
          : '';
    }
  }
}
