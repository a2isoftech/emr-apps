import 'package:flutter/material.dart';

class LabeledValue extends StatefulWidget {
  const LabeledValue({
    required this.label,
    required this.value,
    this.addComma = true,
    super.key,
  });
  final String label;
  final String value;
  final bool addComma;

  @override
  State<LabeledValue> createState() => _LabeledValueState();
}

class _LabeledValueState extends State<LabeledValue> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.titleSmall,
        children: [
          TextSpan(
            text: '${widget.label}: ',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextSpan(
            text: '${widget.value}${widget.addComma ? ', ' : ''}',
          ),
        ],
      ),
    );
  }
}
