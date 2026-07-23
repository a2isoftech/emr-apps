import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/controllers/ticket_with_lots_view_controller.dart';
import 'package:emr_one_yard_logistics/helpers/lot_helpers.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/lot_summary_details.dart';
import 'package:emr_one_yard_logistics/widgets/new_lot_to_ticket.dart';
import 'package:emr_one_yard_logistics/widgets/widgets.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class TicketWithLotsView extends StatelessWidget {
  const TicketWithLotsView({
    required this.controller,
    super.key,
  });

  final TicketWithLotsViewController controller;

  @override
  Widget build(BuildContext context) {
    final service = Provider.of<YardLogisticsService>(context, listen: false);

    return Stack(
      children: [
        ColoredBox(
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(Insets.gutter),
                    bottomRight: Radius.circular(Insets.gutter),
                  ),
                  child: ColoredBox(
                    color: Theme.of(context).colorScheme.surface,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(Insets.gutter),
                          child: Column(
                            children: [
                              FormHeadingRow(
                                headings: [
                                  'Ticket Number',
                                  '${controller.ticketWithLots.value.ticketInfo.ticketNumber}/${controller.ticketWithLots.value.ticketInfo.yardCode}',
                                ],
                              ),
                              FormHeadingRow(
                                headings: [
                                  'Party Account',
                                  '${controller.ticketWithLots.value.ticketInfo.partyAccountNo}/${controller.ticketWithLots.value.ticketInfo.partyName}',
                                ],
                              ),
                              FormRow(
                                padding: const EdgeInsets.only(
                                  top: Insets.gutter / 2,
                                  bottom: Insets.gutter / 8,
                                ),
                                children: [
                                  Text(
                                    'Ticket Weight',
                                    style:
                                        EmrOneConstants.kTinyHeadingTextStyle,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          controller.ticketWithLots.value
                                              .ticketNetWeightMT
                                              .convertWeight(
                                                service.uomForView,
                                              )
                                              .toWeightString(),
                                          style: EmrOneConstants
                                              .kTinyHeadingTextStyle
                                              .copyWith(
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              FormRow(
                                padding: const EdgeInsets.only(
                                  bottom: Insets.gutter / 8,
                                ),
                                children: [
                                  Text(
                                    'Lot Weight',
                                    style:
                                        EmrOneConstants.kTinyHeadingTextStyle,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          controller.ticketWithLots.value
                                              .totalLotWeightMT
                                              .convertWeight(
                                                service.uomForView,
                                              )
                                              .toWeightString(),
                                          style: EmrOneConstants
                                              .kTinyHeadingTextStyle
                                              .copyWith(
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              FormRow(
                                padding: const EdgeInsets.only(bottom: 10),
                                children: [
                                  Text(
                                    'Difference Weight',
                                    style:
                                        EmrOneConstants.kTinyHeadingTextStyle,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          LotHelpers.calculateNetWeight(
                                            controller.ticketWithLots.value
                                                .ticketNetWeightMT,
                                            controller.ticketWithLots.value
                                                .totalLotWeightMT,
                                            service.uomForView,
                                          ),
                                          style: EmrOneConstants
                                              .kTinyHeadingTextStyle
                                              .copyWith(
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              ..._showContents(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Insets.gutter / 2,
                child: Container(color: Colors.black),
              ),
              _actionPanel(context, service),
            ],
          ),
        ),
        if (controller.loadingSplitTicket.watch(context)) ...[
          const Opacity(
            opacity: 0.8,
            child: ModalBarrier(
              dismissible: false,
              color: Colors.black,
            ),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  color: Colors.white,
                ),
                SizedBox(height: Insets.gutter),
                Text(
                  'Splitting Ticket...',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  List<Widget> _showContents() {
    return [
      FormHeadingRow(
        headings: [
          'Contents - ${controller.ticketWithLots.value.lotList.length}',
        ],
      ),
      SizedBox(
        height: 325,
        child: ListView.builder(
          itemCount: controller.ticketWithLots.value.lotList.length,
          itemBuilder: (context, index) {
            final lot = controller.ticketWithLots.value.lotList[index];
            return LotSummaryDetails(
              lot: lot,
            );
          },
        ),
      ),
    ];
  }

  Widget _actionPanel(
    BuildContext context,
    YardLogisticsService service,
  ) {
    return SizedBox(
      height: 160,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(Insets.gutter),
          topRight: Radius.circular(Insets.gutter),
        ),
        child: ColoredBox(
          color: Theme.of(context).colorScheme.surface,
          child: controller.isTicketSplitted() == true
              ? Container(
                  width: 390,
                  alignment: Alignment.center,
                  child: Text(
                    'This ticket has been splitted',
                    style: EmrOneConstants.kSmallestHeadingTextStyle.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                )
              : YlActionPanel(
                  actions: [
                    (
                      context.l10n.addLot,
                      Icons.add,
                      () async {
                        await showModalBottomSheet<void>(
                          context: context,
                          builder: (context) {
                            return SafeArea(
                              child: NewLotToTicket(
                                service: service,
                                ticketInfo:
                                    controller.ticketWithLots.value.ticketInfo,
                              ),
                            );
                          },
                        );
                      },
                      null,
                      null
                    ),
                    (
                      context.l10n.splitTicketsByLots,
                      Icons.splitscreen,
                      controller.isSplitTicketAllowed() == false
                          ? null
                          : () async {
                              await _splitTicketByLots(
                                context,
                                service,
                              );
                            },
                      null,
                      null
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Future<void> _splitTicketByLots(
    BuildContext context,
    YardLogisticsService service,
  ) async {
    final content =
        '${controller.showToleranceWarningForTicketWeight()}${context.l10n.areYouSureYouWantToSplitTheTicket}-${controller.ticketWithLots.value.ticketInfo.ticketNumber}/${controller.ticketWithLots.value.ticketInfo.yardCode}';

    await EmrDialog.noYes(
      context,
      titleText: context.l10n.splitTicketsByLots,
      contentText: content,
      onYes: () async {
        controller.loadingSplitTicket.value = true;

        await service
            .splitTicketByLots(
              SplitTicketByLotPurityRequest(
                ticketId: controller.ticketWithLots.value.ticketInfo.ticketId,
              ),
            )
            .then(
              (response) async => {
                if (context.mounted)
                  if (response.success)
                    {
                      EmrDialog.ok(
                        context,
                        titleText: context.l10n.splitTicketsByLots,
                        contentText: context.l10n.ticketSplitSuccessfully,
                      ),
                      controller.ticketWithLots.value = response.data!,
                    }
                  else
                    EmrDialog.ok(
                      context,
                      titleText: context.l10n.ticketSplitFailed,
                      contentText:
                          response.data?.toString() ?? response.message,
                    ),
              },
            )
            .catchError(
              (dynamic error) => {
                if (context.mounted)
                  EmrDialog.ok(
                    context,
                    titleText: context.l10n.errorSplittingTicket,
                    contentText: error.toString(),
                  ),
              },
            );

        controller.loadingSplitTicket.value = false;
      },
    );
  }
}
