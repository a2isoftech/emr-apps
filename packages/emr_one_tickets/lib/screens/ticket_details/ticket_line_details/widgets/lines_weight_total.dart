import 'package:collection/collection.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class LinesWeightTotal extends StatefulWidget {
  const LinesWeightTotal({required this.model, super.key});

  final TicketDetailsFormData model;

  @override
  State<LinesWeightTotal> createState() => _LinesWeightTotalState();
}

class _LinesWeightTotalState extends State<LinesWeightTotal> {
  @override
  void initState() {
    super.initState();

    widget.model.lines.addListener(_onLinesChanged);

    for (final line in widget.model.lines.value) {
      line.netWeight.addListener(_onLinesChanged);
    }

    _onLinesChanged();
  }

  @override
  void dispose() {
    widget.model.lines.removeListener(_onLinesChanged);

    for (final line in widget.model.lines.value) {
      line.netWeight.removeListener(_onLinesChanged);
    }

    super.dispose();
  }

  void _onLinesChanged() {
    // The total weight is displayed in the UOM of the first line's net weight,
    // so we convert all weights to that UOM as we add them together.
    final newTotal = UomValue.weight(
      0,
      widget.model.lines.value.isEmpty
          ? Uom.mt
          : widget.model.lines.value
                    .firstWhereOrNull((line) => line.netWeight.value != null)
                    ?.netWeight
                    .value!
                    .uom ??
                Uom.mt,
    );

    for (final line in widget.model.lines.value) {
      if (line.netWeight.value == null) {
        continue;
      }

      newTotal.value += line.netWeight.value!.convertWeight(newTotal.uom).value;
    }

    setState(() => total = newTotal);
  }

  UomValue total = UomValue.weight(0, Uom.mt);

  @override
  Widget build(BuildContext context) => Text(
    total.toString(),
    textAlign: .right,
    style: const TextStyle(fontWeight: FontWeight.bold),
  );
}
