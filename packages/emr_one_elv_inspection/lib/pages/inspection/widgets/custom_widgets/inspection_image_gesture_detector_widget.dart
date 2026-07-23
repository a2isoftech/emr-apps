import 'package:emr_one_elv_inspection/pages/inspection/widgets/modular/generic/inspection_add_icon.dart';
import 'package:flutter/material.dart';

class InspectionImageGestureDetector extends StatelessWidget {
  const InspectionImageGestureDetector({
    this.onTap,
    this.boxSize = 180.0,
    super.key,
  });
  final void Function()? onTap;
  final double boxSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: boxSize,
        height: boxSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
        child: const InspectionAddIcon(),
      ),
    );
  }
}
