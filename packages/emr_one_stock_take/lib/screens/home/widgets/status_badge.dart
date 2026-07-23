import 'package:flutter/material.dart';

class StatusBadge extends StatelessWidget {
  const StatusBadge({
    required this.text,
    this.color,
    super.key,
  });
  final Color? color;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Chip(
      backgroundColor: color,
      padding: EdgeInsets.zero,
      label: Text(
        text,
        style: theme.primaryTextTheme.bodyMedium,
      ),
    );
  }
}
