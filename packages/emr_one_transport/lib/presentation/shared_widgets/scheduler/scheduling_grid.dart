import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_data_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/truck_job_info_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/job_base.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_group.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_yard.dart';
import 'package:emr_one_transport/data/models/scheduler/vor_schedule.dart';
import 'package:emr_one_transport/data/models/user_preferences/scheduler_preference.dart';
import 'package:emr_one_transport/data/services/job_helper.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/job_detailed_view.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/common_drag_target.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/job_cell.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/job_secondary_tap.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/scheduler_truck_cell.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/scheduler_vor_cell.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/time_interval.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/truck_job_info_view.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/truck_secondary_tap.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/yard_secondary_tap.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';

class SchedulingGrid extends StatefulWidget {
  const SchedulingGrid({
    required this.truckGroupingPreference,
    required this.haulierType,
    required this.onDragStart,
    required this.onDragEnd,
    required this.onYardCollapsed,
    required this.is24HrFormat,
    required this.showCurrentTime,
    super.key,
    this.jobInFocus,
  });
  final SchedulerJob? jobInFocus;
  final List<SchedulerGroup> truckGroupingPreference;
  final HaulierType haulierType;
  final VoidCallback onDragStart;
  final VoidCallback onDragEnd;
  final Future<void> Function(String groupTitle, {required bool isCollapsed})
  onYardCollapsed;
  final ValueNotifier<bool> is24HrFormat;
  final bool showCurrentTime;

  @override
  State<SchedulingGrid> createState() => SchedulingGridState();
}

class SchedulingGridState extends State<SchedulingGrid>
    with AutomaticKeepAliveClientMixin<SchedulingGrid> {
  late ScrollController _verticalScrollController;
  late ScrollController _horizontalScrollController;
  int columnIndexOf6AM = 14;
  List<double> rowHeights = [];
  // GlobalKey attached to the scrollable container.
  final GlobalKey _scrollableKey = GlobalKey();
  int? selectedJobNumber;
  final ValueNotifier<String?> _selectedTruckVrm = ValueNotifier<String?>(null);

  Timer? _scrollTimer;
  bool _scrollLeft = false;
  bool _scrollRight = false;
  bool _scrollUp = false;
  bool _scrollDown = false;
  Timer? _timelineTimer;
  int? draggingJob; // dragging job will not be rendered on UI
  final _currentTime = ValueNotifier<DateTime>(DateTime.now());
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    selectedJobNumber = widget.jobInFocus?.jobNumber;
    _horizontalScrollController = ScrollController();
    _verticalScrollController = ScrollController();

    if (widget.showCurrentTime) {
      // Init current time line
      _startTimelineTimer();
    }

    if (selectedJobNumber != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final size = MediaQuery.of(context).size;
        scrollToJob(widget.jobInFocus!, size.width, size.height);
      });
    } else {
      //We need to horizontally scroll the grid to 6AM on the grid
      WidgetsBinding.instance.addPostFrameCallback((_) {
        scrollToColumn(columnIndexOf6AM); //Column index corresponding to 6AM
      });
    }
  }

  void _startTimelineTimer() {
    final now = DateTime.now();
    final secondsUntilNextMinute = 60 - now.second;

    _timelineTimer = Timer(Duration(seconds: secondsUntilNextMinute), () {
      _currentTime.value = DateTime.now(); // only notifies the line widget

      _timelineTimer = Timer.periodic(const Duration(minutes: 1), (_) {
        if (mounted) _currentTime.value = DateTime.now();
      });
    });
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

  Future<void> _handleTruckTapped(SchedulerTruck truck, String yardCode) async {
    _selectedTruckVrm.value = truck.vrm;

    final truckJobInfoController = context.read<TruckJobInfoController>();
    final selectedDate = context
        .read<SchedulerController>()
        .selectedDateNotifier
        .value;

    try {
      await EmrModal.showModalBottomSheetOrFlyout<void>(
        context,
        child: ChangeNotifierProvider<TruckJobInfoController>.value(
          value: truckJobInfoController,
          child: TruckJobInfoView(
            truck: truck,
            date: selectedDate,
            yardCode: yardCode,
          ),
        ),
      );
    } finally {
      if (mounted) _selectedTruckVrm.value = null;
    }
  }

  void scrollToColumn(int columnIndex) {
    final offset = columnIndex * Constants.schedulerCellWidth;

    //Scroll to the specified column
    _horizontalScrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _timelineTimer?.cancel();
    _currentTime.dispose();
    _selectedTruckVrm.dispose();
    cancelScroll();
    _verticalScrollController.dispose();
    _horizontalScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    precomputedRowHeights();

    return Stack(
      children: [
        Scrollbar(
          controller: _verticalScrollController,
          thumbVisibility: true,
          child: Scrollbar(
            controller: _horizontalScrollController,
            thumbVisibility: true,
            child: Listener(
              child: TableView.builder(
                key: _scrollableKey,
                horizontalDetails: ScrollableDetails.horizontal(
                  controller: _horizontalScrollController,
                ),
                verticalDetails: ScrollableDetails.vertical(
                  controller: _verticalScrollController,
                ),
                rowCount: _calculateTotalRow(),
                columnCount: Constants.schedulerTotalColumns,
                pinnedRowCount: 1,
                pinnedColumnCount: 1,
                columnBuilder: _columnBuilder,
                rowBuilder: _rowBuilder,
                cellBuilder: _cellBuilder,
              ),
            ),
          ),
        ),
        if (widget.showCurrentTime) _buildCurrentTimeLine(),
      ],
    );
  }

  Widget _buildCurrentTimeLine() {
    //We dont want to refresh whole screen if we want to update this line
    return ValueListenableBuilder<DateTime>(
      valueListenable: _currentTime,
      builder: (context, now, _) {
        return AnimatedBuilder(
          animation: _horizontalScrollController,
          builder: (context, _) {
            final scrollOffset = _horizontalScrollController.hasClients
                ? _horizontalScrollController.offset
                : 0.0;

            final viewportX =
                _getCurrentTimeLineX(now) -
                scrollOffset +
                Constants.schedulerTruckColumnWidth -
                (Constants.schedulerCellWidth / 2);

            final screenWidth = MediaQuery.of(context).size.width;
            final isVisible =
                viewportX > Constants.schedulerTruckColumnWidth &&
                viewportX < screenWidth;

            if (!isVisible) return const SizedBox.shrink();

            return Positioned(
              left: viewportX,
              top: 0,
              bottom: 0,
              child: IgnorePointer(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: Constants.timeLineCellHeight,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: TransportAppColors.calypso,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            _formatCurrentTime(now),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 2,
                        color: TransportAppColors.calypso,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  double _getCurrentTimeLineX(DateTime now) {
    final minutesSinceMidnight = now.hour * 60 + now.minute;
    return (minutesSinceMidnight / 15) * Constants.schedulerCellWidth;
  }

  String _formatCurrentTime(DateTime now) {
    if (widget.is24HrFormat.value) {
      return '${now.hour.toString().padLeft(2, '0')}:'
          '${now.minute.toString().padLeft(2, '0')}';
    } else {
      final hour = now.hour % 12 == 0 ? 12 : now.hour % 12;
      final minute = now.minute.toString().padLeft(2, '0');
      final period = now.hour < 12 ? 'AM' : 'PM';
      return '$hour:$minute $period';
    }
  }

  TableSpan _columnBuilder(int index) {
    return TableSpan(
      extent: FixedSpanExtent(
        index == 0
            ? Constants.schedulerTruckColumnWidth
            : Constants.schedulerCellWidth,
      ),
    );
  }

  TableSpan _rowBuilder(int index) {
    return TableSpan(extent: FixedSpanExtent(rowHeights[index]));
  }

  Widget borderedContainer({
    required Widget child,
    required Color borderColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 0.5),
      ),
      child: child,
    );
  }

  // Precompute row heights based on groupDetails.
  void precomputedRowHeights() {
    rowHeights = <double>[];

    // Timeline row.
    rowHeights.add(Constants.timeLineCellHeight);

    // Process each group.
    for (final truckGroup in widget.truckGroupingPreference) {
      // Add the group heading row.
      rowHeights.add(Constants.yardCellHeight);

      // If the group is expanded, add its truck rows.
      if (truckGroup.isExpanded) {
        for (var i = 0; i < truckGroup.trucks.length; i++) {
          rowHeights.add(Constants.schedulerCellHeight);
        }
      }
      // If isExpanded is false, no truck rows are added.
    }
  }

  TableViewCell _cellBuilder(BuildContext context, TableVicinity vicinity) {
    final rowIndex = vicinity.row;
    final columnIndex = vicinity.column;

    // Main logic for deciding which cell to build
    if (rowIndex == 0) {
      return columnIndex == 0
          ? buildTitleCell()
          : buildTimeSlotCell(columnIndex);
    }
    // Adjust rowIndex to account for the time slot row
    final adjustedRowIndex = rowIndex - 1;

    // Logic to determine group, truck, or job
    var groupIndex = 0;
    var truckIndex = -1;
    var currentRow = 0;

    for (final truckGroup in widget.truckGroupingPreference) {
      // First, consume the group heading row.
      if (currentRow == adjustedRowIndex) {
        truckIndex = -1; // Indicates this row is a group heading row.
        break;
      }
      currentRow++; // Consumed the group heading row.

      // If the group is expanded, then include its truck rows.
      if (truckGroup.isExpanded) {
        // Check if the adjusted row falls within this group's truck rows.
        if (adjustedRowIndex < currentRow + truckGroup.trucks.length) {
          truckIndex = adjustedRowIndex - currentRow;
          break;
        }
        // Skip over the truck rows.
        currentRow += truckGroup.trucks.length;
      }
      // Move to the next group.
      groupIndex++;
    }

    final currentGroup = widget.truckGroupingPreference[groupIndex];
    if (truckIndex == -1) {
      return buildYardNameCell(
        currentGroup,
        columnIndex,
        Constants.schedulerTotalColumns,
      );
    }
    final thisTruck = currentGroup.trucks[truckIndex];
    if (columnIndex == 0) {
      return _buildTruckCell(thisTruck, currentGroup.groupTitle);
    }

    final vor = thisTruck.vorSchedules?.firstWhereOrNull(
      (vor) =>
          columnIndex >= vor.startIndex &&
          columnIndex < vor.startIndex + vor.durationSlots,
    );

    if (vor != null) {
      return buildVorCell(vor, columnIndex);
    }

    // Filter out hidden jobs when looking for jobs in this cell
    final visibleJobs = thisTruck.schedulerJobs
        .where((job) => job.jobNumber != draggingJob)
        .toList();

    final job = visibleJobs.firstWhereOrNull(
      (job) =>
          columnIndex >= job.startIndex &&
          columnIndex < job.startIndex + job.durationSlots,
    );

    return job != null
        ? buildJobCell(job, thisTruck, currentGroup.groupTitle, vicinity)
        : buildEmptyCell(thisTruck, columnIndex, currentGroup.groupTitle);
  }

  TableViewCell buildJobCell(
    SchedulerJob job,
    SchedulerTruck truck,
    String groupTitle,
    TableVicinity vicinity,
  ) {
    final adjustedStart = vicinity.column;
    final totalEnd = job.startIndex + job.durationSlots;
    final jobService = Provider.of<JobListService>(context);

    //Scheduler can display only  "Constants.schedulerTotalColumns" columns,
    //if spanning is beyond this, UI will not be rendered
    //Ex: job which spans beyond 12AM
    final adjustedDuration = totalEnd > Constants.schedulerTotalColumns
        ? Constants.schedulerTotalColumns - adjustedStart
        : totalEnd - adjustedStart;

    final groupedJobPosition = JobHelper.getJobPosition(
      job,
      truck.schedulerJobs,
    );
    final draggableData = widget.haulierType == HaulierType.internal
        ? InternalJobWrapper(job)
        : ManagedJobWrapper(job);
    draggableData.targetVrm = truck.vrm;
    draggableData.targetTruckYard = groupTitle;
    draggableData.tagetHaulierCode = '';
    final schedulerPreference =
        context.read<SchedulerDataController>().schedulerPreference ??
        SchedulerPreference.defaultPreference();
    return TableViewCell(
      columnMergeStart: vicinity.column,
      columnMergeSpan: adjustedDuration,
      addRepaintBoundaries: false,
      child: JobSecondaryTap(
        haulierType: widget.haulierType,
        job: job,
        neighbouringJobs: truck.schedulerJobs,
        child:
            (job.jobStatus == StringConstants.scheduledApiValue &&
                groupedJobPosition == GroupedJobPosition.single &&
                context.userHasPermission(UserPermissions.schedulerWrite))
            ? Draggable<JobBase>(
                data: draggableData,
                feedback: SizedBox(
                  width: Constants.schedulerCellWidth * adjustedDuration,
                  height: Constants.schedulerCellHeight,
                  child: JobCell(
                    job: job,
                    schedulerPreference: schedulerPreference,
                    isDragging: true,
                    groupedJobPosition: groupedJobPosition,
                  ),
                ),
                onDragStarted: () {
                  setState(() {
                    // Hide this job immediately
                    draggingJob = job.jobNumber;
                    // Also remove from the actual list for data consistency
                    truck.schedulerJobs.remove(job);
                  });
                  widget.onDragStart();
                },
                onDragEnd: (details) {
                  widget.onDragEnd();
                  setState(() {
                    draggingJob = null;
                  });
                },
                onDragCompleted: () {
                  widget.onDragEnd();
                  setState(() {
                    // Remove from hidden jobs set on completion
                    draggingJob = null;
                    // Job stays removed from truck.schedulerJobs as
                    // it was moved elsewhere
                  });
                },
                onDraggableCanceled: (velocity, offset) {
                  widget.onDragEnd();
                  setState(() {
                    // Remove from hidden jobs and restore to list
                    draggingJob = null;
                    truck.schedulerJobs.add(job);
                    truck.schedulerJobs.sort(
                      (a, b) => a.scheduledDate.compareTo(b.scheduledDate),
                    );
                  });
                },
                child: buildTapableJobCell(
                  job,
                  selectedJobNumber,
                  jobService,
                  groupedJobPosition,
                ),
              )
            : buildTapableJobCell(
                job,
                selectedJobNumber,
                jobService,
                groupedJobPosition,
              ),
      ),
    );
  }

  Widget buildTapableJobCell(
    SchedulerJob job,
    int? selectedJobNumber,
    JobListService jobService,
    GroupedJobPosition groupedJobPosition,
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
          child: JobCell(
            job: job,
            schedulerPreference: schedulerPreference,
            groupedJobPosition: groupedJobPosition,
          ),
        ),
      ),
    );
  }

  TableViewCell buildEmptyCell(
    SchedulerTruck truck,
    int columnIndex,
    String yardCode,
  ) {
    final timeOfTheColumn = _getTimeFromColumnIndex(columnIndex);
    final gapToNextJob = _gapToNextJob(timeOfTheColumn, truck.schedulerJobs);
    return TableViewCell(
      child: borderedContainer(
        borderColor: TransportAppColors.schedulerGridLineColor,
        child: CommonDragTarget(
          targetHaulierType: widget.haulierType,
          targetVrm: truck.vrm,
          targetTruckYard: yardCode,
          targetHaulierCode: '',
          timeThisCellRepresents: timeOfTheColumn,
          gapToNextJob: gapToNextJob,
          child: const SizedBox(),
        ),
      ),
    );
  }

  /// Returns the Duration until the next job (by time-of-day), or null if none.
  int? _gapToNextJob(TimeOfDay now, List<SchedulerJob> sortedJobs) {
    final nowMins = now.hour * 60 + now.minute;

    for (final job in sortedJobs) {
      // pull out the time-of-day component of the job:
      final localScheduledTime = job.scheduledDate.toLocal();
      final startMins =
          localScheduledTime.hour * 60 + localScheduledTime.minute;
      if (startMins > nowMins) {
        final gap = startMins - nowMins;
        return gap;
      }
    }

    return null; // no future job today
  }

  TableViewCell buildVorCell(VorSchedule vor, int columnIndex) {
    final adjustedStart = columnIndex;
    final totalEnd = vor.startIndex + vor.durationSlots;

    //Scheduler can display only  "Constants.schedulerTotalColumns" columns,
    //if spanning is beyond this, UI wii not be rendered
    //Ex: VOR which spans beyond 12AM
    final adjustedDuration = totalEnd > Constants.schedulerTotalColumns
        ? Constants.schedulerTotalColumns - adjustedStart
        : totalEnd - adjustedStart;

    return TableViewCell(
      columnMergeStart: columnIndex,
      columnMergeSpan: adjustedDuration,
      child: SchedulerVorCell(vor: vor),
    );
  }

  TableViewCell buildYardNameCell(
    SchedulerGroup schedulerGroup,
    int columnIndex,
    int totalColumns,
  ) {
    if (columnIndex != 0) {
      return TableViewCell(
        columnMergeStart: 1,
        columnMergeSpan: totalColumns - 1,
        child: const DecoratedBox(
          decoration: BoxDecoration(
            color: TransportAppColors.yardCellColor,
            border: Border(
              bottom: BorderSide(color: Colors.white),
              right: BorderSide(color: Colors.white),
            ),
          ),
        ),
      );
    }

    final yardWidget = yardCell(schedulerGroup);

    if (!context.userHasPermission(UserPermissions.schedulerWrite)) {
      return TableViewCell(child: yardWidget);
    }

    return TableViewCell(
      child: YardSecondaryTap(
        yard: SchedulerYard(
          yardCode: schedulerGroup.groupTitle,
          yardName: schedulerGroup.groupSubTitle,
          trucks: schedulerGroup.trucks,
        ),
        child: yardWidget,
      ),
    );
  }

  Widget yardCell(SchedulerGroup schedulerGroup) {
    return Container(
      decoration: const BoxDecoration(
        color: TransportAppColors.yardCellColor,
        border: Border(
          bottom: BorderSide(color: Colors.white),
          right: BorderSide(color: Colors.white),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Insets.gutter / 4),
        child: Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () async {
                  setState(() {
                    schedulerGroup.isExpanded = !schedulerGroup.isExpanded;
                    widget.onYardCollapsed(
                      schedulerGroup.groupTitle,
                      isCollapsed: !schedulerGroup.isExpanded,
                    );
                    precomputedRowHeights();
                  });
                },
                child: Icon(
                  schedulerGroup.isExpanded
                      ? Icons.indeterminate_check_box_rounded
                      : Icons.add_box_sharp,
                  color: TransportAppColors.whiteTextColor,
                  size: Constants.fontSizeXL,
                ),
              ),
            ),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: Constants.schedulerTruckColumnWidth - 30,
                      child: Row(
                        children: [
                          Expanded(
                            child: SelectableText(
                              schedulerGroup.groupTitle,
                              style: Theme.of(context).textTheme.labelLarge!
                                  .copyWith(
                                    color: TransportAppColors.whiteTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          SelectableText(
                            JobHelper.getTotalCostOfSchedulerGroup(
                              schedulerGroup,
                            ),
                            maxLines: 1,
                            style: Theme.of(context).textTheme.labelSmall!
                                .copyWith(
                                  color: TransportAppColors.whiteTextColor,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 100,
                  child: Tooltip(
                    message: schedulerGroup.groupSubTitle,
                    child: Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      schedulerGroup.groupSubTitle,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: TransportAppColors.greyCardBg,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TableViewCell buildTitleCell() {
    return TableViewCell(
      child: ValueListenableBuilder(
        valueListenable: widget.is24HrFormat,
        builder: (context, value, child) {
          return TextButton(
            onPressed: () {
              widget.is24HrFormat.value = !widget.is24HrFormat.value;
            },
            child: Center(
              child: Text(
                value ? 'Change to 12 hr format' : 'Change to 24 hr format',
                style: Theme.of(
                  context,
                ).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }

  TableViewCell buildTimeSlotCell(int columnIndex) {
    return TableViewCell(
      columnMergeStart: 1,
      columnMergeSpan: 96,
      child: ValueListenableBuilder(
        valueListenable: widget.is24HrFormat,
        builder: (context, value, child) {
          return TimeIntervalWidget(
            startTime: const TimeOfDay(hour: 0, minute: 0),
            is24HourFormat: value,
          );
        },
      ),
    );
  }

  int _calculateTotalRow() {
    var rowCount = 1; //timeline row

    for (final yard in widget.truckGroupingPreference) {
      rowCount += 1; // One row for the yard name
      rowCount += yard.isExpanded
          ? yard.trucks.length
          : 0; // Rows for trucks in the yard
    }

    return rowCount;
  }

  TimeOfDay _getTimeFromColumnIndex(int columnIndex) {
    final totalMinutes = (columnIndex - 1) * 15;

    // Calculate hours and minutes
    final hours = totalMinutes ~/ 60;
    final minutes = totalMinutes % 60;
    return TimeOfDay(hour: hours, minute: minutes);
  }

  void updateScrollDirections(Offset globalPos) {
    final box = _scrollableKey.currentContext?.findRenderObject() as RenderBox?;
    if (box == null) return;
    final local = box.globalToLocal(globalPos);
    final size = box.size;
    const edge = 50.0;
    const leftEdge = Constants.schedulerTruckColumnWidth + 50;
    const topEdge = 100;

    // Only auto-scroll if pointer is within widget bounds
    if (local.dx < 0 ||
        local.dy < 0 ||
        local.dx > size.width ||
        local.dy > size.height) {
      cancelScroll();
      return;
    }

    // Determine scroll directions when pointer is within edge threshold
    _scrollLeft =
        local.dx < leftEdge && local.dx > Constants.schedulerTruckColumnWidth;
    _scrollRight = local.dx > size.width - edge;
    _scrollUp = local.dy < topEdge;
    _scrollDown = local.dy > size.height - edge;

    final shouldScroll =
        _scrollLeft || _scrollRight || _scrollUp || _scrollDown;
    if (shouldScroll && _scrollTimer == null) {
      _scrollTimer = Timer.periodic(
        const Duration(milliseconds: 50),
        (_) => _doAutoScroll(),
      );
    } else if (!shouldScroll) {
      cancelScroll();
    }
  }

  void _doAutoScroll() {
    const speed = 10.0;
    if (_scrollLeft) {
      _horizontalScrollController.jumpTo(
        (_horizontalScrollController.offset - speed).clamp(
          0.0,
          _horizontalScrollController.position.maxScrollExtent,
        ),
      );
    }
    if (_scrollRight) {
      _horizontalScrollController.jumpTo(
        (_horizontalScrollController.offset + speed).clamp(
          0.0,
          _horizontalScrollController.position.maxScrollExtent,
        ),
      );
    }
    if (_scrollUp) {
      _verticalScrollController.jumpTo(
        (_verticalScrollController.offset - speed).clamp(
          0.0,
          _verticalScrollController.position.maxScrollExtent,
        ),
      );
    }
    if (_scrollDown) {
      _verticalScrollController.jumpTo(
        (_verticalScrollController.offset + speed).clamp(
          0.0,
          _verticalScrollController.position.maxScrollExtent,
        ),
      );
    }
  }

  void scrollToJob(SchedulerJob job, double screenWidth, double screenHeight) {
    widget.truckGroupingPreference[0].trucks.indexWhere(
      (t) => t.vrm == job.vrm,
    );

    final rowIndex = widget.truckGroupingPreference[0].trucks.indexWhere(
      (t) => t.vrm == job.vrm,
    );
    final columnIndex = job.startIndex;

    // Horizontal offset
    final horizontalOffset = columnIndex * Constants.schedulerCellWidth;

    // Vertical offset
    final verticalOffset = rowIndex * Constants.schedulerCellHeight;

    // Center job in viewport
    final targetHorizontal = horizontalOffset - (screenWidth / 2) + 500;
    final targetVertical = verticalOffset - (screenHeight / 2) + 300;

    _horizontalScrollController.animateTo(
      targetHorizontal.clamp(
        0.0,
        _horizontalScrollController.position.maxScrollExtent,
      ),
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
    );

    _verticalScrollController.animateTo(
      targetVertical.clamp(
        0.0,
        _verticalScrollController.position.maxScrollExtent,
      ),
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
    );
  }

  void cancelScroll() {
    _scrollTimer?.cancel();
    _scrollTimer = null;
  }

  MouseCursor _getMouseCursor(SchedulerJob job) {
    return job.jobStatus == StringConstants.scheduledApiValue &&
            job.groupId == null
        ? SystemMouseCursors.grab
        : SystemMouseCursors.forbidden;
  }

  TableViewCell _buildTruckCell(SchedulerTruck thisTruck, String yardCode) {
    Widget buildTruckContent(String? selectedVrm) {
      final isSelected = thisTruck.vrm == selectedVrm;
      final selectedBorder = isSelected
          ? BoxDecoration(
              border: Border.all(
                width: 3,
                color: TransportAppColors.selectedJobBg,
              ),
            )
          : null;

      return Container(
        foregroundDecoration: selectedBorder,
        child: SchedulerTruckCell(truck: thisTruck),
      );
    }

    final truckContent = ValueListenableBuilder<String?>(
      valueListenable: _selectedTruckVrm,
      builder: (context, selectedVrm, _) => buildTruckContent(selectedVrm),
    );

    if (context.userHasPermission(UserPermissions.schedulerWrite)) {
      return TableViewCell(
        child: TruckSecondaryTap(
          truck: thisTruck,
          child: GestureDetector(
            onTap: () => _handleTruckTapped(thisTruck, yardCode),
            child: truckContent,
          ),
        ),
      );
    }
    return TableViewCell(child: truckContent);
  }
}
