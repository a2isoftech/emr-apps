import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class LabelValue extends StatelessWidget {
  const LabelValue({
    required this.label,
    required this.value,
    this.theme,
    super.key,
  });

  final String label;
  final String? value;
  final ThemeData? theme;

  @override
  Widget build(BuildContext context) {
    final currentTheme = theme ?? Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 4),
      child: Row(
        children: [
          SizedBox(
            child: Text(label, style: currentTheme.textTheme.labelLarge),
          ),
          const SizedBox(width: Insets.gutter),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                value ?? '',
                style: currentTheme.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                maxLines: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
