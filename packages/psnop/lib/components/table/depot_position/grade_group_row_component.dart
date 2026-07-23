import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/table/cell_widget.dart';
import 'package:psnop/components/table/depot_position/expandable_grade_row_component.dart';
import 'package:psnop/components/table/depot_position/sales_grade_row_component.dart';
import 'package:psnop/components/table/table_constraints.dart';
import 'package:psnop/enums/info_text_type.dart';
import 'package:psnop/enums/movement_type.dart';
import 'package:psnop/models/depot_position_table/depot_position_grade_grouped_model.dart';
import 'package:psnop/models/depot_position_table/depot_position_model.dart';
import 'package:psnop/models/depot_position_table/grade_grouped_total_model.dart';
import 'package:psnop/models/depot_position_table/sales_grade_model.dart';
import 'package:psnop/models/headers/main_header_model.dart';
import 'package:psnop/models/headers/sub_header_model.dart';
import 'package:psnop/networking/uri_utils.dart';
import 'package:psnop/providers/depot_position_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class GradeGroupRowComponent extends StatelessWidget {
  const GradeGroupRowComponent({
    required this.gradeGroupSummary,
    required this.depotNo,
    required this.subHeaders,
    required this.headers,
    super.key,
  });

  final DepotPositionGradeGroupedModel gradeGroupSummary;
  final String depotNo;
  final Iterable<SubHeaderModel> subHeaders;
  final Iterable<MainHeaderModel> headers;

  @override
  Widget build(BuildContext context) {
    final appConfig = Provider.of<AppConfig>(context);
    final depotPositionController = Provider.of<DepotPositionController>(
      context,
    );

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          children: [
            _getGradeGroupTotal(
              appConfig: appConfig,
              constraints: constraints,
              context: context,
              total: gradeGroupSummary.gradeGroupedTotal,
              controller: depotPositionController,
            ),
            _getSalesGradeSection(
              salesGrades: gradeGroupSummary.salesGrade,
            ),
            _getGradesSection(
              grades: gradeGroupSummary.depotPosition,
            ),
          ],
        );
      },
    );
  }

//TODO: get the deep links updated
  Container _getGradeGroupTotal({
    required AppConfig appConfig,
    required BoxConstraints constraints,
    required BuildContext context,
    required GradeGroupedTotalModel total,
    required DepotPositionController controller,
  }) {
    final width = constraints.maxWidth / subHeaders.length;

    return Container(
      height: TableConstraints.rowHeight,
      decoration: Theme.of(context)
          .extension<EOBrandTheme>()!
          .psnopGradeGroupTotalBoxContainerDecoration,
      child: Row(
        children: [
          CellWidget(
            column: 1,
            context: context,
            flex: 2,
            headers: headers,
            message: (total.gradeGroupTerritoryName.isEmpty)
                ? total.gradeGroup
                : total.gradeGroupTerritoryName,
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width * 2,
            infoText: true,
            infoTextType: InfoTextType.gradeGroupTotal,
          ),
          CellWidget(
            column: 2,
            context: context,
            headers: headers,
            message: total.currentHeapWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 2,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: '',
            width: width,
          ),
          CellWidget(
            column: 2,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.inwardUnpricedWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 2,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.outwardUnpricedWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 2,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.currentStockTotal.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 3,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.confirmedInterDepotInward.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 4,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.purchaseForecastWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 4,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.interDepotReceiptWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 4,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.fixedPurchaseContractsWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 5,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.requestsWeight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
            onTap: () {
              if (total.requestsWeight <= 0) {
                return;
              }
              launchUrl(
                UriUtils.yardManagementRequestLink(
                  appConfig,
                  depot: depotNo,
                  gradeGroup: total.gradeGroup,
                ),
                webOnlyWindowName: '_blank',
              );
            },
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.directSalesTotalWeight.toStringAsFixed(2),
            onTap: () {
              if (total.directSalesTotalWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'movementType': [MovementType.directSales.name],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.directSalesApprovedWeight.toStringAsFixed(2),
            onTap: () {
              if (total.directSalesApprovedWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'movementType': [MovementType.directSales.name],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.directSalesToBookWeight.toStringAsFixed(2),
            onTap: () {
              if (total.directSalesToBookWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'movementType': [MovementType.directSales.name],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: headers,
            message:
                total.directSalesAwaitingTransportWeight.toStringAsFixed(2),
            onTap: () {
              if (total.directSalesAwaitingTransportWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'movementType': [MovementType.directSales.name],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 6,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.directSalesTotalConfirmedWeight.toStringAsFixed(2),
            onTap: () {
              if (total.directSalesTotalConfirmedWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'movementType': [MovementType.directSales.name],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 7,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.instructionsToMoveTotalWeight.toStringAsFixed(2),
            onTap: () {
              if (total.instructionsToMoveTotalWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'movementType': [MovementType.instructionsToMove.name],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            //TODO: when we get the info working uncomment these sections
            column: 7,
            //containerIfZero: true,
            context: context,
            headers: headers,
            message: '-',
            //summary.instructionsToMoveApprovedWeight.toStringAsFixed(2),
            onTap: () {
              if (total.instructionsToMoveApprovedWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'movementType': [MovementType.instructionsToMove.name],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 7,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.instructionsToMoveToBookWeight.toStringAsFixed(2),
            onTap: () {
              if (total.instructionsToMoveToBookWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'movementType': [MovementType.instructionsToMove.name],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 7,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.instructionsToMoveAwaitingTransportWeight
                .toStringAsFixed(2),
            onTap: () {
              if (total.instructionsToMoveAwaitingTransportWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'movementType': [MovementType.instructionsToMove.name],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 7,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.instructionsToMoveConfirmedWeight.toStringAsFixed(2),
            onTap: () {
              if (total.instructionsToMoveConfirmedWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'movementType': [MovementType.route.name],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 8,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.standardFlowBalance.toStringAsFixed(2),
            onTap: () {
              if (total.standardFlowBalance <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'movementType': [MovementType.route.name],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 8,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.standardFlowToBookWeight.toStringAsFixed(2),
            onTap: () {
              if (total.standardFlowToBookWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'movementType': [MovementType.route.name],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 8,
            containerIfZero: true,
            context: context,
            headers: headers,
            message:
                total.standardFlowAwaitingTransportWeight.toStringAsFixed(2),
            onTap: () {
              if (total.standardFlowAwaitingTransportWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'movementType': [MovementType.route.name],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 8,
            headers: headers,
            width: width,
            context: context,
            message: total.standardFlowConfirmedWeight.toStringAsFixed(2),
            onTap: () {
              if (total.standardFlowConfirmedWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'movementType': [MovementType.route.name],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            containerIfZero: true,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.movementsTotalWeight.toStringAsFixed(2),
            onTap: () {
              if (total.movementsTotalWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.movementsApprovedWeight.toStringAsFixed(2),
            onTap: () {
              if (total.movementsApprovedWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.movementsToBookWeight.toStringAsFixed(2),
            onTap: () {
              if (total.movementsToBookWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.movementsAwaitingTransportWeight.toStringAsFixed(2),
            onTap: () {
              if (total.movementsAwaitingTransportWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 9,
            containerIfZero: true,
            context: context,
            headers: headers,
            message: total.movementsTotalConfirmedWeight.toStringAsFixed(2),
            onTap: () {
              if (total.movementsTotalConfirmedWeight <= 0) {
                return;
              }
              context.goNamed(
                NamedRoutes.psnopPlannedMovements,
                queryParams: {
                  'depotNos': [depotNo],
                  'gradeGroups': [
                    gradeGroupSummary.gradeGroupedTotal.gradeGroup,
                  ],
                  'ignoreZeroHeaps': [controller.ignoreZeroHeaps.toString()],
                  'weeks': [controller.weeks.toString()],
                },
              );
            },
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
          CellWidget(
            column: 10,
            context: context,
            headers: headers,
            message: total.netPosition2Weight.toStringAsFixed(2),
            style: Theme.of(context)
                .extension<EOBrandTheme>()!
                .psnopGradeGroupTotalTextStyle,
            width: width,
          ),
        ],
      ),
    );
  }

  Column _getGradesSection({
    required List<DepotPositionModel> grades,
  }) {
    final widgets = <Widget>[];

    for (var i = 0; i < grades.length; i++) {
      widgets.add(
        ExpandableGradeRowComponent(
          grade: grades[i],
          headers: headers,
          subHeaders: subHeaders,
        ),
      );
    }

    return Column(
      children: widgets,
    );
  }

  Column _getSalesGradeSection({required List<SalesGradeModel> salesGrades}) {
    final widgets = <Widget>[];

    for (var i = 0; i < salesGrades.length; i++) {
      widgets.add(
        SalesGradeRowComponent(
          headers: headers,
          salesGrade: salesGrades[i],
          subHeaders: subHeaders,
        ),
      );
    }

    return Column(
      children: widgets,
    );
  }
}
