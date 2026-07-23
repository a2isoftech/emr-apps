import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/emr_one_tickets.dart';
import 'package:flutter/material.dart';

class LinesPayableTotal extends StatefulWidget {
  const LinesPayableTotal({required this.model, super.key});

  final TicketDetailsFormData model;

  @override
  State<LinesPayableTotal> createState() => _LinesPayableTotalState();
}

class _LinesPayableTotalState extends State<LinesPayableTotal> {
  @override
  void initState() {
    super.initState();

    widget.model.lines.addListener(_onLinesChanged);

    for (final line in widget.model.lines.value) {
      line.payableAfterCostAndDeduction.addListener(_onLinesChanged);
    }

    _onLinesChanged();
  }

  @override
  void dispose() {
    widget.model.lines.removeListener(_onLinesChanged);

    for (final line in widget.model.lines.value) {
      line.payableAfterCostAndDeduction.removeListener(_onLinesChanged);
    }

    super.dispose();
  }

  void _onLinesChanged() {
    double newTotal = 0;

    for (final line in widget.model.lines.value) {
      newTotal += line.payableAfterCostAndDeduction.value;
    }

    setState(() => total = newTotal);
  }

  double total = 0;

  @override
  Widget build(BuildContext context) => Text(
    total.toStringForLocale(context, minimumFractionDigits: 2),
    textAlign: TextAlign.right,
    style: const TextStyle(fontWeight: FontWeight.bold),
  );
}
