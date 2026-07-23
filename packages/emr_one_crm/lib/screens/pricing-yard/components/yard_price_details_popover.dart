import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/models/yard_price_lists/yard_price_line.dart';
import 'package:flutter/material.dart';

class YardPriceDetailsPopover extends StatefulWidget {
  const YardPriceDetailsPopover({
    required this.grade,
    super.key,
  });

  final YardPriceLine grade;

  @override
  State<YardPriceDetailsPopover> createState() =>
      _YardPriceDetailsPopoverState();
}

class _YardPriceDetailsPopoverState extends State<YardPriceDetailsPopover> {
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder(
        horizontalInside: BorderSide(color: Colors.grey.shade300),
      ),
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(),
      },
      children: [
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.all(Insets.gutter / 2),
              child: Text(widget.grade.gradeCode),
            ),
            Padding(
              padding: const EdgeInsets.all(Insets.gutter / 2),
              child: Text(
                widget.grade.gradeComment,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
