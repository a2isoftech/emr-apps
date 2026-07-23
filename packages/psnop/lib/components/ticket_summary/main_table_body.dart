import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/table/ticket_summary/ticket_summary_row_component.dart';
import 'package:psnop/enums/ticket_summary_state.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/providers/ticket_summary_controller.dart';

class MainTableBody extends StatelessWidget {
  const MainTableBody({
    required this.headers,
    super.key,
  });

  final Iterable<MainHeaderModel> headers;

  @override
  Widget build(BuildContext context) {
    final ticketSummaryController = Provider.of<TicketSummaryController>(
      context,
    );

    switch (ticketSummaryController.state) {
      case TicketSummaryState.init:
        return SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(),
            ],
          ),
        );
      case TicketSummaryState.loading:
        return SliverList(
          delegate: SliverChildListDelegate(
            [
              LayoutBuilder(
                builder: (
                  BuildContext context,
                  BoxConstraints constraints,
                ) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(
                        Insets.gutter,
                      ),
                      child: SizedBox(
                        height: constraints.maxWidth / 16,
                        width: constraints.maxWidth / 16,
                        child: const CircularProgressIndicator(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      case TicketSummaryState.success:
        if (ticketSummaryController.model.ticketSummaries.isNotEmpty) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => LayoutBuilder(
                builder: (
                  BuildContext context,
                  BoxConstraints constraints,
                ) {
                  return TicketSummaryRowComponent(
                    constraints: constraints,
                    index: index,
                    ticketSummaries:
                        ticketSummaryController.model.ticketSummaries[index],
                    headers: headers,
                  );
                },
              ),
              childCount: ticketSummaryController.model.ticketSummaries.length,
            ),
          );
        } else {
          return SliverList(
            delegate: SliverChildListDelegate(
              [
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(Insets.gutter),
                        child: Center(
                          child: Text(
                            context.l10n.psnopTicketSummariesNotFound,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      case TicketSummaryState.error:
        return SliverList(
          delegate: SliverChildListDelegate(
            [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Center(
                    child: Text(
                      context.l10n.psnopErrorOccurredMessage,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
    }
  }
}
