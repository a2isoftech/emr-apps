import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_elv_dismantling/extensions/enum_part_type_extension.dart';
import 'package:emr_one_elv_dismantling/models/vehicle_part.dart';
import 'package:emr_one_elv_dismantling/styles/part_box_color.dart';
import 'package:flutter/material.dart';

class DismantlePartContainer extends StatefulWidget {
  const DismantlePartContainer({
    required this.part,
    required this.selectedPart,
    required this.onPartTap,
    super.key,
  });
  final VehiclePart part;
  final VehiclePart? selectedPart;
  final void Function(VehiclePart) onPartTap;

  @override
  State<DismantlePartContainer> createState() => _DismantlePartContainerState();
}

class _DismantlePartContainerState extends State<DismantlePartContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onPartTap(widget.part);
      },
      child: Container(
        padding: const EdgeInsets.all(Insets.gutter / 2),
        decoration: BoxDecoration(
          color: partBoxColor(
            isSelected: widget.selectedPart?.type == widget.part.type,
            dismantled: widget.part.partStatus == Enum$PartStatus.DISMANTLED,
            context: context,
          ),
          borderRadius: BorderRadius.circular(Insets.gutter / 4),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.part.partStatus == Enum$PartStatus.DISMANTLED)
              const Icon(
                Icons.check_circle,
                size: 20,
              ),
            const SizedBox(
              height: Insets.gutter / 2,
            ),
            Flexible(
              child: Text(
                widget.part.type.formattedName,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
