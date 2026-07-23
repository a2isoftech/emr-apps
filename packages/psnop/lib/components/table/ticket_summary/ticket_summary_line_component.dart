import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/ticket_summary/ticket_summary_table.dart';
import 'package:psnop/providers/ticket_summary_controller.dart';

class TicketSummaryLineComponent extends StatelessWidget {
  const TicketSummaryLineComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ticketSummaryController =
        Provider.of<TicketSummaryController>(context);
    if (ticketSummaryController.model.ticketSummaries.isNotEmpty) {
      return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            color: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopTableHeaderColour,
            alignment: Alignment.center,
            child: Column(
              children: [
                ColoredBox(
                  color: Theme.of(context)
                      .extension<EOBrandTheme>()!
                      .psnopTableSubHeaderColour!,
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      _summaryLineCell(
                        context,
                        constraints,
                        ticketSummaryController
                            .model.summaryLine.ticketNumberCount
                            .toString(),
                      ),
                      _summaryLineCell(
                        context,
                        constraints,
                        '',
                      ),
                      _summaryLineCell(
                        context,
                        constraints,
                        ticketSummaryController.model.summaryLine.lineCount
                            .toString(),
                      ),
                      _summaryLineCell(
                        context,
                        constraints,
                        ticketSummaryController.model.summaryLine.partyCount
                            .toString(),
                      ),
                      _summaryLineCell(
                        context,
                        constraints,
                        ticketSummaryController.model.summaryLine.partyCount
                            .toString(),
                      ),
                      _summaryLineCell(
                        context,
                        constraints,
                        ticketSummaryController.model.summaryLine.gradeCount
                            .toString(),
                      ),
                      _summaryLineCell(
                        context,
                        constraints,
                        ticketSummaryController.model.summaryLine.heapCount
                            .toString(),
                      ),
                      _summaryLineCell(
                        context,
                        constraints,
                        ticketSummaryController
                            .model.summaryLine.provisionalWeightSum
                            .toStringAsFixed(2),
                      ),
                      _summaryLineCell(
                        context,
                        constraints,
                        '',
                      ),
                      _summaryLineCell(
                        context,
                        constraints,
                        ticketSummaryController
                            .model.summaryLine.provisionalValueSum
                            .toStringAsFixed(2),
                      ),
                      _summaryLineCell(
                        context,
                        constraints,
                        '',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  SizedBox _summaryLineCell(
    BuildContext context,
    BoxConstraints constraints,
    String value,
  ) {
    return SizedBox(
      height: TicketSummaryTable.headerHeight,
      width: constraints.maxWidth / TicketSummaryTable.headerCount,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          border: Border.symmetric(
            vertical: BorderSide(
              width: 0.5,
            ),
            horizontal: BorderSide(
              width: 0.5,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 5,
          ),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context)
                  .extension<EOBrandTheme>()!
                  .onPsnopTableSubHeaderColour,
            ),
          ),
        ),
      ),
    );
  }
}
