import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/planner/planner_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/planner/total_jobs_filter_controller.dart';
import 'package:emr_one_transport/data/dataSources/total_jobs_data.dart';
import 'package:emr_one_transport/data/models/plans/plan_haulier_job.dart';
import 'package:emr_one_transport/data/models/plans/plan_response.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/job_number_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlanDetailDialog extends StatefulWidget {
  const PlanDetailDialog({
    required this.queryLayoutController,
    required this.plannerFilterController,
    required this.totalJobsFilterController,
    required this.plan,
    super.key,
  });

  final EmrQueryLayoutController<PlanHaulierJob> queryLayoutController;
  final PlannerFilterController plannerFilterController;
  final TotalJobsFilterController totalJobsFilterController;
  final PlanResponse plan;

  @override
  State<PlanDetailDialog> createState() => _PlanDetailDialogState();
}

class _PlanDetailDialogState extends State<PlanDetailDialog> {
  late EmrGridController<PlanHaulierJob> _gridController;
  late TotalJobsDataSource gridDataSource;
  late TotalJobsFilterController totalJobsfilterController;

  @override
  void initState() {
    _gridController = EmrGridController<PlanHaulierJob>(
      data: widget.queryLayoutController.dataSource.data,
      showLoader: widget.queryLayoutController.dataSource.loading,
    );

    totalJobsfilterController = widget.totalJobsFilterController;

    for (final filter in widget.plannerFilterController.filters.value) {
      totalJobsfilterController.addOrUpdateFilter(
        filter: filter,
        text: filter.text!,
        value: filter.value,
      );
    }

    gridDataSource =
        widget.queryLayoutController.dataSource as TotalJobsDataSource;

    widget.totalJobsFilterController.addOrUpdateFilter(
      filter: EmrFilterModel<PlanResponse>(
        key: StringConstants.planIdFilter,
        name: context.l10n.planId,
      ),
      text: context.l10n.planId,
      value: widget.plan,
    );

    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
    };

    super.initState();
  }

  @override
  void dispose() {
    final index = widget.totalJobsFilterController.filters.value.indexWhere(
      (e) => e.key == StringConstants.planIdFilter,
    );
    if (index >= 0) {
      widget.totalJobsFilterController.removeFilter(index);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.queryLayoutController.dataSource.queryScope.query = '';
    final assignedLoads = widget.plan.haulierScheduleDetails.fold<int>(
      0,
      (sum, haulierDetail) => sum + (haulierDetail.loads ?? 0),
    );
    final unassignedLoads = widget.plan.loads - assignedLoads;
    return Column(
      children: [
        const Divider(),
        Row(
          spacing: Insets.gutter / 4,
          children: [
            const SizedBox(width: Insets.gutter / 2),
            Text(
              '${context.l10n.totalLoadsDisplay} : ',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              widget.plan.loads.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: Insets.gutter / 2),
            const Text(
              '${StringConstants.assignedLoads} : ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              assignedLoads.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: Insets.gutter / 2),
            const Text(
              '${StringConstants.unassignedLoads} : ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              unassignedLoads.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: Insets.gutter / 2),
            const Text(
              '${StringConstants.scheduledApiValue} '
              '${StringConstants.jobs} : ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              widget.plan.jobStatusCount?[StringConstants.scheduledApiValue]
                      ?.toString() ??
                  '0',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Divider(),
        Expanded(
          child: EmrQueryLayout<PlanHaulierJob>.grid(
            queryLayoutController: widget.queryLayoutController,
            gridController: _gridController,
            columns: [
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.haulier,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                width: 240,
                cellBuilder: (PlanHaulierJob rowItem) => SelectableText(
                  rowItem.haulierName.trim() == ''
                      ? '${rowItem.haulierCode} - ${rowItem.haulierType}'
                      : '${rowItem.haulierCode} -'
                            ' ${rowItem.haulierName} - ${rowItem.haulierType}',
                  style: const TextStyle(overflow: TextOverflow.ellipsis),
                ),
              ),
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.jobNumber,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                width: 80,
                cellBuilder: (PlanHaulierJob rowItem) =>
                    rowItem.jobNumber != null
                    ? Row(
                        children: [
                          NavigatorText(
                            jobNumber: rowItem.jobNumber!,
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: TransportAppColors.inProgressJobColor,
                            ),
                          ),
                          Tooltip(
                            message: context.l10n.copy,
                            child: IconButton(
                              iconSize: Constants.iconSizeS,
                              icon: const Icon(Icons.copy),
                              onPressed: () async {
                                await Clipboard.setData(
                                  ClipboardData(
                                    text: rowItem.jobNumber.toString(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      )
                    : const Text(
                        'N/A',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
              ),
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.status,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                width: 80,
                cellBuilder: (PlanHaulierJob rowItem) => EmrStatusChip(
                  text: rowItem.jobStatus,
                  statusType: getStatusColor(rowItem.jobStatus),
                ),
              ),
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.dispatchYard,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                width: 80,
                cellBuilder: (PlanHaulierJob rowItem) =>
                    Text(widget.plan.dispatchYard),
              ),
              EmrGridColumn(
                headerBuilder: () => Text(
                  context.l10n.remainingLoads,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                width: 80,
                cellBuilder: (PlanHaulierJob rowItem) =>
                    Text(rowItem.loads.toString()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

StatusType getStatusColor(String jobStatus) {
  switch (jobStatus) {
    case StringConstants.completedApiValue:
    case StringConstants.startedApiValue:
      return StatusType.positive;
    case StringConstants.scheduledApiValue:
    case StringConstants.pendingApiValue:
      return StatusType.information;

    case StringConstants.abandonedApiValue:
      return StatusType.negative;
    default:
      return StatusType.information;
  }
}
