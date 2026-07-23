import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class YlIncrementMeasurement extends StatefulWidget {
  const YlIncrementMeasurement({
    required this.onChanged,
    required this.unitSuffix,
    required this.inputHeading,
    super.key,
    this.initialMeasurement = 0,
    this.increments = const [1, 5, 10, 100],
    this.roundOffDecimalPlaces = 1,
  });

  final String unitSuffix;
  final double? initialMeasurement;
  final List<double> increments;
  final String inputHeading;
  final void Function(double) onChanged;
  final int roundOffDecimalPlaces;

  @override
  State<YlIncrementMeasurement> createState() => _YlIncrementMeasurementState();
}

class _YlIncrementMeasurementState extends State<YlIncrementMeasurement> {
  late double _measurement;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _measurement = widget.initialMeasurement ?? 0;
    _controller = TextEditingController(text: _measurement.toString());
    _controller.addListener(_onTextEdited);
  }

  @override
  void dispose() {
    _controller.removeListener(_onTextEdited);
    _controller.dispose();
    super.dispose();
  }

  void _onTextEdited() {
    final text = _controller.text;
    if (text.isEmpty) {
      return;
    }
    final value = double.tryParse(text);
    if (value == null) {
      return;
    }
    setState(() {
      _measurement = value;

      widget.onChanged(_measurement);
    });
  }

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ButtonStyle(
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 16,
        ),
      ),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.all(Insets.gutter / 2),
      ),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
    return Column(
      children: [
        TextField(
          controller: _controller,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelText: widget.inputHeading,
            border: const OutlineInputBorder(),
          ),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: Insets.gutter),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  for (final increment in widget.increments)
                    _buildIncrementRow(buttonStyle, increment),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildIncrementRow(
    ButtonStyle buttonStyle,
    double amount,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.gutter / 2),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              style: buttonStyle,
              onPressed: _measurement >= amount
                  ? () => setState(() {
                        _measurement = roundIfNeeded(
                          _measurement - amount,
                          widget.roundOffDecimalPlaces,
                        );
                        _controller.text = _measurement.toString();
                      })
                  : null,
              child: Text(
                '- $amount ${widget.unitSuffix}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(width: Insets.gutter),
          Expanded(
            child: OutlinedButton(
              style: buttonStyle,
              onPressed: () => setState(() {
                _measurement = roundIfNeeded(
                  _measurement + amount,
                  widget.roundOffDecimalPlaces,
                );
                _controller.text = _measurement.toString();
              }),
              child: Text(
                '+ $amount ${widget.unitSuffix}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }

  double roundIfNeeded(double value, int decimalPlaces) {
    final valueStr = value.toString();
    // Normalize only if precision noise is likely present
    if (valueStr.contains('00000') || valueStr.contains('99999')) {
      return double.parse(value.toStringAsFixed(decimalPlaces));
    }
    return value;
  }
}
