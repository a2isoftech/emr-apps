import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class InspectionBorderWidget extends StatelessWidget {
  const InspectionBorderWidget({
    required this.child,
    this.width = 2,
    this.isSelected = false,
    super.key,
  });
  final Widget child;
  final double width;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(Insets.gutter / 4),
        side: BorderSide(
          color: isSelected
              ? EmrColours.primaryGreen
              : Theme.of(context).colorScheme.primary,
        ),
      ),
      child: child,
    );
  }
}
