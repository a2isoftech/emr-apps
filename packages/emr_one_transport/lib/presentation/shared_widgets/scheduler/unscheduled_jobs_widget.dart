import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/data/controllers/scheduler/unschedule_controller.dart';
import 'package:emr_one_transport/data/models/scheduler/job_base.dart';
import 'package:emr_one_transport/data/models/scheduler/unscheduled_job.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/job_detailed_view.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/unscheduled_job_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UnscheduledJobsWidget extends StatefulWidget {
  const UnscheduledJobsWidget({
    required this.onDragStart,
    required this.onDragEnd,
    required this.unscheduleController,
    super.key,
  });

  final VoidCallback onDragStart;
  final VoidCallback onDragEnd;
  final UnscheduleController unscheduleController;
  @override
  State<UnscheduledJobsWidget> createState() => UnscheduledJobsWidgetState();
}

class UnscheduledJobsWidgetState extends State<UnscheduledJobsWidget> {
  late final TextEditingController _searchController;
  late final ScrollController _scrollController;
  UnscheduledJob? draggingItem;
  int? draggingIndex;

  late final ValueNotifier<String> _searchTermNotifier;
  late final ValueNotifier<bool> _sortAscNotifier;

  @override
  void initState() {
    super.initState();

    _searchTermNotifier = widget.unscheduleController.searchTermNotifier;
    _searchTermNotifier.addListener(_updateSearchTextController);
    _sortAscNotifier = widget.unscheduleController.sortAscNotifier;
    // 1) sync text field with controller.searchTerm
    _searchController = TextEditingController(
      text: widget.unscheduleController.searchTermNotifier.value,
    );

    widget.unscheduleController.startListening();
    // 2) listen to controller for any state changes
    widget.unscheduleController.addListener(_onControllerChanged);

    // 3) infinite‐scroll setup
    _scrollController = ScrollController()..addListener(_onScroll);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    _searchTermNotifier.removeListener(_updateSearchTextController);
    widget.unscheduleController.removeListener(_onControllerChanged);
    final searchKey = widget.unscheduleController.searchTermNotifier.value;
    if (_searchController.text != searchKey) {
      _searchController.text = searchKey;
      _searchController.selection = TextSelection.collapsed(
        offset: _searchController.text.length,
      );
    }
    super.dispose();
  }

  void _onControllerChanged() {
    // simply rebuild when any part of controller changes
    setState(() {});
  }

  void _onScroll() {
    final pos = _scrollController.position;
    if (pos.pixels >= pos.maxScrollExtent - 200 &&
        !widget.unscheduleController.isLoadingMore &&
        widget.unscheduleController.hasMore) {
      widget.unscheduleController.loadMoreJobs();
    }
  }

  void _updateSearchTextController() {
    final searchKey = widget.unscheduleController.searchTermNotifier.value;
    if (_searchController.text != searchKey) {
      _searchController.text = searchKey;
      _searchController.selection = TextSelection.collapsed(
        offset: _searchController.text.length,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final plans = widget.unscheduleController.plans;
    final jobs = widget.unscheduleController.jobs;
    final showSpinner = widget.unscheduleController.hasMore;
    final totalCount = plans.length + jobs.length + (showSpinner ? 1 : 0);

    return AnimatedBuilder(
      animation: widget.unscheduleController,
      builder: (context, a) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            boxShadow: const [
              BoxShadow(
                color: TransportAppColors.boxShadowColor,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            spacing: 10,
            children: [
              // Header (Fixed Height)
              Container(
                height: 30,
                width: double.infinity,
                color: TransportAppColors.blueBg,
                alignment: Alignment.center,
                child: Text(
                  'Unscheduled Jobs (${plans.length + jobs.length})',
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall!.copyWith(color: Colors.white),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: Insets.gutter),
                child: Row(
                  spacing: Insets.gutter / 4,
                  children: [
                    Expanded(child: _buildSearchBar()),
                    _buildSortButton(),
                  ],
                ),
              ),
              if (widget.unscheduleController.isSearching)
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Insets.gutter,
                    vertical: Insets.gutter / 2,
                  ),
                  child: CircularProgressIndicator(),
                ),
              // Body: plans + jobs + spinner
              Expanded(
                child: (plans.isEmpty && jobs.isEmpty && !showSpinner)
                    ? const Center(child: Text(StringConstants.noData))
                    : ListView.builder(
                        controller: _scrollController,
                        itemCount: totalCount,
                        itemBuilder: (context, index) {
                          // 1) plans section
                          if (index < plans.length) {
                            return _buildDraggable(plans[index]);
                          }
                          // 2) jobs section
                          final jobIndex = index - plans.length;
                          if (jobIndex < jobs.length) {
                            return _buildDraggable(jobs[jobIndex]);
                          }
                          // 3) loading spinner
                          return const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        },
                      ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDraggable(UnscheduledJob job) {
    final payload = job.planNumber != null
        ? PlanWrapper(job)
        : UnscheduledJobWrapper(job);
    final jobService = Provider.of<JobListService>(context);
    return GestureDetector(
      onTap: () => _handleSelection(job.jobNumber, jobService),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Insets.gutter,
          vertical: Insets.gutter / 4,
        ),
        child: context.userHasPermission(UserPermissions.schedulerWrite)
            ? Draggable<JobBase>(
                data: payload,
                feedback: Opacity(
                  opacity: Constants.opacityOfJobCellsWhileDragging,
                  child: Material(
                    child: UnscheduledJobCard(unscheduledJob: job),
                  ),
                ),
                onDragStarted: widget.onDragStart,
                onDragEnd: (_) => widget.onDragEnd(),
                onDraggableCanceled: (_, __) => widget.onDragEnd(),
                child: Material(
                  child: MouseRegion(
                    cursor: SystemMouseCursors.grab,
                    child: UnscheduledJobCard(unscheduledJob: job),
                  ),
                ),
              )
            : UnscheduledJobCard(unscheduledJob: job),
      ),
    );
  }

  Future<void> _handleSelection(
    int? jobNumber,
    JobListService jobService,
  ) async {
    if (jobNumber != null) {
      await EmrModal.showModalBottomSheetOrFlyout<void>(
        context,
        child: Provider<JobListService>.value(
          value: jobService,
          child: JobDetailedView(jobNumber: jobNumber, showTitleBar: true),
        ),
      );
    }
  }

  Widget _buildSearchBar() {
    return TextFormField(
      controller: _searchController,
      onChanged: (text) {
        widget.unscheduleController.updateSearchTerm(text);
      },
      style: Theme.of(context).textTheme.labelMedium,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: Theme.of(context).textTheme.labelMedium,
        prefixIcon: const Icon(Icons.search),
      ),
    );
  }

  Widget _buildSortButton() {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          widget.unscheduleController.toggleSortOrder();
        },
        child: Container(
          width: 60,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: TransportAppColors.darkBg,
          ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _sortAscNotifier.value
                      ? StringConstants.asc
                      : StringConstants.desc,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: TransportAppColors.whiteTextColor,
                  ),
                ),
                const SizedBox(width: Insets.gutter / 4),
                Icon(
                  _sortAscNotifier.value
                      ? Icons.arrow_upward
                      : Icons.arrow_downward,
                  size: Constants.iconSizeS,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
