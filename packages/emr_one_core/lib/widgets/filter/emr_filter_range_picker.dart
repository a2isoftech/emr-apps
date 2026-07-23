import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class EmrFilterRangePicker extends StatefulWidget {
  const EmrFilterRangePicker({
    required this.filterModel,
    required this.controller,
    super.key,
    this.decimal = false,
    this.lowerLimit,
    this.upperLimit,
  });

  final EmrFilterModel<dynamic> filterModel;
  final EmrFilterController controller;
  final bool decimal;
  final double? lowerLimit;
  final double? upperLimit;

  @override
  State<EmrFilterRangePicker> createState() => _EmrFilterRangePickerState();
}

class _EmrFilterRangePickerState extends State<EmrFilterRangePicker> {
  final _formKey = GlobalKey<FormState>();
  late EmrRangeValue range;
  final TextEditingController minFieldController = TextEditingController();
  final TextEditingController maxFieldController = TextEditingController();
  NumberFormat decimalFormatter = NumberFormat();

  @override
  void initState() {
    super.initState();

    final currentRange = widget.controller
        .tryGetFilter<EmrRangeValue>(key: widget.filterModel.key);

    range = EmrRangeValue(currentRange?.value?.min, currentRange?.value?.max);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (widget.decimal) {
      decimalFormatter = _getDecimalFormatter();
    }

    minFieldController.text =
        range.min != null ? decimalFormatter.format(range.min) : '';
    maxFieldController.text =
        range.max != null ? decimalFormatter.format(range.max) : '';
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          TextFormField(
            validator: _validateMin,
            controller: minFieldController,
            keyboardType: widget.decimal
                ? TextInputType.numberWithOptions(decimal: widget.decimal)
                : TextInputType.number,
            inputFormatters: _getInputFormatters(),
            onChanged: (String value) async {
              setState(() {
                range.min = _parseValue(value);
              });
            },
            decoration: InputDecoration(
              hintText: 'Min',
              suffixIcon: IconButton(
                onPressed: () {
                  minFieldController.clear();
                  setState(() {
                    range.min = null;
                  });
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: _validateMax,
            controller: maxFieldController,
            keyboardType: widget.decimal
                ? TextInputType.numberWithOptions(decimal: widget.decimal)
                : TextInputType.number,
            inputFormatters: _getInputFormatters(),
            onChanged: (String value) async {
              setState(() {
                range.max = _parseValue(value);
              });
            },
            decoration: InputDecoration(
              hintText: 'Max',
              suffixIcon: IconButton(
                onPressed: () {
                  maxFieldController.clear();
                  setState(() {
                    range.max = null;
                  });
                },
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(
            height: Insets.gutter,
          ),
          Center(
            child: ElevatedButton(
              onPressed: (range.min != null || range.max != null) &&
                      (_formKey.currentState?.validate() ?? true)
                  ? () {
                      widget.controller.addOrUpdateFilter(
                        filter: widget.filterModel,
                        text: _getFilterText(),
                        value: range,
                      );
                      Navigator.pop(context);
                    }
                  : null,
              child: Text(context.l10n.apply),
            ),
          ),
        ],
      ),
    );
  }

  String _getFilterText() {
    if (range.min != null && range.max != null) {
      return '${widget.filterModel.key}: '
          '${decimalFormatter.format(range.min)} - '
          '${decimalFormatter.format(range.max)}';
    } else if (range.min != null && range.max == null) {
      return 'Minimum ${widget.filterModel.key}: '
          '${decimalFormatter.format(range.min)}';
    } else if (range.min == null && range.max != null) {
      return 'Maximum ${widget.filterModel.key}: '
          '${decimalFormatter.format(range.max)}';
    } else {
      throw Exception(
        'Range values are invalid',
      );
    }
  }

  List<TextInputFormatter> _getInputFormatters() {
    if (widget.decimal) {
      return <TextInputFormatter>[
        FilteringTextInputFormatter.allow(
          //To allow value upto 2 decimals
          RegExp('^\\d+\\${decimalFormatter.symbols.DECIMAL_SEP}?\\d{0,2}'),
        ),
      ];
    }
    return <TextInputFormatter>[
      FilteringTextInputFormatter.digitsOnly,
    ];
  }

  String? _validateMin(String? value) {
    String? errorMessage;
    final minValue = _parseValue(value ?? '');
    if (minValue != null) {
      errorMessage = _checkLimit(minValue);
      if (errorMessage == null && range.max != null && minValue > range.max!) {
        errorMessage = 'Min value cannot be more than Max value';
      }
    }

    return errorMessage;
  }

  String? _validateMax(String? value) {
    String? errorMessage;
    final maxValue = _parseValue(value ?? '');
    if (maxValue != null) {
      errorMessage = _checkLimit(maxValue);
      if (errorMessage == null && range.min != null && maxValue < range.min!) {
        errorMessage = 'Max value cannot be less than Min value';
      }
    }
    return errorMessage;
  }

  String? _checkLimit(double value) {
    if (widget.lowerLimit != null && value < widget.lowerLimit!) {
      return 'Value cannot be less than ${widget.lowerLimit}';
    }
    if (widget.upperLimit != null && value > widget.upperLimit!) {
      return 'Value cannot be more than ${widget.upperLimit}';
    }
    return null;
  }

  NumberFormat _getDecimalFormatter() {
    final locale = Localizations.localeOf(context).toString();
    final decimalPattern = NumberFormat.decimalPattern(locale);
    return decimalPattern;
  }

  double? _parseValue(String value) {
    if (widget.decimal && value.isNotEmpty) {
      return decimalFormatter.parse(value).toDouble();
    }
    return double.tryParse(value);
  }
}

class EmrRangeValue {
  EmrRangeValue(this.min, this.max);
  double? min;
  double? max;
}
