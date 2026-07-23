import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

/// Reusable statistics container widget for displaying asset counts
/// Shows a label and 
/// count in a rounded container with customizable background color
/// Used in both container and trailer tracking widgets
class AssetStatContainer extends StatelessWidget {
  const AssetStatContainer({
    required this.label,
    required this.count,
    required this.bgColor,
    super.key,
  });

  final String label;
  final int count;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.gutter,
        vertical: Insets.gutter/2,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            '$count',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
