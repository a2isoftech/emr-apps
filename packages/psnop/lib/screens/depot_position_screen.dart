import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/mixins/action_bar_extender.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:psnop/components/depot_position/depot_position_view.dart';
import 'package:psnop/components/section_visibility_checkbox_row.dart';
import 'package:psnop/models/headers/header_titles.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/models/headers/sub_header_model.dart';
import 'package:psnop/models/headers/sub_header_titles.dart';
import 'package:psnop/models/headers/sub_header_tooltips.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/psnop.dart';
import 'package:psnop/repository/depot_position_repository.dart';
import 'package:psnop/screens/screen_utils.dart';

class DepotPositionScreen extends StatelessWidget with AppBarExtender {
  DepotPositionScreen({
    required this.mainHeaders,
    required this.apiHelper,
    super.key,
  });

  final List<MainHeaderModel> mainHeaders;
  final List<SubHeaderModel> subHeaders = [];
  final ValueNotifier<int> refreshDepotPositionTable = ValueNotifier<int>(
    0,
  );
  final PsnopApiHelper apiHelper;

  @override
  Widget build(BuildContext context) {
    if (mainHeaders.isEmpty) {
      mainHeaders.addAll([
        MainHeaderModel(
          id: 1,
          isVisible: true,
          headerTitles: HeaderTitles.blank,
        ),
        MainHeaderModel(
          id: 2,
          isVisible: true,
          headerTitles: HeaderTitles.stock,
          title: context.l10n.psnopTableHeaderStock,
        ),
        MainHeaderModel(
          id: 3,
          isVisible: true,
          headerTitles: HeaderTitles.incoming,
          title: context.l10n.psnopTableHeaderIncoming,
        ),
        MainHeaderModel(
          id: 4,
          isVisible: true,
          headerTitles: HeaderTitles.forecast,
          title: context.l10n.psnopTableHeaderForecast,
        ),
        MainHeaderModel(
          id: 5,
          isVisible: true,
          headerTitles: HeaderTitles.requests,
          title: context.l10n.psnopTableHeaderPlanning,
        ),
        MainHeaderModel(
          id: 6,
          isVisible: true,
          headerTitles: HeaderTitles.directSales,
          title: context.l10n.psnopTableHeaderDirectSales,
        ),
        MainHeaderModel(
          id: 7,
          isVisible: true,
          headerTitles: HeaderTitles.instructionsToMove,
          title: context.l10n.psnopTableHeaderInstructionsToMove,
        ),
        MainHeaderModel(
          id: 8,
          isVisible: true,
          headerTitles: HeaderTitles.routeToMarket,
          title: context.l10n.psnopTableHeaderRouteToMarket,
        ),
        MainHeaderModel(
          id: 9,
          isVisible: false,
          headerTitles: HeaderTitles.movements,
          title: context.l10n.psnopTableHeaderMovements,
        ),
        MainHeaderModel(
          id: 10,
          isVisible: true,
          headerTitles: HeaderTitles.net,
          title: context.l10n.psnopTableHeaderNet,
        ),
      ]);
    }

    if (subHeaders.isEmpty) {
      subHeaders.addAll([
        SubHeaderModel(
          id: 1,
          parentHeaderId: 1,
          subHeaderTitles: SubHeaderTitles.grade,
          title: context.l10n.psnopTableSubHeaderGrade,
        ),
        SubHeaderModel(
          id: 2,
          parentHeaderId: 1,
          subHeaderTitles: SubHeaderTitles.heap,
          title: context.l10n.psnopTableSubHeaderHeap,
        ),
        SubHeaderModel(
          id: 3,
          parentHeaderId: 2,
          subHeaderTitles: SubHeaderTitles.currentWeight,
          title: context.l10n.psnopTableSubHeaderCurrentWeight,
        ),
        SubHeaderModel(
          id: 4,
          parentHeaderId: 2,
          subHeaderTitles: SubHeaderTitles.currentRate,
          title: context.l10n.psnopTableSubHeaderCurrentRate,
        ),
        SubHeaderModel(
          id: 5,
          parentHeaderId: 2,
          subHeaderTitles: SubHeaderTitles.inwardUnpriced,
          title: context.l10n.psnopTableSubHeaderInwardUnpriced,
        ),
        SubHeaderModel(
          id: 6,
          parentHeaderId: 2,
          subHeaderTitles: SubHeaderTitles.outwardUnpriced,
          title: context.l10n.psnopTableSubHeaderOutwardUnpriced,
        ),
        SubHeaderModel(
          id: 7,
          parentHeaderId: 2,
          subHeaderTitles: SubHeaderTitles.total,
          subHeaderToolTips: SubHeaderToolTips.includingPricedAndUnpriced,
          tooltip:
              context.l10n.psnopTableSubHeaderToolTipIncludingPricedAndUnpriced,
          title: context.l10n.psnopTableSubHeaderTotal,
        ),
        SubHeaderModel(
          id: 8,
          parentHeaderId: 3,
          subHeaderTitles: SubHeaderTitles.confirmedInterDepotInward,
          title: context.l10n.psnopTableSubHeaderConfirmedInterDepotInward,
        ),
        SubHeaderModel(
          id: 9,
          parentHeaderId: 4,
          subHeaderTitles: SubHeaderTitles.nonContractPurchases,
          title: context.l10n.psnopTableSubHeaderNonContractPurchases,
        ),
        SubHeaderModel(
          id: 10,
          parentHeaderId: 4,
          subHeaderTitles: SubHeaderTitles.interDepotReceipt,
          title: context.l10n.psnopTableSubHeaderInterDepotReceipt,
        ),
        SubHeaderModel(
          id: 11,
          parentHeaderId: 4,
          subHeaderTitles: SubHeaderTitles.fixedPurchaseContracts,
          title: context.l10n.psnopTableSubHeaderFixedPurchaseContracts,
        ),
        SubHeaderModel(
          id: 12,
          parentHeaderId: 5,
          subHeaderTitles: SubHeaderTitles.requestsAndReservations,
          title: context.l10n.psnopTableSubHeaderRequestsAndReservations,
        ),
        SubHeaderModel(
          id: 13,
          parentHeaderId: 6,
          subHeaderTitles: SubHeaderTitles.totalDemand,
          title: context.l10n.psnopTableSubHeaderTotalDemand,
        ),
        SubHeaderModel(
          id: 14,
          parentHeaderId: 6,
          subHeaderTitles: SubHeaderTitles.approvedToSend,
          title: context.l10n.psnopTableSubHeaderApprovedToSend,
        ),
        SubHeaderModel(
          id: 15,
          parentHeaderId: 6,
          subHeaderTitles: SubHeaderTitles.needToRequestTransport,
          title: context.l10n.psnopTableSubHeaderNeedToRequestTransport,
        ),
        SubHeaderModel(
          id: 16,
          parentHeaderId: 6,
          subHeaderTitles: SubHeaderTitles.waitingOnTransportConfirmation,
          title: context.l10n.psnopTableSubHeaderWaitingOnTransportConfirmation,
        ),
        SubHeaderModel(
          id: 17,
          parentHeaderId: 6,
          subHeaderTitles: SubHeaderTitles.transportBooked,
          title: context.l10n.psnopTableSubHeaderTransportBooked,
        ),
        SubHeaderModel(
          id: 18,
          parentHeaderId: 7,
          subHeaderTitles: SubHeaderTitles.totalDemand,
          title: context.l10n.psnopTableSubHeaderTotalDemand,
        ),
        SubHeaderModel(
          id: 19,
          parentHeaderId: 7,
          subHeaderTitles: SubHeaderTitles.approvedToSend,
          title: context.l10n.psnopTableSubHeaderApprovedToSend,
        ),
        SubHeaderModel(
          id: 20,
          parentHeaderId: 7,
          subHeaderTitles: SubHeaderTitles.needToRequestTransport,
          title: context.l10n.psnopTableSubHeaderNeedToRequestTransport,
        ),
        SubHeaderModel(
          id: 21,
          parentHeaderId: 7,
          subHeaderTitles: SubHeaderTitles.waitingOnTruckConfirmation,
          title: context.l10n.psnopTableSubHeaderWaitingOnTruckConfirmation,
        ),
        SubHeaderModel(
          id: 22,
          parentHeaderId: 7,
          subHeaderTitles: SubHeaderTitles.transportBooked,
          title: context.l10n.psnopTableSubHeaderTransportBooked,
        ),
        SubHeaderModel(
          id: 23,
          parentHeaderId: 8,
          subHeaderTitles: SubHeaderTitles.balance,
          title: context.l10n.psnopTableSubHeaderBalance,
        ),
        SubHeaderModel(
          id: 25,
          parentHeaderId: 8,
          subHeaderTitles: SubHeaderTitles.needToRequestTransport,
          title: context.l10n.psnopTableSubHeaderNeedToRequestTransport,
        ),
        SubHeaderModel(
          id: 26,
          parentHeaderId: 8,
          subHeaderTitles: SubHeaderTitles.waitingOnTransportConfirmation,
          title: context.l10n.psnopTableSubHeaderWaitingOnTransportConfirmation,
        ),
        SubHeaderModel(
          id: 27,
          parentHeaderId: 8,
          subHeaderTitles: SubHeaderTitles.transportBooked,
          title: context.l10n.psnopTableSubHeaderTransportBooked,
        ),
        SubHeaderModel(
          id: 28,
          parentHeaderId: 9,
          subHeaderTitles: SubHeaderTitles.totalDemand,
          title: context.l10n.psnopTableSubHeaderTotalDemand,
        ),
        SubHeaderModel(
          id: 29,
          parentHeaderId: 9,
          subHeaderTitles: SubHeaderTitles.approvedToSend,
          title: context.l10n.psnopTableSubHeaderApprovedToSend,
        ),
        SubHeaderModel(
          id: 30,
          parentHeaderId: 9,
          subHeaderTitles: SubHeaderTitles.needToRequestTransport,
          title: context.l10n.psnopTableSubHeaderNeedToRequestTransport,
        ),
        SubHeaderModel(
          id: 31,
          parentHeaderId: 9,
          subHeaderTitles: SubHeaderTitles.waitingOnTransportConfirmation,
          title: context.l10n.psnopTableSubHeaderWaitingOnTransportConfirmation,
        ),
        SubHeaderModel(
          id: 32,
          parentHeaderId: 9,
          subHeaderTitles: SubHeaderTitles.transportBooked,
          title: context.l10n.psnopTableSubHeaderTransportBooked,
        ),
        SubHeaderModel(
          id: 33,
          parentHeaderId: 10,
          subHeaderTitles: SubHeaderTitles.projectedStockOnTheGround,
          title: context.l10n.psnopTableSubHeaderProjectedStockOnTheGround,
        ),
      ]);
    }

    //The screen is built here
    return DepotPositionView(
      mainHeaders: mainHeaders,
      refreshDepotPositionTable: refreshDepotPositionTable,
      subHeaders: subHeaders,
      apiHelper: apiHelper,
    );
  }

  @override
  List<Widget> getActions(BuildContext context) {
    final depotPositionController = PsnopRouteRegistry.depotPositionController;

    final depotPositionRepository =
        DepotPositionRepository(apiHelper: apiHelper);

    final formatter = DateFormat('yyyyMMdd-Hms');

    return ScreenUtils.psnopMenuActions(
      context: context,
      depotPositionMenuEntries: [
        ScreenUtils.psnopMenuEntry(
          context: context,
          text: Text(
            context.l10n.psnopMainMenuDepotPosition,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        ScreenUtils.psnopMenuEntry(
          context: context,
          enabled: depotPositionController.searchModel != null,
          function: () async {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(context.l10n.psnopExportRequested),
              ),
            );
            final bytes =
                await depotPositionRepository.exportDepotPositionsToPdf(
              depotPositionController.searchModel!,
            );
            if (bytes != null) {
              await FileSaver.instance.saveFile(
                name: '${formatter.format(DateTime.now())}-DepotPosition',
                bytes: bytes,
                fileExtension: 'pdf',
                mimeType: MimeType.pdf,
              );
            }
          },
          text: Text(
            context.l10n.psnopMainMenuExportPdf,
          ),
        ),
        ScreenUtils.psnopMenuEntry(
          context: context,
          enabled: depotPositionController.searchModel != null,
          function: () async {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(context.l10n.psnopExportRequested),
              ),
            );
            final bytes =
                await depotPositionRepository.exportDepotPositionsToExcel(
              depotPositionController.searchModel!,
            );
            if (bytes != null) {
              await FileSaver.instance.saveFile(
                name: '${formatter.format(DateTime.now())}-DepotPosition',
                bytes: bytes,
                fileExtension: 'xlsx',
                mimeType: MimeType.microsoftExcel,
              );
            }
          },
          text: Text(
            context.l10n.psnopMainMenuExportExcel,
          ),
        ),
        ScreenUtils.psnopMenuEntry(
          context: context,
          autoPop: false,
          function: () {
            showDialog<void>(
              context: context,
              builder: (BuildContext builderContext) {
                return AlertDialog(
                  actions: [
                    ElevatedButton(
                      autofocus: true,
                      onPressed: () {
                        refreshDepotPositionTable.value++;
                        var count = 0;
                        Navigator.popUntil(context, (route) {
                          return count++ == 2;
                        });
                      },
                      child: Text(context.l10n.ok),
                    ),
                  ],
                  content: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children:
                            _showHideDepotPositionColumnWidgetsMenuItems(),
                      ),
                    ),
                  ),
                  scrollable: true,
                  title: Center(
                    child: Text(
                      context.l10n.psnopMainMenuDepotPositionShowHideSections,
                    ),
                  ),
                );
              },
            );
          },
          text: Text(
            context.l10n.psnopMainMenuDepotPositionShowHideSections,
          ),
        ),
      ],
    );
  }

  List<Widget> _showHideDepotPositionColumnWidgetsMenuItems() {
    final directSales = mainHeaders
        .where(
          (element) => element.headerTitles == HeaderTitles.directSales,
        )
        .first;
    final instructionsToMove = mainHeaders
        .where(
          (element) => element.headerTitles == HeaderTitles.instructionsToMove,
        )
        .first;
    final movements = mainHeaders
        .where(
          (element) => element.headerTitles == HeaderTitles.movements,
        )
        .first;
    final routeToMarket = mainHeaders
        .where(
          (element) => element.headerTitles == HeaderTitles.routeToMarket,
        )
        .first;

    final directSalesNotifier = ValueNotifier<bool>(
      directSales.isVisible,
    );
    final instructionsToMoveNotifier = ValueNotifier<bool>(
      instructionsToMove.isVisible,
    );
    final movementsNotifier = ValueNotifier<bool>(
      movements.isVisible,
    );
    final routeToMarketNotifier = ValueNotifier<bool>(
      routeToMarket.isVisible,
    );

    final widgets = <Widget>[];

    for (var i = 1; i < mainHeaders.length; i++) {
      //direct sales
      if (mainHeaders[i] == directSales) {
        widgets.add(
          SectionVisibilityCheckboxRow(
            mainHeader: mainHeaders[i],
            movementsHeader: movements,
            directSalesNotifier: directSalesNotifier,
            movementsNotifier: movementsNotifier,
          ),
        );
      }
      //instructions to move
      else if (mainHeaders[i] == instructionsToMove) {
        widgets.add(
          SectionVisibilityCheckboxRow(
            mainHeader: mainHeaders[i],
            movementsHeader: movements,
            instructionsToMoveNotifier: instructionsToMoveNotifier,
            movementsNotifier: movementsNotifier,
          ),
        );
      }
      //movements
      else if (mainHeaders[i] == movements) {
        widgets.add(
          SectionVisibilityCheckboxRow(
            mainHeader: mainHeaders[i],
            directSalesHeader: directSales,
            instructionsToMoveHeader: instructionsToMove,
            routeToMarketHeader: routeToMarket,
            directSalesNotifier: directSalesNotifier,
            instructionsToMoveNotifier: instructionsToMoveNotifier,
            routeToMarketNotifier: routeToMarketNotifier,
            movementsNotifier: movementsNotifier,
          ),
        );
      } //route to market
      else if (mainHeaders[i] == routeToMarket) {
        widgets.add(
          SectionVisibilityCheckboxRow(
            mainHeader: mainHeaders[i],
            movementsHeader: movements,
            routeToMarketNotifier: routeToMarketNotifier,
            movementsNotifier: movementsNotifier,
          ),
        );
      } else {
        widgets.add(
          SectionVisibilityCheckboxRow(
            mainHeader: mainHeaders[i],
          ),
        );
      }
    }

    return widgets;
  }
}
