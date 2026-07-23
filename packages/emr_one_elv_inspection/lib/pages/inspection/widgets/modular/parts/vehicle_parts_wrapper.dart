import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/inspection_state.dart';
import 'package:flutter/material.dart';

class VehiclePartsWrapper extends StatelessWidget {
  const VehiclePartsWrapper({
    required this.child,
    required this.inspectionParts,
    this.title,
    super.key,
  });

  final Widget child;
  final String? title;
  final InspectionParts inspectionParts;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Insets.gutter / 2),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: Insets.gutter / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisSize: MainAxisSize.min,
            ),
            if ((title ?? '').isNotEmpty) ...{
              Text(
                title!,
                style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
              ),
            },
            Padding(
              padding: const EdgeInsets.only(top: Insets.gutter),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
