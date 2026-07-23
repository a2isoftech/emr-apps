import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_data_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/job_base.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/scheduler/third_party_haulier_with_jobs.dart';
import 'package:emr_one_transport/data/models/scheduler/third_party_job_group.dart';
import 'package:emr_one_transport/data/models/user_preferences/scheduler_preference.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/job_detailed_view.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/boxed_widget.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/common_drag_target.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/job_cell.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/job_secondary_tap.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/third_party_haulier_secondary_tap.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';

class ThirdPartyGrid extends StatefulWidget {
  const ThirdPartyGrid({required this.haulierJobs, this.focusedJob, super.key});
  final List<ThirdPartyHaulierWithJobs> haulierJobs;
  final SchedulerJob? focusedJob;
  @override
  State<ThirdPartyGrid> createState() => ThirdPartyGridState();
}

class ThirdPartyGridState extends State<ThirdPartyGrid> {
  late ScrollController _verticalScrollController;
  late ScrollController _horizontalScrollController;
  int? selectedJobNumber;
  @override
  void initState() {
    super.initState();
    selectedJobNumber = widget.focusedJob?.jobNumber;
    if (widget.focusedJob != null && widget.haulierJobs.isNotEmpty) {
      try {
        final focusedJobType = jobTypeFromApiValue(widget.focusedJob!.jobType);

        widget.haulierJobs[0].showJobType = focusedJobType;
        widget.haulierJobs[0].groupedJobsOnJobType
            .firstWhere((g) => g.jobType == focusedJobType)
            .displayJobsByStatus = _jobStatusToThirdPartyJobDisplayEnum(
          widget.focusedJob!.jobStatus,
        );
      } catch (e) {
        widget.haulierJobs[0].showJobType = null;
      }
    }
    _horizontalScrollController = ScrollController();
    _verticalScrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    // Pre-calculate row mapping information
    final rowMappings = _calculateRowMappings();
    _syncControllersWithVisibleRows(rowMappings);
    return Scrollbar(
      controller: _verticalScrollController,
      thumbVisibility: true,
      child: Scrollbar(
        controller: _horizontalScrollController,
        thumbVisibility: true,
        child: TableView.builder(
          horizontalDetails: ScrollableDetails.horizontal(
            controller: _horizontalScrollController,
          ),
          verticalDetails: ScrollableDetails.vertical(
            controller: _verticalScrollController,
          ),
          columnCount: 2,
          pinnedColumnCount: 1,
          rowCount: _calculateRowCount(),
          columnBuilder: _columnBuilder,
          rowBuilder: (i) => _rowBuilder(i, rowMappings),
          cellBuilder: (context, vicinity) =>
              _cellBuilder(context, vicinity, rowMappings),
        ),
      ),
    );
  }

  TableSpan _columnBuilder(int index) {
    return TableSpan(
      extent: index == 0
          ? const FixedTableSpanExtent(160)
          : CombiningTableSpanExtent(
              const RemainingTableSpanExtent(),
              const FixedTableSpanExtent(160), // same as pinned column width
              (remaining, pinned) => remaining - pinned,
            ),
    );
  }

  TableSpan _rowBuilder(int index, List<RowMapping> rowMapping) {
    return TableSpan(
      padding: const SpanPadding(trailing: 1),
      extent: (rowMapping[index].isJobsRow)
          ? const FixedSpanExtent(Constants.schedulerCellHeight + Insets.gutter)
          : const FixedSpanExtent(Constants.thirdPartySummaryCellHeight),
    );
  }

  TableViewCell _cellBuilder(
    BuildContext context,
    TableVicinity vicinity,
    List<RowMapping> rowMappings,
  ) {
    final column = vicinity.column;
    final rowInfo = rowMappings[vicinity.row];
    final haulierJob = widget.haulierJobs[rowInfo.index];

    if (column == 0) {
      return TableViewCell(
        child: ColoredBox(
          color: Colors.white,
          child: rowInfo.isJobsRow
              ? const SizedBox.shrink()
              : context.userHasPermission(UserPermissions.schedulerWrite)
              ? ThirdPartyHaulierSecondaryTap(
                  haulierCode: haulierJob.haulierCode,
                  jobIds: haulierJob.allJobs.map((e) => e.id).toList(),
                  child: _buiildHaulierNameCell(haulierJob),
                )
              : _buiildHaulierNameCell(haulierJob),
        ),
      );
    }

    if (rowInfo.isJobsRow) {
      return _buildJobsRow(haulierJob);
    } else {
      return _buildHaulierSummaryRow(haulierJob);
    }
  }

  Widget _buildJobTypeSummaryCell(
    String haulierCode,
    ThirdPartyJobGroup jobGroup,
  ) {
    return SizedBox(
      width: Constants.thirdPartySummaryCellWidth,
      child: GestureDetector(
        onTap: () {
          scrollToStart();
          setState(() {
            final previousValue = jobGroup.displayJobsByStatus;

            final haulierJobs = widget.haulierJobs.firstWhere(
              (element) => element.haulierCode == haulierCode,
            );

            //Reset the display of job groups within the same haulier code
            clearJobGroupDisplay(haulierCode);

            jobGroup.displayJobsByStatus =
                previousValue == ThirdPartyJobDisplayEnum.all
                ? ThirdPartyJobDisplayEnum.none
                : ThirdPartyJobDisplayEnum.all;

            haulierJobs.showJobType =
                jobGroup.displayJobsByStatus == ThirdPartyJobDisplayEnum.none
                ? null
                : jobGroup.jobType;
          });
        },
        child: Center(
          child: Row(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  width: 50,
                  color: TransportAppColors.darkBg,
                  child: Center(
                    child: Text(
                      jobGroup.jobType.abbreviation,
                      style: Theme.of(
                        context,
                      ).textTheme.titleSmall!.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color:
                      jobGroup.displayJobsByStatus !=
                          ThirdPartyJobDisplayEnum.none
                      ? TransportAppColors.selectedJobBg
                      : Theme.of(context).colorScheme.surface,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                width: 325,
                child: Row(
                  children: [
                    _buildJobStatusButton(
                      haulierCode,
                      jobGroup,
                      StringConstants.scheduledApiValue,
                      ThirdPartyJobDisplayEnum.scheduled,
                      jobGroup.scheduledJobs.length,
                    ),
                    _buildJobStatusButton(
                      haulierCode,
                      jobGroup,
                      StringConstants.startedApiValue,
                      ThirdPartyJobDisplayEnum.started,
                      jobGroup.startedJobs.length,
                    ),
                    _buildJobStatusButton(
                      haulierCode,
                      jobGroup,
                      StringConstants.completedApiValue,
                      ThirdPartyJobDisplayEnum.completed,
                      jobGroup.completedJobs.length,
                    ),
                    _buildJobStatusButton(
                      haulierCode,
                      jobGroup,
                      StringConstants.abandonedApiValue,
                      ThirdPartyJobDisplayEnum.abandoned,
                      jobGroup.abandonedJobs.length,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buiildHaulierNameCell(ThirdPartyHaulierWithJobs haulierJob) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      color: TransportAppColors.truckCellColor,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              haulierJob.haulierCode,
              style: Theme.of(context).textTheme.titleSmall,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            ),
            Tooltip(
              message: haulierJob.haulierName,
              child: Text(
                haulierJob.haulierName,
                style: Theme.of(context).textTheme.labelSmall,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Extracted Widget Method
  Widget _buildJobStatusButton(
    String haulierCode,
    ThirdPartyJobGroup jobGroup,
    String apiValue,
    ThirdPartyJobDisplayEnum jobStatusEnum,
    int noOfJobs,
  ) {
    return GestureDetector(
      onTap: () {
        scrollToStart();
        setState(() {
          clearJobGroupDisplay(haulierCode);
          final haulierJobs = widget.haulierJobs.firstWhere(
            (element) => element.haulierCode == haulierCode,
          );
          haulierJobs.showJobType = jobGroup.jobType;
          jobGroup.displayJobsByStatus = jobStatusEnum;
        });
      },
      child: SizedBox(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _showJobStatus(apiValue, jobGroup),
            const SizedBox(height: 2),
            _showCount(noOfJobs, jobGroup.displayJobsByStatus == jobStatusEnum),
          ],
        ),
      ),
    );
  }

  Widget _showCount(num count, bool isSelected) {
    final isLightTheme = Theme.of(context).brightness == Brightness.light;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: BoxedWidget(
        child: Container(
          color: isSelected
              ? TransportAppColors.progressBarGreenFg
              : isLightTheme
              ? Colors.white
              : TransportAppColors.darkBg,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child: Text(
            count.toString(),
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: isSelected
                  ? Colors.white
                  : Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ),
    );
  }

  Text _showJobStatus(String jobstatus, ThirdPartyJobGroup groupedJob) {
    return Text(
      overflow: TextOverflow.ellipsis,
      jobstatus,
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.bold,
        color: groupedJob.displayJobsByStatus == ThirdPartyJobDisplayEnum.none
            ? Theme.of(context).colorScheme.onSurface
            : Colors.white,
      ),
    );
  }

  void clearJobGroupDisplay(String haulierCode) {
    widget.haulierJobs.where((e) => e.haulierCode == haulierCode).forEach((
      haulierJob,
    ) {
      for (final jobGroup in haulierJob.groupedJobsOnJobType) {
        jobGroup.displayJobsByStatus = ThirdPartyJobDisplayEnum.none;
      }
    });
  }

  // Calculate the total row count considering expanded rows
  int _calculateRowCount() {
    var count = 0;
    for (final haulierJob in widget.haulierJobs) {
      count++;
      if (haulierJob.showJobType != null) {
        count++;
      }
    }
    return count;
  }

  TableViewCell _buildHaulierSummaryRow(ThirdPartyHaulierWithJobs haulierJob) {
    final key = _rowKey(haulierJob.haulierCode, isJobsRow: false);
    final controller = _getRowController(key);
    return TableViewCell(
      child: CommonDragTarget(
        targetHaulierType: HaulierType.thirdParty,
        targetHaulierCode: haulierJob.haulierCode,
        targetHaulierName: haulierJob.haulierName,
        gapToNextJob: null,
        child: Scrollbar(
          controller: controller,
          child: ListView.separated(
            controller: controller,
            separatorBuilder: (context, index) => const SizedBox(width: 0),
            scrollDirection: Axis.horizontal,
            itemCount: haulierJob.groupedJobsOnJobType.length,
            itemBuilder: (context, index) {
              final data = ThirdPartyJobGroupWrapper(
                haulierJob.groupedJobsOnJobType[index],
              );
              data.fromHaulierCode = haulierJob.haulierCode;
              return context.userHasPermission(UserPermissions.schedulerWrite)
                  ? Draggable<JobBase>(
                      data: data,
                      feedback: SizedBox(
                        width: Constants.thirdPartySummaryCellWidth - 5,
                        height: Constants.thirdPartySummaryCellHeight,
                        child: Opacity(
                          opacity: Constants.opacityOfJobCellsWhileDragging,
                          child: Material(
                            elevation: 5,
                            type: MaterialType.card,
                            child: _buildJobTypeSummaryCell(
                              haulierJob.haulierCode,
                              haulierJob.groupedJobsOnJobType[index],
                            ),
                          ),
                        ),
                      ),
                      childWhenDragging: _buildJobTypeSummaryCell(
                        haulierJob.haulierCode,
                        haulierJob.groupedJobsOnJobType[index],
                      ),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.move,
                        child: _buildJobTypeSummaryCell(
                          haulierJob.haulierCode,
                          haulierJob.groupedJobsOnJobType[index],
                        ),
                      ),
                    )
                  : _buildJobTypeSummaryCell(
                      haulierJob.haulierCode,
                      haulierJob.groupedJobsOnJobType[index],
                    );
            },
          ),
        ),
      ),
    );
  }

  // Pre-calculate which table row corresponds to which object and whether
  //it's a name or detail row
  List<RowMapping> _calculateRowMappings() {
    final mappings = <RowMapping>[];

    for (var i = 0; i < widget.haulierJobs.length; i++) {
      // Add the name row for each object
      mappings.add(RowMapping(index: i, isJobsRow: false));

      // If the object has details to show, add a detail row
      if (widget.haulierJobs[i].showJobType != null) {
        mappings.add(RowMapping(index: i, isJobsRow: true));
      }
    }
    return mappings;
  }

  TableViewCell _buildJobsRow(ThirdPartyHaulierWithJobs haulierJob) {
    final jobs = _getFilteredJobs(haulierJob);
    final key = _rowKey(haulierJob.haulierCode, isJobsRow: true);
    final controller = _getRowController(key);

    final jobService = Provider.of<JobListService>(context);

    return TableViewCell(
      child: Container(
        margin: const EdgeInsets.only(right: 4),
        color: TransportAppColors.emptyCellColor,
        child: Scrollbar(
          controller: controller,
          thumbVisibility: true,
          interactive: true,
          child: ListView.separated(
            controller: controller,
            padding: const EdgeInsets.only(bottom: Insets.gutter),
            separatorBuilder: (context, index) => const SizedBox(width: 2),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final data = ThirdPartyJobWrapper(jobs[index]);
              data.fromHaulierCode = haulierJob.haulierCode;
              return context.userHasPermission(UserPermissions.schedulerWrite)
                  ? JobSecondaryTap(
                      job: jobs[index],
                      haulierType: HaulierType.thirdParty,
                      neighbouringJobs: const [],
                      child:
                          jobs[index].jobStatus ==
                              StringConstants.scheduledApiValue
                          ? Draggable<JobBase>(
                              data: data,
                              feedback: Opacity(
                                opacity:
                                    Constants.opacityOfJobCellsWhileDragging,
                                child: Material(
                                  elevation: 5,
                                  child: buildTapableJobCell(
                                    jobs[index],
                                    selectedJobNumber,
                                    jobService,
                                  ),
                                ),
                              ),
                              child: buildTapableJobCell(
                                jobs[index],
                                selectedJobNumber,
                                jobService,
                              ),
                            )
                          : buildTapableJobCell(
                              jobs[index],
                              selectedJobNumber,
                              jobService,
                            ),
                    )
                  : buildTapableJobCell(
                      jobs[index],
                      selectedJobNumber,
                      jobService,
                    );
            },
            itemCount: jobs.length,
          ),
        ),
      ),
    );
  }

  List<SchedulerJob> _getFilteredJobs(ThirdPartyHaulierWithJobs haulierJob) {
    if (haulierJob.showJobType == null) {
      return [];
    } else {
      final groupedJobs = haulierJob.groupedJobsOnJobType.firstWhere(
        (e) => e.jobType == haulierJob.showJobType,
      );

      switch (groupedJobs.displayJobsByStatus) {
        case ThirdPartyJobDisplayEnum.all:
          return [
            ...groupedJobs.scheduledJobs,
            ...groupedJobs.startedJobs,
            ...groupedJobs.completedJobs,
            ...groupedJobs.abandonedJobs,
          ]..sort((a, b) => a.jobNumber.compareTo(b.jobNumber));

        case ThirdPartyJobDisplayEnum.scheduled:
          return groupedJobs.scheduledJobs;
        case ThirdPartyJobDisplayEnum.started:
          return groupedJobs.startedJobs;
        case ThirdPartyJobDisplayEnum.completed:
          return groupedJobs.completedJobs;
        case ThirdPartyJobDisplayEnum.abandoned:
          return groupedJobs.abandonedJobs;
        case ThirdPartyJobDisplayEnum.none:
          return [];
      }
    }
  }

  void scrollToStart() {
    if (_horizontalScrollController.offset > 0) {
      _horizontalScrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  ThirdPartyJobDisplayEnum _jobStatusToThirdPartyJobDisplayEnum(
    String focusedJobStatus,
  ) {
    switch (focusedJobStatus) {
      case StringConstants.scheduledApiValue:
        return ThirdPartyJobDisplayEnum.scheduled;
      case StringConstants.startedApiValue:
        return ThirdPartyJobDisplayEnum.started;
      case StringConstants.completedApiValue:
        return ThirdPartyJobDisplayEnum.completed;
      case StringConstants.abandonedApiValue:
        return ThirdPartyJobDisplayEnum.abandoned;
      default:
        throw UnimplementedError();
    }
  }

  final Map<String, ScrollController> _rowHControllers = {};

  String _rowKey(String haulierCode, {required bool isJobsRow}) {
    final type = isJobsRow ? StringConstants.jobs : StringConstants.haulier;

    return '$haulierCode|$type';
  }

  ScrollController _getRowController(String key) {
    return _rowHControllers.putIfAbsent(key, ScrollController.new);
  }

  void _disposeRowController(String key) {
    final c = _rowHControllers.remove(key);
    c?.dispose();
  }

  void _syncControllersWithVisibleRows(List<RowMapping> rowMappings) {
    final visibleKeys = <String>{};

    for (final m in rowMappings) {
      final haulier = widget.haulierJobs[m.index];
      visibleKeys.add(_rowKey(haulier.haulierCode, isJobsRow: m.isJobsRow));
    }

    final staleKeys = _rowHControllers.keys
        .where((k) => !visibleKeys.contains(k))
        .toList();
    for (final k in staleKeys) {
      _disposeRowController(k);
    }
  }

  @override
  void dispose() {
    _verticalScrollController.dispose();
    _horizontalScrollController.dispose();

    for (final c in _rowHControllers.values) {
      c.dispose();
    }
    _rowHControllers.clear();

    super.dispose();
  }

  Widget buildTapableJobCell(
    SchedulerJob job,
    int? selectedJobNumber,
    JobListService jobService,
  ) {
    final schedulerPreference =
        context.read<SchedulerDataController>().schedulerPreference ??
        SchedulerPreference.defaultPreference();

    return MouseRegion(
      cursor: _getMouseCursor(job),
      child: GestureDetector(
        onTap: () => _handleJobSelection(job.jobNumber, jobService),
        child: Container(
          foregroundDecoration: job.jobNumber == selectedJobNumber
              ? BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: TransportAppColors.selectedJobBg,
                  ),
                )
              : null,
          child: SizedBox(
            width: 150,
            height: Constants.schedulerCellHeight,
            child: JobCell(
              job: job,
              schedulerPreference: schedulerPreference,
              groupedJobPosition: GroupedJobPosition.single,
            ),
          ),
        ),
      ),
    );
  }

  MouseCursor _getMouseCursor(SchedulerJob job) {
    return job.jobStatus == StringConstants.scheduledApiValue &&
            job.groupId == null
        ? SystemMouseCursors.grab
        : SystemMouseCursors.forbidden;
  }

  Future<void> _handleJobSelection(
    int jobNumber,
    JobListService jobService,
  ) async {
    setState(() => selectedJobNumber = jobNumber);

    try {
      await EmrModal.showModalBottomSheetOrFlyout<void>(
        context,
        child: Provider<JobListService>.value(
          value: jobService,
          child: JobDetailedView(jobNumber: jobNumber, showTitleBar: true),
        ),
      );
    } finally {
      if (mounted) setState(() => selectedJobNumber = null);
    }
  }
}

// Helper class for row mapping
class RowMapping {
  RowMapping({required this.index, required this.isJobsRow});
  final int index;
  final bool isJobsRow;
}
