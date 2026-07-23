import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class VehicleTypeTag extends StatelessWidget {
  const VehicleTypeTag({
    required this.labelText,
    required this.labelColor,
    this.labelIcon,
    super.key,
  });

  final String labelText;
  final Color labelColor;
  final IconData? labelIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: Insets.gutter / 6,
        horizontal: Insets.gutter / 2,
      ),
      decoration: BoxDecoration(
        color: labelColor, 
        borderRadius: BorderRadius.circular(3),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (labelIcon != null)
            Icon(
              labelIcon,
              color: Theme.of(context).colorScheme.onPrimary,
              size: Theme.of(context).iconTheme.size,
            ),
          if (labelIcon != null)
            const SizedBox(width: Insets.gutter / 2),
          Text(
            labelText,
            style: Theme.of(context).primaryTextTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
