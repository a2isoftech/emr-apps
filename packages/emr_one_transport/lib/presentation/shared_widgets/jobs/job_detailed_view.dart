import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/location_info.dart';
import 'package:emr_one_transport/data/models/jobs/container_details.dart';
import 'package:emr_one_transport/data/models/jobs/driver_event.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/services/date_helper.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/delay_summary_banner.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class JobDetailedView extends StatefulWidget {
  const JobDetailedView({
    required this.showTitleBar,
    required this.jobNumber,
    super.key,
  });

  final int jobNumber;
  final bool showTitleBar;
  @override
  State<JobDetailedView> createState() => _JobDetailedViewState();
}

class _JobDetailedViewState extends State<JobDetailedView> {
  final containerDataGridController = EmrGridController<_ContainerGridRow>(
    data: ValueNotifier([]),
  );

  final delayDataGridController = EmrGridController<DriverEvent>(
    data: ValueNotifier([]),
  );

  @override
  Widget build(BuildContext context) {
    return _buildJobFromServer();
  }

  Widget _buildJobFromServer() {
    final jobService = Provider.of<JobListService>(context, listen: false);

    return FutureBuilder<JobList?>(
      future: jobService.getJobDetailsByJobNumber(widget.jobNumber),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        final job = snapshot.data;
        if (job == null) {
          return const Center(child: Text(StringConstants.noData));
        }

        return _build(job);
      },
    );
  }

  Widget _build(JobList job) {
    final (customerLocnContainers, startLocnContainers) = _getContainers(job);

    return SafeArea(
      child: ColoredBox(
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : Theme.of(context).colorScheme.surface,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(Insets.gutter),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.showTitleBar) _buildHeader(job),
              const SizedBox(height: Insets.gutter),
              _buildTopMeta(job),
              const SizedBox(height: Insets.gutter),
              if (job.progressMinutes != null && job.progressMinutes != 0)
                SummaryBanner(
                  plannedDuration: Duration(minutes: job.duration!),
                  delays: job.delays!,
                  jobStartedAt: job.jobCompletionDetails?.startedAt,
                  jobEndedAt: job.jobCompletionDetails?.finishedAt,
                ),
              _buildSection(
                title: context.l10n.basicDetails,
                initiallyExpanded: true,
                child: _buildResponsiveSectionItems([
                  _detailItem(
                    context.l10n.customerLocation,
                    _addressOrDash(job.customerLocation),
                  ),
                  _detailItem(
                    context.l10n.startLocation,
                    _addressOrDash(job.startLocation),
                  ),
                  _detailItem(
                    context.l10n.endLocation,
                    _addressOrDash(job.endLocation),
                  ),
                  _detailItem(
                    context.l10n.jobDuration,
                    '${DateHelper.formatDuration(Duration(minutes: job.progressMinutes ?? 0))} / ${DateHelper.formatDuration(Duration(minutes: job.duration ?? 0))}',
                  ),
                  if (job.sourceId != null)
                    _detailItem(
                      context.l10n.source,
                      '${job.source ?? ''} - ${job.sourceId!.split('/').last}',
                      isLink: true,
                    ),
                  if ((job.customer?.sicCode ?? '').isNotEmpty)
                    _detailItem(context.l10n.sicCode, job.customer!.sicCode!),
                  _detailItem(
                    context.l10n.product,
                    StringHelper.buildProductsString(
                      job.productFamily?.products,
                    ),
                  ),
                ]),
              ),

              _buildSection(
                title: context.l10n.schedule,
                initiallyExpanded: true,
                child: _buildResponsiveSectionItems([
                  _detailItem(context.l10n.haulier, _buildHaulerText(job)),
                  _detailItem(
                    context.l10n.truck,
                    _textOrDash(job.haulier?.vrm),
                  ),
                  _detailItem(
                    context.l10n.provisionalRate,
                    _buildRateText(job),
                  ),
                  _detailItem(
                    context.l10n.scheduledDate,
                    formatDateTime(job.scheduledDate),
                  ),
                  _detailItem(
                    context.l10n.dueDateLabel,
                    formatDateTime(job.dueDate),
                  ),
                  _detailItem(
                    context.l10n.createdAt,
                    formatDateTime(job.created?.at),
                  ),
                  _detailItem(
                    context.l10n.lastActionedModified,
                    formatDateTime(job.modified?.at),
                  ),
                ]),
              ),

              _buildSection(
                title: context.l10n.containers,
                initiallyExpanded: true,
                child: _buildContainersTable(
                  customerLocnContainers: customerLocnContainers,
                  startLocnContainers: startLocnContainers,
                ),
              ),

              if (job.delays != null && job.delays!.isNotEmpty)
                _buildSection(
                  title: '${context.l10n.delays} (${job.delays!.length})',
                  initiallyExpanded: true,
                  child: _buildDelaytable(job.delays!),
                ),
              _buildSection(
                title: context.l10n.note,
                initiallyExpanded: true,
                child: _buildResponsiveSectionItems([
                  _detailItem(
                    context.l10n.dispatcherNotes,
                    _textOrDash(job.dispatcherNotes),
                  ),
                  _detailItem(
                    context.l10n.officeNotes,
                    _textOrDash(job.officeNotes),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  (List<ContainerDetails>, List<ContainerDetails>) _getContainers(JobList job) {
    final containers = job.containers;

    var startLocnContainers =
        containers?.startLocationContainerDetails
            ?.where((e) => e.active ?? false)
            .toList() ??
        <ContainerDetails>[];

    var customerLocnContainers =
        containers?.customerLocationContainerDetails
            ?.where((e) => e.active ?? false)
            .toList() ??
        <ContainerDetails>[];

    if (job.jobType == JobType.pullAndReturn.apiValue) {
      customerLocnContainers = customerLocnContainers.isNotEmpty
          ? [customerLocnContainers.first]
          : [];
      startLocnContainers = customerLocnContainers;
    }

    return (customerLocnContainers, startLocnContainers);
  }

  Widget _buildHeader(JobList job) {
    return Row(
      children: [
        Text(
          context.l10n.job,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        SelectableText(
          ' ${job.jobNumber}',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Spacer(),
        IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.close),
        ),
      ],
    );
  }

  Widget _buildTopMeta(JobList job) {
    return Wrap(
      spacing: Insets.gutter / 2,
      runSpacing: Insets.gutter / 2,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        SelectableText(
          jobTypeFromApiValue(job.jobType ?? '').toString(),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        EmrStatusChip(text: job.jobStatus ?? ''),
        if ((job.dispatchYard ?? '').isNotEmpty)
          _chip(label: job.dispatchYard!),
      ],
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

  Widget _buildResponsiveSectionItems(List<Widget> items) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth >= 700;

        if (!isWide) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < items.length; i++) ...[
                items[i],
                if (i != items.length - 1)
                  const SizedBox(height: Insets.gutter),
              ],
            ],
          );
        }

        final itemWidth = (constraints.maxWidth - Insets.gutter) / 2;

        return Wrap(
          spacing: Insets.gutter,
          runSpacing: Insets.gutter,
          children: items
              .map((item) => SizedBox(width: itemWidth, child: item))
              .toList(),
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

  Widget _detailItem(String label, String value, {bool isLink = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          label,
          style: Theme.of(
            context,
          ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: Insets.gutter / 4),
        SelectableText(
          value.isEmpty ? StringConstants.noData : value,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: isLink
                ? TransportAppColors.inProgressJobColor
                : Theme.of(context).colorScheme.onSurface,
            decoration: isLink ? TextDecoration.underline : null,
          ),
        ),
      ],
    );
  }

  Widget _buildContainersTable({
    required List<ContainerDetails> customerLocnContainers,
    required List<ContainerDetails> startLocnContainers,
  }) {
    const rowHeight = 60.0;

    final rows = [
      ...customerLocnContainers.map(
        (e) => _ContainerGridRow(action: context.l10n.pick, container: e),
      ),
      ...startLocnContainers.map(
        (e) => _ContainerGridRow(action: context.l10n.drop, container: e),
      ),
    ];

    containerDataGridController.data.value = rows;

    return SizedBox(
      height: (rows.length + 1) * rowHeight,
      child: EmrGrid(
        controller: containerDataGridController,
        columns: [
          EmrGridColumn<_ContainerGridRow>(
            headerBuilder: () => EmrGridHeader(text: context.l10n.actions),
            cellBuilder: (item) => SelectableText(item.action),
          ),
          EmrGridColumn<_ContainerGridRow>(
            headerBuilder: () =>
                EmrGridHeader(text: context.l10n.containerType),
            cellBuilder: (item) =>
                SelectableText(item.container.containerType ?? ''),
          ),
          EmrGridColumn<_ContainerGridRow>(
            headerBuilder: () => EmrGridHeader(text: context.l10n.container),
            cellBuilder: (item) =>
                SelectableText(item.container.assetNumberUsed ?? ''),
          ),
        ],
      ),
    );
  }

  String _buildHaulerText(JobList job) {
    final haulier = job.haulier;
    final parts = [
      haulier?.haulierCode,
      haulier?.haulierName,
    ].where((e) => e != null && e.trim().isNotEmpty).map((e) => e!).toList();

    return parts.isEmpty ? StringConstants.noData : parts.join(' - ');
  }

  String _buildRateText(JobList job) {
    final currency = job.provisionalCost?.currencyCode ?? '';
    final amount = job.provisionalCost?.finalRate?.toString() ?? '';
    final text = '$currency$amount'.trim();
    return text.isEmpty ? StringConstants.noData : text;
  }

  String formatDateTime(dynamic date) {
    if (date == null) return StringConstants.noData;

    DateTime? parsed;

    if (date is DateTime) {
      parsed = date;
    } else if (date is String) {
      parsed = DateTime.tryParse(date);
    }

    if (parsed == null) return StringConstants.noData;

    final local = parsed.toLocal();
    final localization = MaterialLocalizations.of(context);

    final dateStr = localization.formatShortDate(local);
    final timeStr = localization.formatTimeOfDay(TimeOfDay.fromDateTime(local));

    return '$dateStr $timeStr';
  }

  String _addressOrDash(LocationInfo? location) {
    if (location == null) return StringConstants.noData;
    return StringHelper.buildAddress(location);
  }

  String _textOrDash(String? value) {
    if (value == null || value.trim().isEmpty) return StringConstants.noData;
    return value;
  }

  Widget _buildDelaytable(List<DriverEvent> delayList) {
    const rowHeight = 60.0;
    delayDataGridController.data.value = delayList;
    final totalDuration = delayList
        .where((i) => i.ended != null)
        .fold<Duration>(
          Duration.zero,
          (total, i) => total + i.ended!.difference(i.started!),
        );
    final totalFormattedDuration = DateHelper.formatDuration(totalDuration);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          '${context.l10n.totalDelayImpact}: $totalFormattedDuration',
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: (delayList.length + 1) * rowHeight,
          child: EmrGrid(
            controller: delayDataGridController,
            columns: [
              EmrGridColumn<DriverEvent>(
                headerBuilder: () => EmrGridHeader(text: context.l10n.time),
                cellBuilder: (item) => SelectableText(
                  DateFormat('hh:mm a').format(item.started!.toLocal()),
                ),
              ),
              EmrGridColumn<DriverEvent>(
                headerBuilder: () => EmrGridHeader(text: context.l10n.duration),
                cellBuilder: (item) => SelectableText(
                  DateHelper.formatDurationFromDates(item.started, item.ended),
                ),
              ),
              EmrGridColumn<DriverEvent>(
                headerBuilder: () => EmrGridHeader(text: context.l10n.reason),
                cellBuilder: (item) {
                  final displayText = item.data?.isNotEmpty ?? false
                      ? item.data!.first.value
                      : (item.subType ?? '');

                  return SelectableText(displayText);
                },
              ),
              EmrGridColumn<DriverEvent>(
                headerBuilder: () => EmrGridHeader(text: context.l10n.comments),
                cellBuilder: (item) {
                  return SelectableText(item.comments ?? '');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ContainerGridRow {
  _ContainerGridRow({required this.action, required this.container});

  final String action;
  final ContainerDetails container;
}
