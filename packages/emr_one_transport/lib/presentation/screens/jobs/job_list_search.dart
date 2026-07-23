import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/emr_one_notification_controller.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/favourite_filters/favourite_filter_widget.dart';
import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/permissions/user_permissions.dart';
import 'package:emr_one_transport/core/routing/routing_path.dart';
import 'package:emr_one_transport/data/controllers/common/job_quick_clone_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/delete_job_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/job_create_edit_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/job_schedule_controller.dart';
import 'package:emr_one_transport/data/controllers/jobs/joblist_search_filter_controller.dart';
import 'package:emr_one_transport/data/dataSources/job_list_data.dart';
import 'package:emr_one_transport/data/helpers/navigation_helper.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/presentation/screens/jobs/delete_jobs.dart';
import 'package:emr_one_transport/presentation/screens/jobs/edit_or_clone_job.dart';
import 'package:emr_one_transport/presentation/screens/jobs/job_card.dart';
import 'package:emr_one_transport/presentation/shared_widgets/app_modal.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/error_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/message_utility.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/print_dispatch_slip_widget.dart';
import 'package:emr_one_transport/presentation/shared_widgets/common/success_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/job_detailed_view.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/quick_clone_job_dialog.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/quick_schedule_job_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class JobListSearch extends StatefulWidget with OmniSearch {
  const JobListSearch({super.key});

  @override
  State<JobListSearch> createState() => _JobListSearchState();
}

class _JobListSearchState extends State<JobListSearch> {
  late final EmrGridController<JobList> _gridController;
  late final EmrQueryLayoutController<JobList> _queryLayoutController;
  late JobListSearchFilterController filterController;
  late JobListsDataSource gridDataSource;
  final deleteJobformKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    _queryLayoutController = Provider.of<EmrQueryLayoutController<JobList>>(
      context,
      listen: false,
    );

    _gridController = EmrGridController<JobList>(
      data: _queryLayoutController.dataSource.data,
      rowSelectionMode: RowSelectionMode.multiple,
      showLoader: _queryLayoutController.dataSource.loading,
      onSelectedRowsChanged: (selectedRows) {
        _showBottomSheet();
      },
    );

    filterController =
        _queryLayoutController.filterController!
            as JobListSearchFilterController;

    gridDataSource = _queryLayoutController.dataSource as JobListsDataSource;

    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
      _showBottomSheet();
    };
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final dateFormatter = DateFormat.yMd(
      Localizations.localeOf(context).toLanguageTag(),
    );
    filterController.initilize(dateFormatter);
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _addSwitchViewButton() {
    return ValueListenableBuilder(
      valueListenable: filterController.searchView,
      builder: (parentContext, value, child) {
        return Tooltip(
          message: value == JobListSearchView.listView
              ? context.l10n.cardView
              : context.l10n.listview,
          child: IconButton(
            icon: value == JobListSearchView.listView
                ? const Icon(Icons.grid_view)
                : const Icon(Icons.view_list),
            onPressed: () {
              if (value == JobListSearchView.listView) {
                filterController.searchView.value = JobListSearchView.cardView;
              } else if (value == JobListSearchView.cardView) {
                filterController.searchView.value = JobListSearchView.listView;
              }
            },
          ),
        );
      },
    );
  }

  Widget _addCreateJobButton() {
    return FilledButton(
      style: EmrButtonStyles.cta(),
      onPressed: () async {
        context.goNamed(RoutingPathName.createJob);
      },
      child: Text(context.l10n.createJob),
    );
  }

  Widget _getFavouritFilterWidget() {
    const moduleName = StringConstants.jobsTransportModule;
    return MenuAnchor(
      builder:
          (BuildContext context, MenuController menuController, Widget? child) {
            return IconButton(
              onPressed: () {
                if (menuController.isOpen) {
                  menuController.close();
                } else {
                  menuController.open();
                }
              },
              icon: const Icon(Icons.filter_alt),
              tooltip: context.l10n.favouriteFilters,
            );
          },
      menuChildren: [
        if (_queryLayoutController.filterController != null)
          Column(
            children: [
              FavouriteFilters(
                module: moduleName,
                filterController: _queryLayoutController.filterController!,
                dataSource: _queryLayoutController.dataSource,
              ),
            ],
          ),
      ],
    );
  }

  Widget _addCreateStandingOrderFromJob() {
    final numberOfrowsSelected = _gridController.selectedRows.value.length;
    final selectedJob = _gridController.selectedRows.value;
    return Opacity(
      opacity: numberOfrowsSelected == 1 ? 1 : 0.5,
      child: Column(
        children: [
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.arrowRightArrowLeft),
            onPressed: numberOfrowsSelected == 1
                ? () {
                    context.goNamed(
                      RoutingPathName.createStandingOrder,
                      extra: selectedJob.first,
                    );
                  }
                : null,
          ),
          Text(
            context.l10n.createStandingOrder,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            context.l10n.fromThisJob,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _addQuickScheduleButton() {
    final jobScheduleController = Provider.of<JobScheduleController>(
      context,
      listen: false,
    );
    final numberOfrowsSelected = _gridController.selectedRows.value.length;
    final isQuickScheduleEnabled =
        numberOfrowsSelected == 1 &&
        _gridController.selectedRows.value[0].jobStatus!.toLowerCase() ==
            JobStatus.pending.name;
    return Opacity(
      opacity: isQuickScheduleEnabled ? 1 : 0.5,
      child: Column(
        children: [
          IconButton(
            icon: const Icon(Icons.bolt),
            onPressed: () => isQuickScheduleEnabled
                ? EmrDialog.modal<void>(
                    context,
                    titleText:
                        '${context.l10n.quickScheduleJob} : '
                        '#${_gridController.selectedRows.value[0].jobNumber}',
                    builder: (_) => ChangeNotifierProvider.value(
                      value: jobScheduleController,
                      child: QuickScheduleJobDialog(
                        jobDetails: _gridController.selectedRows.value[0],
                      ),
                    ),
                    acceptLabel: context.l10n.quickSchedule,
                    onAccept: () async {
                      final actionResult = await jobScheduleController.save();
                      if (!mounted) return;

                      if (actionResult.status == ActionStatus.apiSuccess) {
                        unawaited(_queryLayoutController.dataSource.refresh());
                      }
                      MessageUtility.handleResult(context, actionResult);
                    },
                  )
                : null,
          ),
          Text(
            context.l10n.quickSchedule,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _addLocateButton() {
    final numberOfrowsSelected = _gridController.selectedRows.value.length;
    return Opacity(
      opacity: numberOfrowsSelected == 1 && _canJobLocated() ? 1 : 0.5,
      child: Column(
        children: [
          IconButton(
            icon: const Icon(Icons.location_searching_rounded),
            onPressed: numberOfrowsSelected == 1 && _canJobLocated()
                ? () {
                    final selectedJob = _gridController.selectedRows.value[0];

                    final url = context.namedLocation(
                      RoutingPathName.locateJob,
                      params: {
                        StringConstants.jobNumberUrlName:
                            '${selectedJob.jobNumber}',
                      },
                    );

                    NavigationHelper.openInNewTab(url);
                  }
                : null,
          ),
          Text(
            context.l10n.locate,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _addCloneButton() {
    final numberOfrowsSelected = _gridController.selectedRows.value.length;
    final selectedJobs = _gridController.selectedRows.value;
    return Opacity(
      opacity: numberOfrowsSelected == 1 ? 1 : 0.5,
      child: Column(
        children: [
          IconButton(
            icon: const Icon(Icons.copy_rounded),
            onPressed: () async {
              if (numberOfrowsSelected != 1) return;
              final isCloned = await showDialog<bool?>(
                context: context,
                barrierDismissible: false,
                builder: (_) => AppModal(
                  height: 800,
                  width: 1500,
                  title:
                      '${context.l10n.cloneJob} '
                      '#${selectedJobs.first.jobNumber}',
                  content: EditOrCloneJob(
                    jobNumber: selectedJobs.first.jobNumber ?? 0,
                    jobListService: Provider.of<JobListService>(
                      context,
                      listen: false,
                    ),
                    controller: Provider.of<JobCreateEditController>(
                      context,
                      listen: false,
                    ),
                    mode: JobMode.clone,
                    appConfig: Provider.of<AppConfig>(context),
                  ),
                ),
              );
              if (isCloned ?? false == true) {
                await gridDataSource.refresh();
              }
            },
          ),
          Text(
            context.l10n.clone,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _addPrintButton() {
    final jobListService = Provider.of<JobListService>(context, listen: false);
    final numberOfrowsSelected = _gridController.selectedRows.value.length;
    final selectedJobStatus =
        _gridController.selectedRows.value.firstOrNull?.jobStatus;
    final enabled =
        numberOfrowsSelected == 1 &&
        (selectedJobStatus == StringConstants.startedApiValue ||
            selectedJobStatus == StringConstants.scheduledApiValue ||
            selectedJobStatus == StringConstants.completedApiValue ||
            selectedJobStatus == StringConstants.abandonedApiValue);
    return Opacity(
      opacity: (numberOfrowsSelected == 1 && enabled) ? 1 : 0.5,
      child: Column(
        children: [
          PrintDispatcherSlipWidget(
            job: _gridController.selectedRows.value.firstOrNull,
            jobService: jobListService,
            isEnabled: enabled,
          ),
          Text(
            context.l10n.download,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            context.l10n.dispatchSlip,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _addDeleteButton() {
    final notificationController = context.read<EmrOneNotificationController>();
    final deletableJobs = _gridController.selectedRows.value
        .where(
          (j) =>
              j.jobStatus == StringConstants.pendingApiValue ||
              j.jobStatus == StringConstants.scheduledApiValue,
        )
        .toList();
    return Opacity(
      opacity: deletableJobs.isNotEmpty ? 1 : 0.5,
      child: Column(
        children: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: deletableJobs.isEmpty
                ? null
                : () {
                    final deleteJobController =
                        Provider.of<DeleteJobController>(
                          context,
                          listen: false,
                        );

                    EmrDialog.modal<void>(
                      context,
                      titleText: '${context.l10n.deleteJob} :',
                      builder: (_) => DeleteJobsDialog(
                        jobNumbers: deletableJobs
                            .map((e) => e.jobNumber!)
                            .toList(),
                        deleteReasons: filterController.deleteReasons,
                        queryLayoutController: _queryLayoutController,
                        controller: deleteJobController,
                        key: deleteJobformKey,
                      ),
                      acceptLabel: context.l10n.delete,
                      isDanger: true,
                      onAccept: () async {
                        if (deleteJobformKey.currentState?.validate() ??
                            false == true) {
                          final response = await deleteJobController
                              .proceedforDeletion();
                          if (!mounted) return;
                          if (response.isSuccess) {
                            await SuccessAlertWidget.showSuccessMessage(
                              context,
                              context.l10n.jobsDeletedSuccessfully,
                            );
                            await _queryLayoutController.dataSource.refresh();
                          } else {
                            await ErrorAlertWidget.showErrorMessage(
                              context,
                              response.errorMessage.isNotEmpty
                                  ? response.errorMessage
                                  : context.l10n.errorAndTryAgainMsg,
                            );
                          }
                          if (!mounted) return;
                          Navigator.of(context).pop();
                        } else {
                          notificationController.showNotification(
                            EmrOneErrorNotification(
                              title: context.l10n.error,
                              description: context.l10n.requiredFieldsErrorMsg,
                            ),
                          );
                        }
                      },
                    );
                  },
          ),
          Text(
            context.l10n.delete,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  void addActions() {
    _queryLayoutController.actionsBuilder = (context) => ValueListenableBuilder(
      valueListenable: _gridController.selectedRows,
      builder: (parentContext, value, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (context.userHasPermission(UserPermissions.jobsWrite))
              _addCreateJobButton(),
            _getFavouritFilterWidget(),
            _addSwitchViewButton(),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    addActions();
    return Expanded(
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: ValueListenableBuilder(
              valueListenable: filterController.searchView,
              builder: (parentContext, value, child) {
                switch (value) {
                  case JobListSearchView.cardView:
                    return _getCardView();
                  case JobListSearchView.listView:
                    return _getGridView();
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _getGridView() {
    return EmrQueryLayout<JobList>.grid(
      key: UniqueKey(),
      queryLayoutController: _queryLayoutController,
      gridController: _gridController,
      pinnedColumnCount: 2,
      onRowTapped: (jobList) => _onRowTap(context, jobList),
      rowHeight: (rowIndex) => rowIndex >= 0 ? 80 : 40,
      columns: [
        if (context.userHasPermission(UserPermissions.jobsWrite))
          columnBuilderWidget(
            flex: 2,
            width: 100,
            headerText: '',
            cellWidget: (rowItem) => Row(
              children: [
                _getQuickCloneJob(context, rowItem),
                const SizedBox(width: 12),
                _getTrackJob(context, rowItem),
                const SizedBox(width: 12),
              ],
            ),
          ),
        columnBuilder(
          headerText: context.l10n.jobNumber,
          getSortIcon: () =>
              _getSortIcon(StringConstants.jobNumber.toLowerCase()),
          onSortTap: () => _queryLayoutController.dataSource.sortBy(
            StringConstants.jobNumber.toLowerCase(),
          ),
          cellText: (rowItem) => rowItem.jobNumber.toString(),
          width: 136,
        ),
        columnBuilder(
          headerText: context.l10n.jobType,
          cellText: (rowItem) =>
              jobTypeFromApiValue(rowItem.jobType ?? '').toString(),
        ),
        columnBuilder(
          headerText: context.l10n.jobStatus,
          cellText: (rowItem) => rowItem.jobStatus.toString(),
        ),
        columnBuilder(
          headerText: context.l10n.jobSource,
          cellText: (rowItem) =>
              jobSourceFromApiValue(rowItem.source ?? '').toString(),
          width: 130,
        ),
        columnBuilder(
          headerText: context.l10n.dispatchYard,
          cellText: (rowItem) => rowItem.dispatchYard ?? '-',
          width: 140,
          alignment: Alignment.center,
        ),
        columnBuilder(
          headerText: context.l10n.customer,
          cellText: (rowItem) => rowItem.customer != null
              ? '${rowItem.customer!.code} - ${rowItem.customer!.name}'
              : StringConstants.noData,
          width: 300,
        ),
        columnBuilder(
          headerText: context.l10n.scheduledOn,
          getSortIcon: () =>
              _getSortIcon(StringConstants.scheduledDate.toLowerCase()),
          onSortTap: () => _queryLayoutController.dataSource.sortBy(
            StringConstants.scheduledDate.toLowerCase(),
          ),
          cellText: (rowItem) => rowItem.scheduledDate != null
              ? DateFormat(
                  StringConstants.ymdTimeFormat,
                ).format(rowItem.scheduledDate!.toLocal())
              : '-',
          width: 200,
        ),
        columnBuilder(
          headerText: context.l10n.haulier,
          cellText: (rowItem) => rowItem.haulier != null
              ? rowItem.haulier!.haulierName != null
                    ? '${rowItem.haulier!.haulierCode ?? ''} - '
                          '${rowItem.haulier!.haulierName}'
                    : rowItem.haulier!.haulierCode ?? ''
              : StringConstants.noData,
          width: 250,
        ),
        columnBuilder(
          headerText: context.l10n.vrm,
          cellText: (rowItem) => rowItem.haulier != null
              ? rowItem.haulier!.vrm ?? StringConstants.noData
              : StringConstants.noData,
          width: 200,
        ),
        columnBuilder(
          headerText: context.l10n.startLocation,
          cellText: (rowItem) => rowItem.startLocation != null
              ? StringHelper.buildAddress(rowItem.startLocation!)
              : StringConstants.noData,
          width: 350,
        ),
        columnBuilder(
          headerText: context.l10n.customerLocation,
          cellText: (rowItem) => rowItem.customerLocation != null
              ? StringHelper.buildAddress(rowItem.customerLocation!)
              : StringConstants.noData,
          width: 350,
        ),
        columnBuilder(
          headerText: context.l10n.endLocation,
          cellText: (rowItem) => rowItem.endLocation != null
              ? StringHelper.buildAddress(rowItem.endLocation!)
              : StringConstants.noData,
          width: 350,
        ),
        columnBuilder(
          headerText: context.l10n.containerPick,
          cellText: (rowItem) => StringConstants.noData,
          width: 300,
        ),
        columnBuilder(
          headerText: context.l10n.containerDrop,
          cellText: (rowItem) => StringConstants.noData,
          width: 300,
        ),
        columnBuilder(
          headerText: context.l10n.productFamily,
          cellText: (rowItem) =>
              rowItem.productFamily?.code ?? StringConstants.noData,
          width: 200,
        ),
        columnBuilder(
          headerText: context.l10n.products,
          cellText: (rowItem) =>
              StringHelper.buildProductsString(rowItem.productFamily?.products),
          width: 200,
        ),
        columnBuilder(
          headerText: context.l10n.dispatcherNotes,
          cellText: (rowItem) => rowItem.dispatcherNotes != null
              ? rowItem.dispatcherNotes.toString()
              : StringConstants.noData,
          width: 300,
        ),
        columnBuilder(
          headerText: context.l10n.officeNotes,
          cellText: (rowItem) => rowItem.officeNotes ?? StringConstants.noData,
          width: 300,
        ),
        columnBuilder(
          headerText: context.l10n.createdDate,
          getSortIcon: () =>
              _getSortIcon(StringConstants.createdDateSort.toLowerCase()),
          onSortTap: () => _queryLayoutController.dataSource.sortBy(
            StringConstants.createdDateSort.toLowerCase(),
          ),
          cellText: (rowItem) => rowItem.created != null
              ? DateFormat(StringConstants.ymdTimeFormat).format(
                  DateTime.parse(rowItem.created!.at.toString()).toLocal(),
                )
              : '-',
          width: 200,
        ),
        columnBuilder(
          headerText: context.l10n.lastActionedModified,
          getSortIcon: () =>
              _getSortIcon(StringConstants.modifiedDate.toLowerCase()),
          onSortTap: () => _queryLayoutController.dataSource.sortBy(
            StringConstants.modifiedDate.toLowerCase(),
          ),
          cellText: (rowItem) => rowItem.modified != null
              ? DateFormat(StringConstants.ymdTimeFormat).format(
                  DateTime.parse(rowItem.modified!.at.toString()).toLocal(),
                )
              : '-',
          width: 200,
        ),
      ],
    );
  }

  EmrGridColumn<JobList> columnBuilder({
    required String headerText,
    required String Function(JobList) cellText,
    void Function()? onSortTap,
    void Function(String? id)? onCellTap,
    Widget Function()? getSortIcon,
    int flex = 4,
    double width = 120,
    Alignment alignment = Alignment.centerLeft,
  }) {
    final theme = Theme.of(context);
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => MouseRegion(
        cursor: onSortTap != null
            ? SystemMouseCursors.click
            : MouseCursor.defer,
        child: GestureDetector(
          onTap: onSortTap,
          child: Row(
            children: [
              Flexible(
                child: Text(
                  headerText,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (getSortIcon != null) getSortIcon.call(),
            ],
          ),
        ),
      ),
      cellBuilder: (JobList rowItem) {
        if (headerText == context.l10n.jobNumber) {
          return Row(
            children: [
              SelectableText.rich(
                TextSpan(
                  text: rowItem.jobNumber.toString(),
                  style: TextStyle(color: theme.colorScheme.tertiary),
                  recognizer:
                      (context.userHasPermission(UserPermissions.jobsWrite))
                      ? (TapGestureRecognizer()
                          ..onTap = () async {
                            final isEdited = await showDialog<bool?>(
                              context: context,
                              barrierDismissible: false,
                              builder: (_) => AppModal(
                                height: 800,
                                width: 1500,
                                title:
                                    '${context.l10n.editJob} '
                                    '#${rowItem.jobNumber}',
                                content: EditOrCloneJob(
                                  jobNumber: rowItem.jobNumber ?? 0,
                                  jobListService: Provider.of<JobListService>(
                                    context,
                                    listen: false,
                                  ),
                                  controller:
                                      Provider.of<JobCreateEditController>(
                                        context,
                                        listen: false,
                                      ),
                                  mode: JobMode.edit,
                                  appConfig: Provider.of<AppConfig>(context),
                                ),
                              ),
                            );
                            if (isEdited ?? false == true) {
                              await gridDataSource.refresh();
                            }
                          })
                      : null,
                ),
              ),
              if (rowItem.isLocked ?? false)
                Padding(
                  padding: const EdgeInsets.only(
                    left: Insets.gutter,
                    top: Insets.gutter / 2,
                    bottom: Insets.gutter,
                  ),
                  child: Tooltip(
                    message: context.l10n.lockedJob,
                    child: Icon(
                      rowItem.isLocked! ? Icons.lock : Icons.lock_open,
                      size: 24,
                      color: TransportAppColors.timIntervalHourDotColor,
                    ),
                  ),
                ),
            ],
          );
        } else if (headerText == context.l10n.containerPick) {
          return _buildContainerCell(rowItem, ContainerActionType.pick);
        } else if (headerText == context.l10n.containerDrop) {
          return _buildContainerCell(rowItem, ContainerActionType.drop);
        } else {
          return SelectableText(cellText.call(rowItem));
        }
      },
      alignment: alignment,
    );
  }

  EmrGridColumn<JobList> columnBuilderWidget({
    required String headerText,
    required Widget Function(JobList) cellWidget,
    void Function()? onSortTap,
    int flex = 4,
    double width = 250,
  }) {
    return EmrGridColumn(
      flex: flex,
      width: width,
      headerBuilder: () => MouseRegion(
        cursor: onSortTap != null
            ? SystemMouseCursors.click
            : MouseCursor.defer,
        child: GestureDetector(
          onTap: onSortTap,
          child: Row(children: [Text(headerText)]),
        ),
      ),
      cellBuilder: cellWidget,
    );
  }

  Widget _buildContainerCell(JobList joblist, ContainerActionType typeId) {
    final containersInfo = joblist.containers;

    if (containersInfo == null) {
      return const Text(StringConstants.noData);
    }

    var startLocnContainers =
        containersInfo.startLocationContainerDetails?.where(
          (e) => (e.active ?? true) == true,
        ) ??
        [];
    final customerLocnContainers =
        containersInfo.customerLocationContainerDetails?.where(
          (e) => (e.active ?? true) == true,
        ) ??
        [];

    if (joblist.jobType == JobType.pullAndReturn.apiValue) {
      startLocnContainers = customerLocnContainers;
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: Insets.gutter / 2,
          bottom: Insets.gutter / 2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (typeId == ContainerActionType.pick &&
                customerLocnContainers.isNotEmpty) ...[
              ...customerLocnContainers.map((e) {
                return SelectableText(e.containerType ?? '');
              }),
            ],
            if (typeId == ContainerActionType.drop &&
                startLocnContainers.isNotEmpty) ...[
              ...startLocnContainers.map((e) {
                return SelectableText(e.containerType ?? '');
              }),
            ],
          ],
        ),
      ),
    );
  }

  Future<void> _onRowTap(BuildContext context, JobList joblist) async {
    final jobService = context.read<JobListService>();
    await EmrDialog.modal<void>(
      context,
      titleText: '${context.l10n.jobDetails}  #${joblist.jobNumber}',
      builder: (_) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Provider.value(
          value: jobService,
          child: JobDetailedView(
            jobNumber: joblist.jobNumber ?? 0,
            showTitleBar: false,
          ),
        ),
      ),
      buttons: {},
    );
  }

  Widget _getSortIcon(String field) {
    final value = _queryLayoutController.dataSource.queryScope.sortOrder
        .firstWhereOrNull((element) => element.field == field);

    return value == null
        ? const SizedBox.shrink()
        : value.direction == EmrQueryScopeSortOrderDirection.asc
        ? const Icon(Icons.arrow_drop_up)
        : const Icon(Icons.arrow_drop_down);
  }

  Widget _getTrackJob(BuildContext context, JobList rowItem) {
    return SizedBox(
      width: 26,
      height: 26,
      child: Row(
        children: [
          Tooltip(
            message: context.l10n.track,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  final url = context.namedLocation(
                    RoutingPathName.jobTracking,
                    params: {StringConstants.jobid: '${rowItem.jobNumber}'},
                  );
                  NavigationHelper.openInNewTab(url);
                },
                child: const Icon(
                  Icons.location_on,
                  size: Constants.iconSizeML,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getQuickCloneJob(BuildContext context, JobList rowItem) {
    final jobQuickCloneController = Provider.of<JobQuickCloneController>(
      context,
    );
    return SizedBox(
      width: 26,
      height: 26,
      child: Row(
        children: [
          Tooltip(
            message: context.l10n.quickClone,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () async {
                  final isCloned = await EmrDialog.modal<bool?>(
                    context,
                    titleText: context.l10n.quickCloneJob,
                    builder: (_) => ChangeNotifierProvider.value(
                      value: jobQuickCloneController,
                      child: QuickCloneJobDialog(jobNumber: rowItem.jobNumber!),
                    ),
                    onAccept: () async {
                      final actionResult = await jobQuickCloneController
                          .quickClone();
                      if (!context.mounted) return;

                      switch (actionResult.status) {
                        case ActionStatus.formValidationFailed:
                          return;
                        case ActionStatus.apiSuccess:
                          final jobNumbers = actionResult.data as List<String>;
                          await SuccessAlertWidget.showSuccessDialogWithInfo(
                            context,
                            context.l10n.jobClonedSuccessfully,
                            '${context.l10n.jobNumbersFollowsMsg} :',
                            jobNumbers.join(', '),
                            showCopyIcon: true,
                          );
                        case ActionStatus.apiFailure:
                          await ErrorAlertWidget.showErrorMessage(
                            context,
                            actionResult.errorMessage ??
                                context.l10n.errorAndTryAgainMsg,
                          );
                          return;
                      }
                      if (context.mounted) {
                        Navigator.of(context).pop(true);
                      }
                    },
                  );
                  if (isCloned ?? false) {
                    await gridDataSource.refresh();
                  }
                },
                child: const Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(Icons.copy_rounded, size: Constants.iconSizeML),
                    Icon(Icons.bolt, size: Constants.iconSizeSM),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getCardView() {
    return EmrQueryLayout<JobList>.card(
      queryLayoutController: _queryLayoutController,
      gridController: _gridController,
      facetsPanelBuilder: (controller) {
        return Container();
      },
      buildCard: (controller, job, index) {
        return jobsCard(job);
      },
      onRowTapped: (p0) {},
    );
  }

  Widget jobsCard(JobList job) {
    final isSelected = _gridController.selectedRows.value.contains(job);

    return JobCard(
      key: UniqueKey(),
      joblist: job,
      onJobCardSelected: (_) => _selectTicket(job),
      canSelect: (_) => _canSelect(job),
      isSelected: isSelected,
      filterController: filterController,
      queryLayoutController: _queryLayoutController,
    );
  }

  void _selectTicket(JobList ticket) {
    var updatedCards = _gridController.selectedRows.value;
    if (updatedCards.contains(ticket)) {
      updatedCards.remove(ticket);
    } else {
      if (updatedCards.isEmpty) {
        updatedCards = [ticket];
      } else {
        updatedCards.add(ticket);
      }
    }

    _gridController.selectedRows.value = [...updatedCards];

    _showBottomSheet();
  }

  bool _canSelect(JobList ticket) {
    return true;
  }

  void _showBottomSheet() {
    showBottomSheet(
      elevation: 4,
      constraints: const BoxConstraints(maxWidth: 700),
      backgroundColor: Theme.of(context).colorScheme.surface,
      context: context,
      builder: (context) {
        return Visibility(
          visible: _gridController.selectedRows.value.isNotEmpty,
          child: Container(
            height: 96,
            padding: const EdgeInsets.all(Insets.gutter / 2),
            color: Theme.of(context).colorScheme.tertiary.withAlpha(80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (context.userHasPermission(UserPermissions.jobsWrite) &&
                    context.userHasPermission(
                      UserPermissions.standingOrderWrite,
                    ))
                  SizedBox(width: 160, child: _addCreateStandingOrderFromJob()),
                if (context.userHasPermission(UserPermissions.jobsWrite)) ...[
                  Expanded(child: _addQuickScheduleButton()),
                  Expanded(child: _addCloneButton()),
                ],
                Expanded(child: _addLocateButton()),
                if (context.userHasPermission(UserPermissions.jobsWrite))
                  Expanded(child: _addPrintButton()),
                if (context.userHasPermission(UserPermissions.jobsWrite))
                  Expanded(child: _addDeleteButton()),
              ],
            ),
          ),
        );
      },
    );
  }

  bool _canJobLocated() {
    return (_gridController.selectedRows.value[0].jobStatus ==
            StringConstants.startedApiValue) ||
        (_gridController.selectedRows.value[0].jobStatus ==
            StringConstants.scheduledApiValue) ||
        (_gridController.selectedRows.value[0].jobStatus ==
            StringConstants.abandonedApiValue) ||
        (_gridController.selectedRows.value[0].jobStatus ==
            StringConstants.completedApiValue);
  }
}
