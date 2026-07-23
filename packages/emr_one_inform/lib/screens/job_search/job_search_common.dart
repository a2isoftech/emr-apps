import 'dart:convert';

import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_inform/common/common_export.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/job_search/job_search_controller.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:emr_one_inform/widgets/new_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

abstract class JobSearchCommon extends BasePage<IJobSearchController> {
  JobSearchCommon({
    required this.filterForUser,
    required this.jobState,
    super.key,
    this.startDate,
    this.endDate,
    this.assetCode,
  });

  final bool filterForUser;
  final String jobState;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? assetCode;

  final _formKey = GlobalKey<FormState>();
  final List<String> inProgressJobsNumberOnDevice = List.empty(growable: true);
  late final String territoryCode;
  final List<String> submittedJobsNumberOnDevice = List.empty(growable: true);

  final _filterController = TextEditingController();
  final scrollController = ScrollController();

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) {
    return '${filterForUser ? 'My' : 'Yard'} Jobs (${yard.yardCode})'
        ' - $jobState';
  }

  @override
  void initState(BuildContext context) {
    controller.filterForUser = filterForUser;
    controller.jobState = jobState;
    controller.setAssetCode(assetCode);
    controller.loadJobs();
    controller.getFilterValues();
    _getTerritoryCode(context);
    _getSubmittedJobId(context);
    _getInProgressJobId(context);
    if (jobState == 'In Progress' && controller.filterForUser) {
      controller.getAllYards();
      controller.setDefaultSearchState();
    }
    controller.applyDefaultSortType();
  }

  @override
  List<Widget> getActions(BuildContext context) {
    return [
      IconButton(
        onPressed: onSearch,
        icon: Icon(Icons.search, color: FormAppColors.white),
      ),
      IconButton(
        onPressed: onFilter,
        icon: Icon(Icons.filter_list, color: FormAppColors.white),
      ),
    ];
  }

  Future<void> onRefresh() async {
    await controller.loadJobs();
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    scrollController.addListener(
      () {
        final nextPageTrigger = 0.8 * scrollController.position.maxScrollExtent;
        if (scrollController.position.pixels > nextPageTrigger) {
          if ((jobState == 'New' && controller.hasNextPageFilterForUser) ||
              (jobState == 'In Progress' && controller.hasNextPageInProgress)) {
            controller.loadJobs(isRefresh: false);
          }
        }
      },
    );

    if (controller.isLoading) return showSpinner();
    if (controller.isBusy) return showSpinner();
    if (controller.newJobsMasterList == null && jobState == 'New') {
      return Center(child: showNoData('No jobs found'));
    } else if (controller.inProgressJobsMasterList == null &&
        jobState == 'In Progress') {
      return Center(child: showNoData('No jobs found'));
    }
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        child: PopupMenuButton(
          color: FormAppColors.black,
          icon: const Icon(Icons.menu),
          position: PopupMenuPosition.under,
          onSelected: (value) {
            if (value == 'Fetch') {
              if ((jobState == 'New' && controller.hasNextPageFilterForUser) ||
                  (jobState == 'In Progress' &&
                      controller.hasNextPageInProgress)) {
                controller.loadJobs(isRefresh: false);
                return;
              }
            } else if (value == 'Collapse') {
              setState(() {
                controller.toggleIsCollapsed();
              });
              return;
            } else if (value == 'Top') {
              if (scrollController.position.pixels >
                  scrollController.position.minScrollExtent) {
                scrollController.position.animateTo(
                  1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.bounceIn,
                );
              }
              return;
            }
          },
          itemBuilder: (context) {
            return [
              if ((jobState == 'New' && controller.hasNextPageFilterForUser) ||
                  (jobState == 'In Progress' &&
                      controller.hasNextPageInProgress))
                const PopupMenuItem(
                  value: 'Fetch',
                  child: Tooltip(
                    message: 'Fetch More Data',
                    child: Icon(Icons.notes_sharp),
                  ),
                ),
              const PopupMenuItem(
                value: 'Collapse',
                child: Tooltip(
                  message: 'Collapse Toggle',
                  child: Icon(Icons.expand),
                ),
              ),
              const PopupMenuItem(
                value: 'Top',
                child: Tooltip(
                  message: 'Go to top',
                  child: Icon(Icons.arrow_circle_up),
                ),
              ),
            ];
          },
        ),
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          controller: scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                if (controller.isSearchWidgetVisible.value) ...[
                  _addSearchWidget(),
                  const SizedBox(height: 5),
                ],
                if (controller.isFilterVisible) ...[
                  Material(
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          _addPageTitle(context),
                          _addTypeaheadSearchBox(context),
                          _addFilterChoiceChips(),
                          if (controller.selectedFilterByOption == 'Yard') ...[
                            const SizedBox(height: 5),
                            _addFilterChoiceChipsYardDepots(),
                          ],
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
                const SizedBox(height: 5),
                _addScheduleTypeChips(),
                const SizedBox(height: 5),
                Stack(
                  children: [
                    _addJobList(context),
                    if (controller.isNextPageLoading)
                      Positioned(
                        bottom: Insets.gutter,
                        right: Insets.gutter,
                        left: Insets.gutter,
                        child: showSpinner(),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _uiWidgets() {
    return Row(
      children: [
        const Spacer(),
        Text(
          'Compact View',
          style: TextStyle(color: FormAppColors.black),
        ),
        Switch(
          value: controller.isCollapsed,
          onChanged: (value) async {
            setState(() {
              controller.toggleIsCollapsed();
            });
          },
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed:
              !((jobState == 'New' && controller.hasNextPageFilterForUser) ||
                      (jobState == 'In Progress' &&
                          controller.hasNextPageInProgress))
                  ? null
                  : () => controller.loadJobs(isRefresh: false),
          child: const Tooltip(
            message: 'Fetch More',
            child: Icon(Icons.notes),
          ),
        ),
      ],
    );
  }

  Widget _addSearchWidget() => ValueListenableBuilder(
        valueListenable: controller.isSearchWidgetVisible,
        builder: (context, value, child) {
          return Visibility(
            visible: value,
            child: ValueListenableBuilder(
              valueListenable: controller.isFilterValuesReady,
              builder: (context, value, child) {
                return SearchWidget(
                  // canClearSearch:
                  //     jobState == 'In Progress' && controller.filterForUser,
                  key: UniqueKey(),
                  searchOptions: [
                    DateRangeSearchOption(
                      displayText: 'Date',
                      propertyName: 'date',
                      isPinned: jobState != 'In Progress' ||
                          !controller.filterForUser,
                    ),
                    TypeaheadSearchOption(
                      displayText: 'WO/SI Number',
                      propertyName: 'workOrderId',
                      sourceCallback: controller.getWorkOrderIds,
                      datasource: null,
                    ),
                    ScanSearchOption(
                      displayText: 'Scan asset code',
                      propertyName: 'assetCode',
                    ),
                    TypeaheadSearchOptionGeneric<Asset>(
                      displayText: 'Asset Name',
                      propertyName: 'assetName',
                      datasource: null,
                      sourceCallback: controller.getAssetsByName,
                      labelBuilder: (e) => e.name == null
                          ? '[${e.assetCode}]'
                          : '[${e.assetCode}] - ${e.name}',
                      widgetBuilder: (e) => ListTile(
                        title: Text(e.assetCode),
                        subtitle: Text(e.name ?? ''),
                      ),
                    ),
                    if (jobState == 'In Progress' &&
                        controller.filterForUser) ...[
                      TypeaheadSearchOptionGeneric<Yard>(
                        displayText: 'Yard',
                        propertyName: 'yard',
                        datasource: null,
                        isPinned: true,
                        sourceCallback: controller.getYards,
                        labelBuilder: (e) => e.yardCode == null
                            ? '[${e.displayName}]'
                            : '[${e.yardCode}] - ${e.name}',
                        widgetBuilder: (e) => ListTile(
                          title: Text(e.displayName),
                          subtitle: Text(e.yardCode ?? ''),
                        ),
                      ),
                    ],
                  ],
                  initialState: controller.searchState,
                  onStateChanged: (map) async {
                    controller.searchState = map;
                    await controller.searchStateChanged(map);
                  },
                );
              },
            ),
          );
        },
      );

  void onSearch() {
    controller.toggleSearchWindow();
  }

  void onFilter() {
    controller.toggleFilterWindow();
  }

  Widget _addScheduleTypeChips() {
    return Wrap(
      spacing: 5,
      children: ConstantLists.ScheduleItemTypes.map(
        (e) => FilterChip(
          showCheckmark: false,
          avatar: Icon(
            CommonUtility.getIconDataForScheduleItemType(e),
            color: FormAppColors.foreground,
          ),
          labelPadding: const EdgeInsets.all(3),
          label: Text(
            '$e (${_getCount(e)})',
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
          ),
          selected: controller.selectedScheduledItemTypes.contains(e),
          onSelected: (value) {
            if (value) {
              controller.addSelectedScheduledItemType(e);
            } else {
              controller.removeSelectedScheduledItemType(e);
            }
          },
          selectedColor: FormAppColors.success,
        ),
      ).toList(),
    );
  }

  String _getCount(String group) {
    final jobForms = JobForms(
      inProgress: controller.inProgressJobsMasterList,
      filteredForUser: controller.newJobsMasterList,
    );
    if (jobState == 'New') {
      return jobForms.filteredForUser!
          .where(
            (x) =>
                x.job!.scheduleItemType == group &&
                !inProgressJobsNumberOnDevice.contains(x.scheduledItemId) &&
                !submittedJobsNumberOnDevice.contains(x.scheduledItemId),
          )
          .length
          .toString();
    } else {
      return jobForms.inProgress!
          .where(
            (x) =>
                x.scheduleItemType == group &&
                !submittedJobsNumberOnDevice.contains(x.scheduledItemId),
          )
          .length
          .toString();
    }
  }

  Future<void> _getTerritoryCode(BuildContext context) async {
    final userRepo =
        Provider.of<IUserPreferencesRepository>(context, listen: false);
    final territory = await userRepo.getTerritory();
    setState(() => territoryCode = territory);
  }

  Future<void> _getSubmittedJobId(BuildContext context) async {
    final userRepo =
        Provider.of<IUserPreferencesRepository>(context, listen: false);
    final ids = await userRepo.getSubmittedJobIds();
    if (ids.isNotEmpty) {
      setState(() => submittedJobsNumberOnDevice.addAll(ids));
    }
  }

  Future<void> _getInProgressJobId(BuildContext context) async {
    final userRepo =
        Provider.of<IUserPreferencesRepository>(context, listen: false);
    final ids = await userRepo.getInProgressJobIds();
    if (ids.isNotEmpty) {
      setState(() => inProgressJobsNumberOnDevice.addAll(ids));
    }
  }

  Widget _addPageTitle(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(context.l10n.sortBy),
            _addSortByDropDownWidget(),
          ],
        ),
      ],
    );
  }

  Widget _addSortByDropDownWidget() {
    final sortFields = [
      'Title',
      'Due Date',
      'Work Order',
      'Asset Code',
      'Priority',
    ];
    final dropDownMenuItems = <DropdownMenuItem<SortBy>>[];

    for (final sortField in sortFields) {
      dropDownMenuItems.add(
        DropdownMenuItem(
          value: SortBy(
            fieldName: sortField,
            sortDirection: controller.sortBy.sortDirection,
          ),
          child: Row(
            children: [
              Text(sortField),
            ],
          ),
        ),
      );
    }
    return DropdownButton(
      icon: (controller.sortBy.sortDirection == SortDirection.ascending)
          ? const Icon(Icons.arrow_upward_rounded)
          : const Icon(Icons.arrow_downward_rounded),
      items: dropDownMenuItems.toList(),
      value: controller.sortBy,
      onChanged: (onChanged) {
        controller.setSortBy(onChanged!);
      },
    );
  }

  Widget _addJobList(BuildContext context) {
    final jobForms = JobForms(
      inProgress: controller.inProgressJobsFiltered,
      filteredForUser: controller.newJobsFiltered,
    );
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          if (jobState == 'In Progress' &&
              jobForms.inProgress != null &&
              jobForms.inProgress != null &&
              jobForms.inProgress!.isNotEmpty) ...[
            _uiWidgets(),
            _addInProgressJobsByUserYard(context, jobForms),
          ] else if (jobState == 'New' &&
              jobForms.filteredForUser != null &&
              jobForms.filteredForUser != null &&
              jobForms.filteredForUser!.isNotEmpty) ...[
            _uiWidgets(),
            _addNewJobsAssignedToUserYard(context, jobForms),
          ] else ...[
            if (controller.jobId != null) ...[
              Center(
                child: showNoData('No jobs found for ${controller.jobId}'),
              ),
            ] else if (controller.assetCode != null) ...[
              Center(
                child: showNoData(
                  'No jobs found  for ${controller.assetCode}',
                ),
              ),
            ] else ...[
              Center(child: showNoResults(context)),
            ],
          ],
        ],
      ),
    );
  }

  Widget _addInProgressJobsByUserYard(BuildContext context, JobForms jobForms) {
    var inProgressUserYardJobs = jobForms.inProgress ?? [];
    inProgressUserYardJobs = inProgressUserYardJobs
        .where(
          (x) =>
              x.workOrderDescription != null &&
              !submittedJobsNumberOnDevice.contains(x.scheduledItemId) &&
              (controller.selectedScheduledItemTypes.isEmpty ||
                  controller.selectedScheduledItemTypes
                      .contains(x.scheduleItemType ?? '')),
        )
        .toList();

    inProgressUserYardJobs =
        _sortInProgressUserYardJobs(inProgressUserYardJobs);
    return Column(
      children: [
        if (inProgressUserYardJobs.isNotEmpty) ...[
          showInProgressJobs(context, inProgressUserYardJobs),
        ] else ...[
          Center(child: showNoResults(context)),
        ],
      ],
    );
  }

  Widget showInProgressJobs(
    BuildContext context,
    List<FormInstance> inProgressUserYardJobs,
  );

  Widget showScheduledJobs(
    BuildContext context,
    List<ScheduledJobForm> newUserYardJobs,
  );

  Widget _addNewJobsAssignedToUserYard(
    BuildContext context,
    JobForms jobForms,
  ) {
    var newUserYardJobs = jobForms.filteredForUser!;
    newUserYardJobs = newUserYardJobs
        .where(
          (x) =>
              x.job!.workOrderDescription != null &&
              !inProgressJobsNumberOnDevice.contains(x.scheduledItemId) &&
              !submittedJobsNumberOnDevice.contains(x.scheduledItemId) &&
              (controller.selectedScheduledItemTypes.isEmpty ||
                  controller.selectedScheduledItemTypes
                      .contains(x.job!.scheduleItemType ?? '')),
        )
        .toList();

    newUserYardJobs = _sort(newUserYardJobs);
    return Column(
      children: [
        if (newUserYardJobs.isNotEmpty) ...[
          showScheduledJobs(context, newUserYardJobs),
        ] else ...[
          Center(child: showNoResults(context)),
        ],
      ],
    );
  }

  List<FormInstance> _sortInProgressUserYardJobs(
    List<FormInstance> inProgressUserYardJobs,
  ) {
    switch (controller.sortBy.fieldName) {
      case 'Title':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          inProgressUserYardJobs.sort(
            (x, y) =>
                x.workOrderDescription!.compareTo(y.workOrderDescription!),
          );
        } else {
          inProgressUserYardJobs.sort(
            (y, x) =>
                x.workOrderDescription!.compareTo(y.workOrderDescription!),
          );
        }
      case 'Due Date':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          inProgressUserYardJobs
              .sort((x, y) => x.startedDate!.compareTo(y.startedDate!));
        } else {
          inProgressUserYardJobs
              .sort((y, x) => x.startedDate!.compareTo(y.startedDate!));
        }
      case 'Work Order':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          inProgressUserYardJobs
              .sort((x, y) => x.workOrderId!.compareTo(y.workOrderId!));
        } else {
          inProgressUserYardJobs
              .sort((y, x) => x.workOrderId!.compareTo(y.workOrderId!));
        }
      case 'Asset Code':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          inProgressUserYardJobs
              .sort((x, y) => x.assetCode!.compareTo(y.assetCode!));
        } else {
          inProgressUserYardJobs
              .sort((y, x) => x.assetCode!.compareTo(y.assetCode!));
        }
      case 'Priority':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          inProgressUserYardJobs
              .sort((x, y) => x.jobPriority!.compareTo(y.jobPriority!));
        } else {
          inProgressUserYardJobs
              .sort((y, x) => x.jobPriority!.compareTo(y.jobPriority!));
        }
    }
    return inProgressUserYardJobs;
  }

  List<ScheduledJobForm> _sort(List<ScheduledJobForm> newUserJobs) {
    switch (controller.sortBy.fieldName) {
      case 'Title':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          newUserJobs.sort(
            (x, y) => x.job!.workOrderDescription!
                .compareTo(y.job!.workOrderDescription!),
          );
        } else {
          newUserJobs.sort(
            (y, x) => x.job!.workOrderDescription!
                .compareTo(y.job!.workOrderDescription!),
          );
        }
      case 'Due Date':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          newUserJobs.sort(
            (x, y) =>
                x.job!.expectedStartDate!.compareTo(y.job!.expectedStartDate!),
          );
        } else {
          newUserJobs.sort(
            (y, x) =>
                x.job!.expectedStartDate!.compareTo(y.job!.expectedStartDate!),
          );
        }
      case 'Work Order':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          newUserJobs.sort(
            (x, y) => x.job!.workOrderId!.compareTo(y.job!.workOrderId!),
          );
        } else {
          newUserJobs.sort(
            (y, x) => x.job!.workOrderId!.compareTo(y.job!.workOrderId!),
          );
        }
      case 'Asset Code':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          newUserJobs.sort(
            (x, y) =>
                x.job!.asset!.assetCode.compareTo(y.job!.asset!.assetCode),
          );
        } else {
          newUserJobs.sort(
            (y, x) =>
                x.job!.asset!.assetCode.compareTo(y.job!.asset!.assetCode),
          );
        }
      case 'Priority':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          newUserJobs.sort(
            (x, y) => x.job!.jobPriority!.compareTo(y.job!.jobPriority!),
          );
        } else {
          newUserJobs.sort(
            (y, x) => x.job!.jobPriority!.compareTo(y.job!.jobPriority!),
          );
        }
    }
    return newUserJobs;
  }

  Widget jobCell({
    required BuildContext context,
    String? title,
    String? assetCode,
    String? assetName,
    String? jobTrade,
    String? jobType,
    String? startedBy,
    String? workOrder,
    DateTime? expectedStartDate,
    ScheduledJobForm? scheduled,
    FormInstance? instance,
    String? currentUser,
    String? assignedTo,
    String? scheduleItemType,
    String? jobPriority,
    String? assignedToTeam,
    String? notes,
  }) {
    final jobInProgress = instance?.status == 'InProgress';
    final slidableActions = List<SlidableAction>.empty(growable: true);
    if (instance != null && assignedTo == currentUser) {
      slidableActions.add(
        SlidableAction(
          backgroundColor: EmrColours.secondaryLightBlue,
          borderRadius: BorderRadius.circular(5),
          foregroundColor: FormAppColors.error,
          icon: Icons.undo,
          label: context.l10n.resetForm,
          onPressed: (BuildContext newContext) async {
            if (inProgressJobsNumberOnDevice.isNotEmpty) {
              inProgressJobsNumberOnDevice.remove(
                scheduled?.scheduledItemId ?? instance.scheduledItemId,
              );

              final userRepo = Provider.of<IUserPreferencesRepository>(
                context,
                listen: false,
              );
              await userRepo
                  .saveInProgressJobIds(inProgressJobsNumberOnDevice)
                  .then((value) async {
                if (context.mounted) {
                  await _showResetFormDialog(
                    context,
                    title,
                    instance.id,
                  );
                }
              });
            } else {
              await _showResetFormDialog(context, title, instance.id);
            }
          },
        ),
      );
    }
    if (scheduleItemType != 'WorkOrder' && instance == null) {
      if (ScreenAccess().canDeleteTask(context)) {
        slidableActions.add(
          SlidableAction(
            backgroundColor: EmrColours.secondaryLightBlue,
            borderRadius: BorderRadius.circular(5),
            foregroundColor: FormAppColors.error,
            icon: Icons.delete,
            label: context.l10n.delete,
            onPressed: (BuildContext newContext) async {
              await showConfirmationDialog(
                context: context,
                message: context.l10n.confirmDeleteScheduleItem,
              ).then((isConfirmed) async {
                if (isConfirmed ?? false) {
                  await controller.delete(workOrder!);
                  await onRefresh();
                }
              });
            },
          ),
        );
      }
      if (ScreenAccess().canEditTask(context)) {
        slidableActions.add(
          SlidableAction(
            backgroundColor: EmrColours.secondaryLightBlue,
            borderRadius: BorderRadius.circular(5),
            foregroundColor: FormAppColors.error,
            icon: Icons.edit,
            label: context.l10n.edit,
            onPressed: (BuildContext newContext) async {
              await controller.editJob(
                context: context,
                scheduled: scheduled!,
              );

              await onRefresh();
            },
          ),
        );
      }
      if (ScreenAccess().canCloneTask(context)) {
        slidableActions.add(
          SlidableAction(
            backgroundColor: EmrColours.secondaryLightBlue,
            borderRadius: BorderRadius.circular(5),
            foregroundColor: FormAppColors.error,
            icon: Icons.copy_all_outlined,
            label: 'Clone',
            onPressed: (BuildContext newContext) async {
              await controller.cloneJob(
                context: context,
                scheduled: scheduled,
                instance: instance,
                showOptions: true,
              );

              await onRefresh();
            },
          ),
        );
        slidableActions.add(
          SlidableAction(
            backgroundColor: EmrColours.secondaryLightBlue,
            borderRadius: BorderRadius.circular(5),
            foregroundColor: FormAppColors.error,
            icon: Icons.copy,
            label: 'Quick clone',
            onPressed: (BuildContext newContext) async {
              await controller
                  .cloneJob(
                context: context,
                scheduled: scheduled,
                instance: instance,
              )
                  .then((response) async {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    response == null
                        ? appSnackBarMessage(
                            'Error while cloning the work order',
                            MessageTypes.error,
                          )
                        : appSnackBarMessage(
                            '$response${context.l10n.scheduleTaskCreated}',
                            MessageTypes.success,
                          ),
                  );
                }
                await onRefresh();
              });
            },
          ),
        );
      }
    }

    return Slidable(
      startActionPane: slidableActions.isEmpty
          ? null
          : ActionPane(
              extentRatio: 1,
              motion: const StretchMotion(),

              // All actions are defined in the children parameter.
              children: slidableActions,
            ),
      child: GestureDetector(
        onLongPressStart: (details) =>
            _onLongPress(details, context, instance, scheduled),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Card(
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.all(1),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: EmrColours.secondaryGrey),
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (expectedStartDate != null &&
                          _checkIsFormOverdue(expectedStartDate)) ...[
                        FormAppIcons.formOverDue,
                        const SizedBox(width: 5),
                      ],
                      if (notes?.isNotEmpty ?? false) ...[
                        Tooltip(
                          message: notes ?? '',
                          child: const Icon(Icons.info),
                        ),
                        const SizedBox(width: 5),
                      ],
                      CommonUtility.iconForJobPriority(jobPriority),
                      IconButton(
                        onPressed: () async {
                          if (scheduled != null && !jobInProgress) {
                            await _navigate(
                              stateMediator.getBuildContext!.call(),
                              scheduled,
                              true,
                            );
                          } else if (instance != null && jobInProgress) {
                            await _onContinuePressed(
                              context,
                              instance,
                              true,
                            );
                          }
                        },
                        icon: const Icon(Icons.remove_red_eye),
                      ),
                      const Spacer(),
                      if (scheduled != null) ...[
                        ElevatedButton(
                          onPressed:
                              (yard.yardCode == scheduled.job?.yardCode) &&
                                      ((scheduled.job?.assignedTo?.isEmpty ??
                                              true) ||
                                          scheduled.job?.assignedTo ==
                                              UserInfoService
                                                  .instance!.userInfo.name)
                                  ? () => _onStartPressed(context, scheduled)
                                  : null,
                          style: FormAppDecorations.jobStartButtonStyle,
                          child: Text(
                            context.l10n.startForm,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ] else if (instance != null) ...[
                        ElevatedButton(
                          onPressed: (jobInProgress &&
                                  (yard.yardCode == instance.yardCode))
                              ? () => _onContinuePressed(
                                    context,
                                    instance,
                                    false,
                                  )
                              : null,
                          style: jobInProgress
                              ? FormAppDecorations.jobContinueButtonStyle
                              : FormAppDecorations
                                  .jobContinueButtonDisabledStyle,
                          child: Text(
                            jobInProgress
                                ? context.l10n.continueForm
                                : context.l10n.queued,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      children: [
                        Tooltip(
                          message: title ?? '',
                          child: Wrap(
                            spacing: 5,
                            children: [
                              Icon(
                                CommonUtility.getIconDataForScheduleItemType(
                                  scheduleItemType,
                                ),
                              ),
                              Text(
                                title ?? '',
                                style: FormAppTextStyles.listviewTitleTextColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (!controller.isCollapsed) ...[
                    Row(
                      children: [
                        Text('${workOrder!} ('
                            '''
${scheduled?.job?.yardCode ?? instance?.yardCode ?? ''} / ${scheduled?.job?.depotNo ?? instance?.depotNo ?? ''})'''),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '${context.l10n.asset} : '
                          '${assetDisplayText(assetCode, assetName)}',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('${context.l10n.jobType} : ${jobType ?? '--'}'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('${context.l10n.jobTrade} : ${jobTrade ?? '--'}'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('${context.l10n.startedBy} : '
                            '''
${(startedBy?.isNotEmpty ?? false) ? startedBy : '--'}'''),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '${context.l10n.allocatedTo} : '
                          '''
${(assignedTo?.isNotEmpty ?? false) ? assignedTo : '--'}''',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '${context.l10n.allocatedToTeam} : '
                          '''
${(assignedToTeam?.isNotEmpty ?? false) ? assignedToTeam : '--'}''',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(_getFormDueDate(context, expectedStartDate)),
                        const SizedBox(width: 5),
                        FormAppIcons.calendarIcon,
                      ],
                    ),
                  ],
                  if (controller.isCollapsed) ...[
                    Row(
                      children: [
                        Text('${workOrder!} ('
                            '''
${scheduled?.job?.yardCode ?? instance?.yardCode ?? ''} / ${scheduled?.job?.depotNo ?? instance?.depotNo ?? ''})'''),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '${context.l10n.asset} : '
                          '${assetDisplayText(assetCode, assetName)}',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '${context.l10n.allocatedTo} : '
                          '''
${(assignedTo?.isNotEmpty ?? false) ? assignedTo : '--'}''',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(_getFormDueDate(context, expectedStartDate)),
                        const SizedBox(width: 5),
                        FormAppIcons.calendarIcon,
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onLongPress(
    LongPressStartDetails details,
    BuildContext context,
    FormInstance? instance,
    ScheduledJobForm? scheduled,
  ) async {
    // if (instance == null) return;

    final offset = details.globalPosition;

    await showMenu(
      context: context,

      // Position the context menu
      // It should be placed near the long press location
      position: RelativeRect.fromLTRB(
        offset.dx,
        offset.dy,
        offset.dx,
        offset.dy,
      ),

      // set a list of choices for the context menu
      items: [
        PopupMenuItem(
          value: context.l10n.previewForm,
          child: Text(context.l10n.previewForm),
        ),
      ],
    ).then((value) async {
      if (context.mounted) {
        if (value == context.l10n.previewForm) {
          if (instance != null) {
            await _onContinuePressed(context, instance, true);
          } else if (scheduled != null) {
            await _navigate(
              stateMediator.getBuildContext!.call(),
              scheduled,
              true,
            );
          }
        }
      }
    });
  }

  String _getFormDueDate(
    BuildContext context,
    DateTime? formCompletionDueDate,
  ) {
    if (formCompletionDueDate == null) {
      return '';
    }

    final activeLocale = Localizations.localeOf(context);
    final formattedDate = DateFormat.yMd(activeLocale.toString())
        .format(formCompletionDueDate.toLocal());

    return context.l10n.dueDateText + formattedDate;
  }

  bool _checkIsFormOverdue(DateTime dueDate) {
    var jobIsOverDue = false;

    final dueDateCompare = DateTime(dueDate.year, dueDate.month, dueDate.day);
    final today = DateTime.now().toUtc();
    final todayCompare = DateTime(today.year, today.month, today.day);
    if (dueDateCompare.isBefore(todayCompare)) {
      jobIsOverDue = true;
    }
    return jobIsOverDue;
  }

  Future<void> _showResetFormDialog(
    BuildContext context,
    String? formTitle,
    String? formInstanceUuid,
  ) async {
    await EmrDialog.noYes(
      context,
      titleText: '${context.l10n.resetFormTitle} $formTitle?',
      contentText: context.l10n.resetFormConfirm,
      onNo: () {},
      onYes: () => _onResetFormPressed(context, formInstanceUuid),
    );
  }

  Future<void> _onResetFormPressed(BuildContext context, String? uuid) async {
    await controller
        .resetInProgressForm(formInstanceUuid: uuid!)
        .then((resetInProgressFormResult) {
      if (resetInProgressFormResult) {
        if (context.mounted) {
          final snackBarSuccess = appSnackBarMessage(
            context.l10n.resetFormSuccess,
            MessageTypes.success,
          );
          final item = controller.inProgressJobsFiltered
              ?.where((x) => x.id == uuid)
              .firstOrNull;
          if (item != null) {
            controller.inProgressJobsFiltered?.remove(item);
          }

          ScaffoldMessenger.of(context).showSnackBar(snackBarSuccess);
        }
      } else {
        if (context.mounted) {
          final snackBarFailure = appSnackBarMessage(
            context.l10n.resetFormFailed,
            MessageTypes.error,
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBarFailure);
        }
      }
    });
  }

  Future<void> _onStartPressed(
    BuildContext context,
    ScheduledJobForm scheduled,
  ) async {
    InformLogger.logEvent(
      EmrOneInformTelemetry.kJobSearch,
      params: {'message': 'Job: ${scheduled.job?.workOrderId} started'},
    );
    final canStartJob = await controller.canStartJob(scheduled);
    if (!canStartJob) {
      final snackBar =
          appSnackBarMessage('Cannot start this job', MessageTypes.error);
      ScaffoldMessenger.of(stateMediator.getBuildContext!.call())
          .showSnackBar(snackBar);
      InformLogger.logEvent(
        EmrOneInformTelemetry.kJobSearch,
        params: {
          'message': 'Could not start Job: ${scheduled.job?.workOrderId}',
        },
      );

      return;
    }
    if ((scheduled.job?.assignedTo?.isNotEmpty ?? false) &&
        UserInfoService.instance!.userInfo.name != scheduled.job!.assignedTo) {
      final msg = 'Job is allocated to ${scheduled.job!.assignedTo}';
      final snackBar = appSnackBarMessage(msg, MessageTypes.information);
      ScaffoldMessenger.of(stateMediator.getBuildContext!.call())
          .showSnackBar(snackBar);
      InformLogger.logEvent(
        EmrOneInformTelemetry.kJobSearch,
        params: {
          'message':
              '''Job: ${scheduled.job?.workOrderId} is allocated to ${scheduled.job!.assignedTo}''',
        },
      );

      return;
    }

    /// if the job is not assigned to the user, on start assign to current user.
    if (scheduled.job?.assignedTo == null) {
      InformLogger.logEvent(
        EmrOneInformTelemetry.kJobSearch,
        params: {
          'message':
              '''Assigning Job: ${scheduled.job?.workOrderId} to ${UserInfoService.instance!.userInfo.name}''',
        },
      );

      if (!context.mounted) return;

      final result = await showConfirmationDialog(
        context: context,
        message: 'Allocate the job to you?',
      );
      if (result == false) {
        return;
      } else {
        await controller
            .assignWorkOrderToUser(
          AssignWorkOrderToUserRequest(
            yardCode: yard.yardCode!,
            assignedTo: UserInfoService.instance!.userInfo.id,
            assignedBy: UserInfoService.instance!.userInfo.name,
            assignedTypeId: 1,
            workOrders: [scheduled.job!.workOrderId!],
            inProgressFormInstances: [],
            teamId: scheduled.job?.assignedToTeamId,
          ),
        )
            .then((value) async {
          await _navigate(
            stateMediator.getBuildContext!.call(),
            scheduled,
            false,
          );
        });
      }
    } else {
      await _navigate(stateMediator.getBuildContext!.call(), scheduled, false);
    }
  }

  Future<void> _navigate(
    BuildContext context,
    ScheduledJobForm scheduled,
    bool isPreview,
  ) async {
    InformLogger.logEvent(
      EmrOneInformTelemetry.kJobSearch,
      params: {
        'message': 'Navigating to run job: ${scheduled.job?.workOrderId}',
      },
    );
    await context.pushNamed(
      FormsRoutingName.jobPage,
      queryParams: {
        'scheduledItemId': scheduled.scheduledItemId,
        'templateId': scheduled.template!.id,
        'jobData': scheduled.job == null
            ? null
            : jsonEncode(
                InstanceJobData(
                  assetCode: scheduled.job!.asset!.assetCode,
                  depotNo: scheduled.job!.asset!.depotNo,
                  jobType: scheduled.job!.jobType ?? '',
                  territoryCode: territoryCode,
                  workOrderId: scheduled.job!.workOrderId!,
                  workOrderDescription: scheduled.job!.workOrderDescription!,
                ),
              ),
        'isPreview': isPreview.toString(),
        'isDigitalSignatureRequired': isDigitalSignatureNeeded(
          isDigitalSignatureRequiredForJob:
              scheduled.job?.isDigitalSignatureRequired ?? false,
          isDigitalSignatureRequiredForTemplate:
              scheduled.template?.isDigitalSignatureRequired ?? false,
        ).toString(),
        'emailsToNotify': scheduled.template?.emailIds,
      },
    ).then((value) async {
      InformLogger.logEvent(
        EmrOneInformTelemetry.kJobSearch,
        params: {
          'message': 'Updating local DB for job: ${scheduled.job?.workOrderId}',
        },
      );
      if (context.mounted) {
        await _reloadFromSqlDb(context, scheduled.scheduledItemId);
      }
    });
  }

  Future<void> _onContinuePressed(
    BuildContext context,
    FormInstance instance,
    bool isPreview,
  ) async {
    InformLogger.logEvent(
      EmrOneInformTelemetry.kJobSearch,
      params: {
        'message': 'Job: ${instance.workOrderId} resumed',
      },
    );
    if (!isPreview &&
        UserInfoService.instance!.userInfo.name != instance.assignedTo) {
      final msg = 'Job already started by ${instance.assignedTo}';
      final snackBar = appSnackBarMessage(msg, MessageTypes.information);
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      InformLogger.logEvent(
        EmrOneInformTelemetry.kJobSearch,
        params: {
          'message':
              '''Job: ${instance.workOrderId} already started by ${instance.assignedTo}''',
        },
      );
      return;
    }

    InformLogger.logEvent(
      EmrOneInformTelemetry.kJobSearch,
      params: {
        'message': 'Navigating to run job: ${instance.workOrderId}',
      },
    );
    await context.pushNamed(
      FormsRoutingName.jobPage,
      queryParams: {
        'scheduledItemId': instance.scheduledItemId,
        'instanceId': instance.id,
        'jobData': instance.workOrderId == null
            ? null
            : jsonEncode(
                InstanceJobData(
                  assetCode: instance.assetCode!,
                  depotNo: instance.depotNo!,
                  jobType: instance.jobType ?? '',
                  territoryCode: territoryCode,
                  workOrderId: instance.workOrderId!,
                  workOrderDescription: instance.workOrderDescription!,
                ),
              ),
        'isPreview': isPreview.toString(),
        'isDigitalSignatureRequired': isDigitalSignatureNeeded(
          isDigitalSignatureRequiredForJob:
              instance.isDigitalSignatureRequired ?? false,
          isDigitalSignatureRequiredForTemplate:
              instance.template?.isDigitalSignatureRequired ?? false,
        ).toString(),
        'emailsToNotify': instance.template?.emailIds,
      },
    ).then((value) async {
      InformLogger.logEvent(
        EmrOneInformTelemetry.kJobSearch,
        params: {
          'message': 'Updating local DB for job: ${instance.workOrderId}',
        },
      );
      if (context.mounted) {
        await _reloadFromSqlDb(context, instance.scheduledItemId);
      }
    });
  }

  bool isDigitalSignatureNeeded({
    required bool isDigitalSignatureRequiredForTemplate,
    required bool isDigitalSignatureRequiredForJob,
  }) {
    if (InformJobs.preference?.isDigitalSignForWorkOrdersEnabled == null ||
        InformJobs.yardDetails?.yardCode == null) {
      return false;
    }
    final isEnabled = InformJobs.preference!.isDigitalSignForWorkOrdersEnabled!
        .getValue(InformJobs.yardDetails!.yardCode!);

    if (isEnabled) {
      if (isDigitalSignatureRequiredForJob ||
          isDigitalSignatureRequiredForTemplate) {
        return true;
      }
    }

    return false;
  }

  Future<void> _reloadFromSqlDb(
    BuildContext context,
    String? scheduledItemId,
  ) async {
    final userRepo =
        Provider.of<IUserPreferencesRepository>(context, listen: false);

    //inprogress jobs which are not on server yet.
    final inProgressJobs =
        await FormsEngine.services.get<IDatabaseManager>().findLocalInstances();

    final jobForms = JobForms(
      inProgress: controller.inProgressJobsMasterList,
      filteredForUser: controller.newJobsMasterList,
    );

    if (inProgressJobs?.isNotEmpty ?? false) {
      for (var i = 0; i < inProgressJobs!.length; i++) {
        inProgressJobsNumberOnDevice.add(inProgressJobs[i].scheduledItemId);

        jobForms.filteredForUser?.removeWhere(
          (e) => e.scheduledItemId == inProgressJobs[i].scheduledItemId,
        );
      }

      await userRepo.saveInProgressJobIds(inProgressJobsNumberOnDevice);
    }

    //submitted jobs which are not on server yet.
    final submittedJobs = await FormsEngine.services
        .get<IDatabaseManager>()
        .findLocalInstancesNotOnServer();
    if (submittedJobs?.isNotEmpty ?? false) {
      for (var i = 0; i < submittedJobs!.length; i++) {
        submittedJobsNumberOnDevice.add(submittedJobs[i].scheduledItemId);

        jobForms.inProgress?.removeWhere(
          (e) => e.scheduledItemId == submittedJobs[i].scheduledItemId,
        );

        jobForms.filteredForUser?.removeWhere(
          (e) => e.scheduledItemId == submittedJobs[i].scheduledItemId,
        );
      }
    }

    //we have handled only those instances which are not there on server.
    //We need to handle
    //1. jobs which are in progress on server
    //2. jobs which are submitted on server
    //both has to be removed from the list.

    final alreadyUploaded = await FormsEngine.services
        .get<IDatabaseManager>()
        .findUploadedInstances();

    final recentItem = alreadyUploaded
        ?.where((element) => element.scheduledItemId == scheduledItemId)
        .toList();

    if (recentItem != null && recentItem.isNotEmpty) {
      final instance = recentItem.elementAt(0);
      if (instance.isOnServer == true && instance.isSubmitted == true) {
        inProgressJobsNumberOnDevice.removeWhere(
          (e) => e == scheduledItemId,
        );
        submittedJobsNumberOnDevice.add(scheduledItemId!);

        jobForms.filteredForUser?.removeWhere(
          (e) => e.scheduledItemId == scheduledItemId,
        );

        jobForms.inProgress?.removeWhere(
          (e) => e.scheduledItemId == scheduledItemId,
        );
      } else if (instance.isOnServer == true &&
          instance.isSubmitted == false &&
          instance.isUploaded == true &&
          jobState == 'New') {
        inProgressJobsNumberOnDevice.add(scheduledItemId!);

        jobForms.filteredForUser?.removeWhere(
          (e) => e.scheduledItemId == scheduledItemId,
        );
      }
    }
    await userRepo.saveSubmittedJobIds(submittedJobsNumberOnDevice);
  }

  Widget _addTypeaheadSearchBox(BuildContext context) {
    return Wrap(
      runSpacing: 5,
      children: [
        TypeAheadFormField<String>(
          suggestionsCallback: (searchText) async {
            return _getSuggestions(context, searchText);
          },
          itemBuilder: (context, String availableSuggestions) {
            final suggestion = availableSuggestions;
            return ListTile(title: Text(suggestion));
          },
          onSuggestionSelected: (String availableSuggestions) {
            final suggestion = availableSuggestions;
            _filterController.text = suggestion;
            controller.setFilterText(suggestion);
          },
          noItemsFoundBuilder: (context) => SizedBox(
            height: 50,
            child: typeAheadErrorMessageWidget(
              context.l10n.noRecordsMessage,
            ),
          ),
          textFieldConfiguration: TextFieldConfiguration(
            controller: _filterController,
            decoration: FormStyles.textFieldDecoration(context).copyWith(
              labelText: context.l10n.searchJobsHintText,
              hintText: context.l10n.searchJobsHintText,
              suffixIcon: _filterController.text.isEmpty
                  ? null
                  : IconButton(
                      onPressed: () {
                        _filterController.clear();
                        controller.setFilterText(null);
                      },
                      icon: const Icon(Icons.clear),
                    ),
            ),
          ),
        ),
      ],
    );
  }

  List<String> _getSuggestions(
    BuildContext context,
    String searchText,
  ) {
    var filteredForUser = <ScheduledJobForm>[];
    var inProgress = <FormInstance>[];
    var scheduled = <ScheduledJobForm>[];
    var list = <String>[];
    final jobForms = JobForms(
      inProgress: controller.inProgressJobsMasterList,
      filteredForUser: controller.newJobsMasterList,
    );

    if (jobForms.filteredForUser != null && jobState == 'New') {
      filteredForUser = jobForms.filteredForUser!.toList();
      if (filteredForUser.isNotEmpty) {
        list.addAll(filteredForUser.map((e) => e.job!.workOrderId ?? ''));
        list.addAll(
          filteredForUser.map((e) => e.job!.workOrderDescription ?? ''),
        );
        list.addAll(
          filteredForUser.map((e) => e.job!.originalDescription ?? ''),
        );
        list.addAll(filteredForUser.map((e) => e.job!.asset?.assetCode ?? ''));
        list.addAll(filteredForUser.map((e) => e.job!.jobTrade ?? ''));
        list.addAll(filteredForUser.map((e) => e.job!.category ?? ''));
        list.addAll(filteredForUser.map((e) => e.job!.yardCode ?? ''));
      }
    }
    if (jobForms.inProgress != null && jobState == 'In Progress') {
      inProgress = jobForms.inProgress!.toList();
      if (inProgress.isNotEmpty) {
        list.addAll(inProgress.map((e) => e.assetCode ?? ''));
        list.addAll(inProgress.map((e) => e.workOrderId ?? ''));
        list.addAll(inProgress.map((e) => e.workOrderDescription ?? ''));
        list.addAll(inProgress.map((e) => e.jobTrade ?? ''));
        list.addAll(inProgress.map((e) => e.category ?? ''));
        list.addAll(inProgress.map((e) => e.yardCode ?? ''));
      }
    }
    if (jobForms.scheduled != null) {
      scheduled = jobForms.scheduled!.toList();
      if (scheduled.isNotEmpty) {
        list.addAll(scheduled.map((e) => e.job!.workOrderId ?? ''));
        list.addAll(scheduled.map((e) => e.job!.workOrderDescription ?? ''));
        list.addAll(scheduled.map((e) => e.job!.originalDescription ?? ''));
        list.addAll(scheduled.map((e) => e.job!.asset?.assetCode ?? ''));
        list.addAll(scheduled.map((e) => e.job!.jobTrade ?? ''));
        list.addAll(scheduled.map((e) => e.job!.category ?? ''));
        list.addAll(scheduled.map((e) => e.job!.yardCode ?? ''));
      }
    }

    final seen = <String>{};
    list = list
        .where(seen.add)
        .where((e) => e.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
    list = list.toSet().toList();
    list.removeWhere((x) => x.isEmpty);
    return list;
  }

  Widget _addFilterChoiceChips() {
    final choiceChips = <Widget>[];
    final jobForms = JobForms(
      inProgress: controller.inProgressJobsMasterList,
      filteredForUser: controller.newJobsMasterList,
    );

    var choiceChipsText = <String>[];
    if (jobState == 'New') {
      if (controller.selectedFilterByOption == 'Job Trade') {
        choiceChipsText = jobForms.filteredForUser!
            .map((e) => e.job!.jobTrade ?? '')
            .toList();
      }
      if (controller.selectedFilterByOption == 'Job Type') {
        choiceChipsText =
            jobForms.filteredForUser!.map((e) => e.job!.jobType ?? '').toList();
      }
      if (controller.selectedFilterByOption == 'Job Type Variant') {
        choiceChipsText = jobForms.filteredForUser!
            .map((e) => e.job!.jobTypeVariant ?? '')
            .toList();
      }
      if (controller.selectedFilterByOption == 'Description') {
        choiceChipsText = jobForms.filteredForUser!
            .map((e) => e.job!.workOrderDescription ?? '')
            .toList();
      }
      if (controller.selectedFilterByOption == 'Category') {
        choiceChipsText =
            jobForms.filteredForUser!.map((e) => e.job!.category!).toList();
      }
      if (controller.selectedFilterByOption == 'Yard') {
        choiceChipsText =
            jobForms.filteredForUser!.map((e) => e.job!.yardCode!).toList();
      }
      if (controller.selectedFilterByOption == 'Team') {
        choiceChipsText = jobForms.filteredForUser!
            .map((e) => e.job!.assignedToTeam ?? '')
            .toList();
      }
    } else if (jobState == 'In Progress') {
      if (controller.selectedFilterByOption == 'Job Trade') {
        choiceChipsText =
            jobForms.inProgress!.map((e) => e.jobTrade ?? '').toList();
      }
      if (controller.selectedFilterByOption == 'Job Type') {
        choiceChipsText =
            jobForms.inProgress!.map((e) => e.jobType ?? '').toList();
      }
      if (controller.selectedFilterByOption == 'Job Type Variant') {
        choiceChipsText =
            jobForms.inProgress!.map((e) => e.jobTypeVariant ?? '').toList();
      }
      if (controller.selectedFilterByOption == 'Description') {
        choiceChipsText = jobForms.inProgress!
            .map((e) => e.workOrderDescription ?? '')
            .toList();
      }
      if (controller.selectedFilterByOption == 'Category') {
        choiceChipsText =
            jobForms.inProgress!.map((e) => e.category ?? '').toList();
      }
      if (controller.selectedFilterByOption == 'Yard') {
        choiceChipsText =
            jobForms.inProgress!.map((e) => e.yardCode ?? '').toList();
      }
      if (controller.selectedFilterByOption == 'Team') {
        choiceChipsText =
            jobForms.inProgress!.map((e) => e.assignedToTeam ?? '').toList();
      }
    }

    choiceChips.addAll(
      choiceChipsText
          .fold(
            <String, int>{},
            (Map<String, int> map, item) => map
              ..update(
                item,
                (count) => count + 1,
                ifAbsent: () => 1,
              ),
          )
          .entries
          .map(
            (e) => ChoiceChip(
              selectedColor: FormAppColors.success,
              label: Text('${e.key} (${e.value})'),
              selected: controller.filterChips.contains(e.key),
              onSelected: (value) {
                if (controller.filterChips.contains(e.key)) {
                  controller.filterChips.remove(e.key);
                  if (controller.selectedFilterByOption == 'Yard') {
                    controller.selectedYards.remove(e.key);
                  }
                } else {
                  controller.filterChips.add(e.key);
                  if (controller.selectedFilterByOption == 'Yard') {
                    controller.selectedYards.add(e.key);
                  }
                }

                _filterController.text = '';
                controller.setFilterText(null);
              },
            ),
          ),
    );

    return Column(
      children: [
        if ((jobForms.filteredForUser != null &&
                jobForms.filteredForUser!.isNotEmpty) ||
            (jobForms.inProgress != null && jobForms.inProgress!.isNotEmpty))
          Row(
            children: [
              const Text('Filter By: '),
              const SizedBox(width: 10),
              DropdownButton<String>(
                value: controller.selectedFilterByOption,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                onChanged: (String? value) {
                  setState(() {
                    controller.filterChips.clear();
                    controller.selectedFilterByOption = value;
                  });
                },
                items: const [
                  DropdownMenuItem<String>(
                    value: 'Job Trade',
                    child: Text('Job Trade'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Job Type',
                    child: Text('Job Type'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Job Type Variant',
                    child: Text('Job Type Variant'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Description',
                    child: Text('Description'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Category',
                    child: Text('Category'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Yard',
                    child: Text('Yard'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Team',
                    child: Text('Team'),
                  ),
                ],
              ),
            ],
          ),
        Wrap(spacing: 5, runSpacing: 5, children: choiceChips),
      ],
    );
  }

  Widget _addFilterChoiceChipsYardDepots() {
    final choiceChips = <Widget>[];
    var choiceChipsText = <String>[];
    if (jobState == 'New') {
      choiceChipsText = controller.newJobsMasterList!
          .where((e) => controller.selectedYards.contains(e.job!.yardCode))
          .map((e) => e.job!.depotNo!)
          .toList();
    } else if (jobState == 'In Progress') {
      choiceChipsText = controller.inProgressJobsMasterList!
          .where((e) => controller.selectedYards.contains(e.yardCode))
          .map((e) => e.depotNo ?? '')
          .toList();
    }
    choiceChips.addAll(
      choiceChipsText
          .fold(
            <String, int>{},
            (Map<String, int> map, item) => map
              ..update(
                item,
                (count) => count + 1,
                ifAbsent: () => 1,
              ),
          )
          .entries
          .map(
            (e) => ChoiceChip(
              selectedColor: FormAppColors.success,
              label: Text('${e.key} (${e.value})'),
              selected: controller.filterDepotChips.contains(e.key),
              onSelected: (value) {
                if (controller.filterDepotChips.contains(e.key)) {
                  controller.filterDepotChips.remove(e.key);
                } else {
                  controller.filterDepotChips.add(e.key);
                }

                _filterController.text = '';
                controller.setFilterText(null);
              },
            ),
          ),
    );
    return Column(
      children: [
        if ((controller.newJobsMasterList != null &&
                controller.newJobsMasterList!.isNotEmpty) ||
            (controller.inProgressJobsMasterList != null &&
                controller.inProgressJobsMasterList!.isNotEmpty))
          Wrap(spacing: 5, runSpacing: 5, children: choiceChips),
      ],
    );
  }
}
