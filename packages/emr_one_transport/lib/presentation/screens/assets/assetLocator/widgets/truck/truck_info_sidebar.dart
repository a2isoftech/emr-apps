import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/tracking/truck_locator_controller.dart';
import 'package:emr_one_transport/data/models/tracking/job_summary_model.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/datetime_range_bottom_sheet.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/map_event_blocker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Sidebar widget displaying truck details, status, and recent jobs.
/// Used in TruckLocatorWidget when a truck is selected.
class TruckInfoSidebar extends StatelessWidget {
  const TruckInfoSidebar({
    required this.controller,
    super.key,
  });

  final TruckLocatorController controller;

  @override
  Widget build(BuildContext context) {
    return MapEventBlockerOnHover(
      registry: controller.eventBlockerRegistry,
      child: Container(
        decoration: BoxDecoration(
          color: TransportAppColors.whiteTextColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: TransportAppColors.shadowColor,
              blurRadius: 4,
            ),
          ],
        ),
        child: controller.selectedTruck == null
            ? _buildNoTruckSelected(context)
            : _buildTruckDetails(context, controller),
      ),
    );
  }

  Widget _buildNoTruckSelected(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        children: [
          const Icon(
            Icons.info_outline,
            size: 32,
          ),
          const SizedBox(height: 8),
          Text(
            context.l10n.selectTruckToView,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  Widget _buildTruckDetails(
    BuildContext context,
    TruckLocatorController controller,
  ) {
    final truck = controller.selectedTruck!;
    final summary = controller.truckSummary;
    final driverName = summary?.driverName;

    return Padding(
      padding: const EdgeInsets.all(Insets.gutter/2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            // Truck header with close button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        truck.assetNumber ??
                            context.l10n.unknown,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        truck.vrm ?? context.l10n.na,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close, size: 18),
                  onPressed: () => controller.deselectTruck(),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
            const Divider(),

            // Status indicator
            Container(
              padding: 
                const EdgeInsets
                        .symmetric(horizontal: Insets.gutter/2, 
                                    vertical: Insets.gutter/4),
              decoration: BoxDecoration(
                color: (summary?.speed ?? 0) > 0
                    ? TransportAppColors.truckMovingBgColor
                    : TransportAppColors.truckStoppedStatusBgColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                (summary?.speed ?? 0) > 0
                    ? context.l10n.moving
                    : context.l10n.stopped,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: (summary?.speed ?? 0) > 0
                      ? TransportAppColors.displayGreenColor
                      : TransportAppColors.errorDisplayColor,
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Truck information cards
            _buildInfoRow(
              context,
              '${context.l10n.yard}: ',
              truck.yard ?? context.l10n.na,
            ),
            const SizedBox(height: 4),
            if (driverName != null && driverName.isNotEmpty)
              _buildInfoRow(
                context,
                '${context.l10n.driver}:',
                driverName,
              ),
            if (driverName == null || driverName.isEmpty)
              _buildInfoRow(
                context,
                '${context.l10n.driver}:',
                context.l10n.na,
              ),
            const SizedBox(height: 4),
            if (summary?.activeJobNumber != null)
              _buildInfoRow(
                context,
                '${context.l10n.currentJob}:',
                '#${summary!.activeJobNumber}',
              ),
            if (summary?.activeJobNumber == null)
              _buildInfoRow(
                context,
                '${context.l10n.currentJob}:',
                context.l10n.na,
              ),
            const SizedBox(height: 4),
            if (summary?.lastUpdated != null)
              _buildInfoRow(
                context,
                '${context.l10n.lastResponse}:',
                _formatLastResponse(context, summary!.lastUpdated!),
              ),
            const SizedBox(height: 8),

            // Current location
            if (summary != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.currentLocation,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    summary.dispatchYard ??
                        context.l10n.unknown,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(height: 4),
                  if (summary.currentPosition != null) ...[
                    Text(
                      '${context.l10n.latitude}: '
                      '${summary.currentPosition!.latitude}',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Text(
                      '${context.l10n.longitude}: '
                      '${summary.currentPosition!.longitude}',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                  const SizedBox(height: 8),
                ],
              ),

            // Speed and heading (only when moving)
            if ((summary?.speed ?? 0) > 0)
              Row(
                children: [
                  Expanded(
                    child: _buildInfoCard(
                      context: context,
                      label: context.l10n.speed,
                      value: (summary?.speed ?? 0) < 0
                          ? '-'
                          : '${summary!.speed!.toStringAsFixed(1)}'
                            '${StringConstants.truckTrackingKmhUnit}',
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _buildInfoCard(
                      context: context,
                      label: context.l10n.heading,
                      value: (summary?.heading ?? 0) < 0
                          ? '-'
                          : '${summary!.heading!.toStringAsFixed(0)}'
                            '${StringConstants.truckTrackingDegreeUnit}',
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 8),

            // Jobs date range header with clear and picker buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.l10n.recentJobs,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Clear selection button - only show when jobs are selected
                    ValueListenableBuilder<Set<int>>(
                      valueListenable: controller.selectedJobsNotifier,
                      builder: (context, selectedJobs, _) {
                        if (selectedJobs.isEmpty) {
                          return const SizedBox.shrink();
                        }
                        return IconButton(
                          icon: const Icon(
                            Icons.clear_all,
                            size: 16,
                          ),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          tooltip: context.l10n.clearSelection,
                          onPressed: () => controller.clearJobSelection(),
                        );
                      },
                    ),
                    _buildJobsDateRangeButton(context, controller),
                  ],
                ),
              ],
            ),
            // Show current date range
            ValueListenableBuilder<DateTime>(
              valueListenable: controller.jobsFromDateNotifier,
              builder: (context, fromDate, _) {
                return ValueListenableBuilder<DateTime>(
                  valueListenable: controller.jobsToDateNotifier,
                  builder: (context, toDate, _) {
                    final dateFormat =
                        DateFormat(StringConstants.dateFormatDdMmmHhmm);
                    return Text(
                      '${dateFormat.format(fromDate)} - '
                      '${dateFormat.format(toDate)}',
                      style: Theme.of(context).textTheme.labelSmall,
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 4),
            Expanded(
              child: controller.isRecentJobsLoading ||
                      controller.isGeometryLoading
                  ? const Center(
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    )
                  : controller.recentJobs.isEmpty
                      ? Center(
                          child: Text(
                            context.l10n.noRecentJobs,
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        )
                      : ValueListenableBuilder<Set<int>>(
                          valueListenable: controller.selectedJobsNotifier,
                          builder: (context, selectedJobs, _) {
                            final sortedJobs =
                                controller.getSortedJobsForDisplay();
                            return ListView.separated(
                              itemCount: sortedJobs.length,
                              separatorBuilder: (_, __) =>
                                  const Divider(height: 8),
                              itemBuilder: (context, index) {
                                final job = sortedJobs[index];
                                return _buildJobItem(
                                  context,
                                  job,
                                  controller,
                                  selectedJobs,
                                );
                              },
                            );
                          },
                        ),
            ),
          ],
        ),
    );
  }

  Widget _buildJobsDateRangeButton(
    BuildContext context,
    TruckLocatorController controller,
  ) {
    return IconButton(
      icon: const Icon(
        Icons.date_range,
        size: 18,
      ),
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      tooltip: context.l10n.changeTrackingDates,
      onPressed: () => _showJobsDateRangeDialog(context, controller),
    );
  }

  void _showJobsDateRangeDialog(
    BuildContext context,
    TruckLocatorController controller,
  ) {
    final startDate = ValueNotifier<DateTime?>(controller.jobsFromDate);
    final endDate = ValueNotifier<DateTime?>(controller.jobsToDate);
    final errorNotifier = ValueNotifier<String?>(null);

    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      barrierColor: TransportAppColors.darkModalBarrierColor,
      builder: (ctx) => MapEventBlocker(
        registry: controller.eventBlockerRegistry,
        child: DateTimeRangeBottomSheet(
          title: context.l10n.changeTrackingDates,
          subtitle: context.l10n.maxDaysLimit(
            Constants.truckTrackingMaxDateRangeDays,
          ),
          startDate: startDate,
          endDate: endDate,
          maxDays: Constants.truckTrackingMaxDateRangeDays,
          buttonText: context.l10n.apply,
          errorNotifier: errorNotifier,
          onApply: (from, to) async {
            final success = controller.setJobsDateRange(from, to);
            if (success) {
              Navigator.of(ctx).pop();
              await _reloadJobsAndGeometry(controller);
            }
          },
        ),
      ),
    );
  }

  Future<void> _reloadJobsAndGeometry(TruckLocatorController controller) async {
    await controller.reloadJobsAndGeometry();
  }

  Widget _buildInfoCard({
    required BuildContext context,
    required String label,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.all(Insets.gutter/2),
      decoration: BoxDecoration(
        color: TransportAppColors.truckInfoCardBgColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  Widget _buildJobItem(
    BuildContext context,
    JobSummary job,
    TruckLocatorController controller,
    Set<int> selectedJobs,
  ) {
    final jobNumber = job.jobNumber;
    if (jobNumber == null) {
      return _buildJobItemContent(context, job, null, false);
    }

    final isSelected = selectedJobs.contains(jobNumber);
    final jobColor = isSelected ? controller.getJobColor(jobNumber) : null;

    return MouseRegion(
      onEnter: (_) {
        if (isSelected) {
          controller.setHighlightedJob(jobNumber);
        }
      },
      onExit: (_) {
        controller.setHighlightedJob(null);
      },
      child: GestureDetector(
        onTap: () => controller.toggleJobSelection(jobNumber),
        child: Container(
          padding: 
            const EdgeInsets
                    .symmetric(horizontal: Insets.gutter/2, 
                                vertical: Insets.gutter/4),
          decoration: BoxDecoration(
            color: isSelected ? jobColor?.withValues(alpha: 0.15) : null,
            borderRadius: BorderRadius.circular(4),
            border: isSelected
                ? Border.all(color: jobColor ?? Colors.transparent, width: 2)
                : null,
          ),
          child: _buildJobItemContent(context, job, jobColor, isSelected),
        ),
      ),
    );
  }

  Widget _buildJobItemContent(
    BuildContext context,
    JobSummary job,
    Color? jobColor,
    bool isSelected,
  ) {
    final scheduledDateStr = job.scheduledDate != null
        ? DateFormat(StringConstants.dateFormatDdMmmHhmm)
            .format(job.scheduledDate!.toLocal())
        : '';

    // Check if any tooltip dates exist
    final hasTooltipInfo = job.jobStartTime != null || job.jobEndTime != null;

    return Row(
      children: [
        // Color indicator dot for selected jobs
        if (isSelected && jobColor != null) ...[
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: jobColor,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 6),
        ],
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${context.l10n.job} #${job.jobNumber} | ${job.jobStatus}',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontWeight: isSelected ? FontWeight.bold : null,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              if (scheduledDateStr.isNotEmpty)
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        '${context.l10n.scheduledDate}: $scheduledDateStr',
                        style: Theme.of(context).textTheme.labelSmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (hasTooltipInfo) ...[
                      const SizedBox(width: 4),
                      _buildJobInfoTooltip(context, job),
                    ],
                  ],
                ),
              if (scheduledDateStr.isEmpty && hasTooltipInfo)
                _buildJobInfoTooltip(context, job),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildJobInfoTooltip(BuildContext context, JobSummary job) {
    final dateFormat = DateFormat(StringConstants.dateFormatDdMmmYyyyHhmm);
    final lines = <String>[];

    if (job.jobStartTime != null) {
      lines.add(
        '${context.l10n.started}: '
        '${dateFormat.format(job.jobStartTime!.toLocal())}',
      );
    }
    if (job.jobEndTime != null) {
      lines.add(
        '${context.l10n.finished}: '
        '${dateFormat.format(job.jobEndTime!.toLocal())}',
      );
    }

    return Tooltip(
      message: lines.join('\n'),
      child: const Icon(
        Icons.info_outline,
        size: 12,
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }

  String _formatLastResponse(BuildContext context, DateTime timestamp) {
    final l10n = context.l10n;
    final diff = DateTime.now().difference(timestamp);
    if (diff.inMinutes < 1) return l10n.justNow;
    if (diff.inMinutes < 60) {
      return l10n.minutesAgo(diff.inMinutes);
    }
    if (diff.inHours < 24) return l10n.hoursAgo(diff.inHours);
    return l10n.daysAgo(diff.inDays);
  }
}
