import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/scheduler/truck_job_info_controller.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:emr_one_transport/data/models/vor/vor_schedule.dart';
import 'package:emr_one_transport/data/services/date_helper.dart';
import 'package:emr_one_transport/data/services/job_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TruckJobInfoView extends StatefulWidget {
  const TruckJobInfoView({
    required this.truck,
    required this.date,
    required this.yardCode,
    super.key,
  });

  final SchedulerTruck truck;
  final DateTime date;
  final String yardCode;

  @override
  State<TruckJobInfoView> createState() => _TruckJobInfoViewState();
}

class _TruckJobInfoViewState extends State<TruckJobInfoView> {
  late final TruckJobInfoController _controller;
  late final Future<void> _initializeFuture;

  final _jobsGridController = EmrGridController<SchedulerJob>(
    data: ValueNotifier([]),
  );

  final _activeVorGridController = EmrGridController<VORSchedule>(
    data: ValueNotifier([]),
  );

  final _futureVorGridController = EmrGridController<VORSchedule>(
    data: ValueNotifier([]),
  );

  @override
  void initState() {
    super.initState();
    _controller = context.read<TruckJobInfoController>();
    _initializeFuture = _controller.initialize(widget.truck.vrm, widget.date);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initializeFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text(context.l10n.errorAndTryAgainMsg));
        }

        final totalCost = JobHelper.getTotalCostOfJobs(widget.truck);
        final jobsTitle = totalCost.trim().isEmpty
            ? context.l10n.assignedJobs
            : '${context.l10n.assignedJobs} ($totalCost)';
        final activeVorCount = _controller.activeVorOnDate.length;
        final activeVorTitle = activeVorCount == 0
            ? '${context.l10n.activeVorOn} ${_formatDate(context, widget.date)}'
            : '${context.l10n.activeVorOn} ${_formatDate(context, widget.date)}'
                  ' ($activeVorCount)';
        final futureVorCount = _controller.futureVors.length;
        final futureVorTitle = futureVorCount == 0
            ? context.l10n.upcomingVOR
            : '${context.l10n.upcomingVOR} ($futureVorCount)';

        return SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(Insets.gutter),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.truck.vrm,
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Wrap(
                            spacing: Insets.gutter / 2,
                            runSpacing: Insets.gutter / 2,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                widget.truck.driverName ??
                                    StringConstants.noData,
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              if (widget.yardCode.trim().isNotEmpty)
                                _chip(label: widget.yardCode),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () => context.pop(),
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
                const SizedBox(height: Insets.gutter),
                _buildSection(
                  title: jobsTitle,
                  initiallyExpanded: true,
                  child: widget.truck.schedulerJobs.isEmpty
                      ? _buildEmptyState(context)
                      : _buildJobsTable(context),
                ),
                _buildSection(
                  title: activeVorTitle,
                  initiallyExpanded: true,
                  child: _controller.activeVorOnDate.isEmpty
                      ? _buildEmptyState(context)
                      : _buildVorTable(
                          context,
                          _controller.activeVorOnDate,
                          _activeVorGridController,
                        ),
                ),
                _buildSection(
                  title: futureVorTitle,
                  initiallyExpanded: true,
                  child: _controller.futureVors.isEmpty
                      ? _buildEmptyState(context)
                      : _buildVorTable(
                          context,
                          _controller.futureVors,
                          _futureVorGridController,
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSection({
    required String title,
    required Widget child,
    bool initiallyExpanded = false,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: ExpansionTile(
        initiallyExpanded: initiallyExpanded,
        collapsedBackgroundColor:
            Theme.of(context).brightness == Brightness.light
            ? TransportAppColors.expantionTileColor
            : Theme.of(context).colorScheme.surfaceContainer,
        backgroundColor: Theme.of(context).brightness == Brightness.light
            ? TransportAppColors.expantionTileColor
            : Theme.of(context).colorScheme.surfaceContainer,
        title: Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: Insets.gutter,
              vertical: Insets.gutter / 2,
            ),
            color: Theme.of(context).colorScheme.surface,
            child: child,
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
      child: Text(context.l10n.noDataFound),
    );
  }

  Widget _chip({required String label}) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Insets.gutter,
        vertical: Insets.gutter / 4,
      ),
      decoration: BoxDecoration(
        color: TransportAppColors.inProgressJobColor,
        borderRadius: BorderRadius.circular(Insets.gutter / 4),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: TransportAppColors.whiteTextColor,
        ),
      ),
    );
  }

  Widget _buildJobsTable(BuildContext context) {
    final jobs = widget.truck.schedulerJobs;
    _jobsGridController.data.value = jobs;

    return SizedBox(
      height: 200,
      child: EmrGrid(
        controller: _jobsGridController,
        columns: [
          EmrGridColumn<SchedulerJob>(
            headerBuilder: () => EmrGridHeader(text: context.l10n.jobNumber),
            cellBuilder: (item) => SelectableText(item.jobNumber.toString()),
          ),
          EmrGridColumn<SchedulerJob>(
            headerBuilder: () => EmrGridHeader(text: context.l10n.duration),
            cellBuilder: (item) => SelectableText(
              DateHelper.formatDuration(Duration(minutes: item.duration)),
            ),
          ),
          EmrGridColumn<SchedulerJob>(
            headerBuilder: () =>
                EmrGridHeader(text: context.l10n.provisionalRate),
            cellBuilder: (item) =>
                SelectableText(JobHelper.getFormattedCostOfJob(item)),
          ),
        ],
      ),
    );
  }

  Widget _buildVorTable(
    BuildContext context,
    List<VORSchedule> vorSchedules,
    EmrGridController<VORSchedule> controller,
  ) {
    controller.data.value = vorSchedules;

    return SizedBox(
      height: 200,
      child: EmrGrid(
        controller: controller,
        columns: [
          EmrGridColumn<VORSchedule>(
            headerBuilder: () => EmrGridHeader(text: context.l10n.start),
            cellBuilder: (item) =>
                SelectableText(_formatDateTime(context, item.startDateTime)),
          ),
          EmrGridColumn<VORSchedule>(
            headerBuilder: () => EmrGridHeader(text: context.l10n.end),
            cellBuilder: (item) =>
                SelectableText(_formatDateTime(context, item.endDateTime)),
          ),
          EmrGridColumn<VORSchedule>(
            headerBuilder: () => EmrGridHeader(text: context.l10n.reason),
            cellBuilder: (item) =>
                SelectableText(item.reason ?? StringConstants.noData),
          ),
          EmrGridColumn<VORSchedule>(
            headerBuilder: () => EmrGridHeader(text: context.l10n.notes),
            cellBuilder: (item) =>
                SelectableText(item.notes ?? StringConstants.noData),
          ),
        ],
      ),
    );
  }

  String _formatDate(BuildContext context, DateTime dt) {
    return MaterialLocalizations.of(context).formatShortDate(dt.toLocal());
  }

  String _formatDateTime(BuildContext context, DateTime? dt) {
    if (dt == null) return StringConstants.noData;
    final local = dt.toLocal();
    final loc = MaterialLocalizations.of(context);
    return '${loc.formatShortDate(local)} '
        '${loc.formatTimeOfDay(TimeOfDay.fromDateTime(local))}';
  }
}
