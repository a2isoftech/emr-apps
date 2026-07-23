import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:psnop/components/table/cell_widget.dart';
import 'package:psnop/components/table/table_constraints.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/models/ticket_summary/ticket_summary.dart';

class TicketSummaryRowComponent extends StatefulWidget {
  const TicketSummaryRowComponent({
    required this.constraints,
    required this.index,
    required this.ticketSummaries,
    required this.headers,
    super.key,
  });

  final BoxConstraints constraints;
  final TicketSummary ticketSummaries;
  final int index;
  final Iterable<MainHeaderModel> headers;

  @override
  State<TicketSummaryRowComponent> createState() =>
      _TicketSummaryRowComponentState();
}

class _TicketSummaryRowComponentState extends State<TicketSummaryRowComponent> {
  @override
  Widget build(BuildContext context) {
    final isEven = widget.index.isEven;
    final width = widget.constraints.maxWidth / widget.headers.length;

    final cellTextStyle = TextStyle(
      color: isEven
          ? Theme.of(context)
              .extension<EOBrandTheme>()!
              .onPsnopTableTicketSummaryEvenColour
          : Theme.of(context)
              .extension<EOBrandTheme>()!
              .onPsnopTableTicketSummaryOddColour,
    );

    return Container(
      height: TableConstraints.rowHeight,
      color: isEven
          ? widget.ticketSummaries.selected
              ? Color.lerp(
                  Theme.of(context)
                      .extension<EOBrandTheme>()!
                      .psnopTableTicketSummarySelectedRowColour,
                  Theme.of(context)
                      .extension<EOBrandTheme>()!
                      .psnopTableTicketSummaryEvenColour,
                  0.5,
                )
              : Theme.of(context)
                  .extension<EOBrandTheme>()!
                  .psnopTableTicketSummaryEvenColour
          : widget.ticketSummaries.selected
              ? Color.lerp(
                  Theme.of(context)
                      .extension<EOBrandTheme>()!
                      .psnopTableTicketSummarySelectedRowColour,
                  Theme.of(context)
                      .extension<EOBrandTheme>()!
                      .psnopTableTicketSummaryOddColour,
                  0.5,
                )
              : Theme.of(context)
                  .extension<EOBrandTheme>()!
                  .psnopTableTicketSummaryOddColour,
      child: InkWell(
        mouseCursor: WidgetStateMouseCursor.clickable,
        onTap: () {
          setState(() {
            widget.ticketSummaries.selected = !widget.ticketSummaries.selected;
          });
        },
        child: Row(
          children: [
            CellWidget(
              column: 1,
              containerIfZero: true,
              context: context,
              headers: widget.headers,
              message: widget.ticketSummaries.ticketNumber.toString(),
              style: cellTextStyle,
              width: width,
            ),
            CellWidget(
              column: 2,
              containerIfZero: true,
              context: context,
              headers: widget.headers,
              message: widget.ticketSummaries.direction,
              style: cellTextStyle,
              width: width,
            ),
            CellWidget(
              column: 3,
              containerIfZero: true,
              context: context,
              headers: widget.headers,
              message: widget.ticketSummaries.line.toString(),
              style: cellTextStyle,
              width: width,
            ),
            CellWidget(
              column: 4,
              containerIfZero: true,
              context: context,
              headers: widget.headers,
              message: widget.ticketSummaries.party,
              style: cellTextStyle,
              width: width,
            ),
            CellWidget(
              column: 5,
              containerIfZero: true,
              context: context,
              headers: widget.headers,
              message: widget.ticketSummaries.partyName,
              style: cellTextStyle,
              width: width,
            ),
            CellWidget(
              column: 6,
              containerIfZero: true,
              context: context,
              headers: widget.headers,
              message: widget.ticketSummaries.grade,
              style: cellTextStyle,
              width: width,
            ),
            CellWidget(
              column: 7,
              containerIfZero: true,
              context: context,
              headers: widget.headers,
              message: widget.ticketSummaries.heap.toString(),
              style: cellTextStyle,
              width: width,
            ),
            CellWidget(
              column: 8,
              containerIfZero: true,
              context: context,
              headers: widget.headers,
              message:
                  // ignore: lines_longer_than_80_chars
                  '${widget.ticketSummaries.provisionalWeight.toStringAsFixed(2)} ${widget.ticketSummaries.provisionalWeightUnit}',
              style: cellTextStyle,
              width: width,
            ),
            CellWidget(
              column: 9,
              containerIfZero: true,
              context: context,
              headers: widget.headers,
              message: widget.ticketSummaries.provisionalRate != null
                  ? widget.ticketSummaries.provisionalRate!.toStringAsFixed(2)
                  : '',
              style: cellTextStyle,
              width: width,
            ),
            CellWidget(
              column: 10,
              containerIfZero: true,
              context: context,
              headers: widget.headers,
              message: widget.ticketSummaries.provisionalValue != null
                  ? widget.ticketSummaries.provisionalValue!.toStringAsFixed(2)
                  : '',
              style: cellTextStyle,
              width: width,
            ),
            CellWidget(
              column: 11,
              containerIfZero: true,
              context: context,
              headers: widget.headers,
              message: widget.ticketSummaries.priceType,
              style: cellTextStyle,
              width: width,
            ),
          ],
        ),
      ),
    );
  }
}
