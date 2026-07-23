import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class TitledCheckbox extends StatelessWidget {
  TitledCheckbox({
    required this.value,
    required this.onChanged,
    super.key,
    this.label,
    this.textStyle,
    bool? mandatory,
  }) {
    this.mandatory = mandatory ?? false;
  }

  final String? label;
  final bool value;
  final void Function({required bool value}) onChanged;
  final TextStyle? textStyle;
  late final bool mandatory;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: Insets.gutter / 2,
            bottom: Insets.gutter / 4,
          ),
          child: Text(
            label ?? '',
            style: textStyle,
          ),
        ),
        Checkbox(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          value: value,
          onChanged: (v) => onChanged(value: v ?? false),
        ),
      ],
    );
  }
}
