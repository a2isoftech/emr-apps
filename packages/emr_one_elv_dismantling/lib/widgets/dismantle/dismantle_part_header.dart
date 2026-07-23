import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_dismantling/extensions/enum_part_type_extension.dart';
import 'package:emr_one_elv_dismantling/models/vehicle_part.dart';
import 'package:emr_one_elv_dismantling/widgets/dismantle/part_delete_button.dart';
import 'package:flutter/material.dart';

class DismantlePartHeader extends StatefulWidget {
  const DismantlePartHeader({
    required this.part,
    required this.onDeletePressed,
    required this.onMoveOrUndoPressed,
    super.key,
  });

  final VehiclePart part;
  final void Function() onDeletePressed;
  final void Function() onMoveOrUndoPressed;

  @override
  State<DismantlePartHeader> createState() => _DismantlePartHeaderState();
}

class _DismantlePartHeaderState extends State<DismantlePartHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.part.type.formattedName,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: Insets.gutter / 4),
            Text(
              '${context.l10n.netWeight}: ${widget.part.weight.value} '
              '${widget.part.weight.uomCode}',
            ),
          ],
        ),
        Row(
          children: [
            OutlinedButton(
              onPressed: widget.onMoveOrUndoPressed,
              child: Text(
                widget.part.partStatus == Enum$PartStatus.DISMANTLED
                    ? context.l10n.undoPart
                    : context.l10n.movePart,
              ),
            ),
            if (widget.part.partStatus != Enum$PartStatus.DISMANTLED)
              const SizedBox(width: Insets.gutter / 2),
            if (widget.part.partStatus != Enum$PartStatus.DISMANTLED &&
                widget.part.type != Enum$PartType.CAR_BODY)
              PartDeleteButton(
                partName: widget.part.type.formattedName,
                onDeletePressed: widget.onDeletePressed,
              ),
          ],
        ),
      ],
    );
  }
}
