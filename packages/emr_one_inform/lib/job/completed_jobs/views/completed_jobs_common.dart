import 'dart:convert';
import 'dart:ui';

import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_inform/common/common_export.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/job/completed_jobs/controllers/completed_jobs_controller.dart';
import 'package:emr_one_inform/job/completed_jobs/model/completed_job.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/message_type.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/widgets/inform_bottom_app_bar.dart';
import 'package:emr_one_inform/widgets/new_search_widget.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

abstract class CompletedJobsCommon extends BasePage<CompletedJobsController> {
  CompletedJobsCommon({
    this.filterForUser,
    super.key,
    this.startDate,
    this.endDate,
    this.assetCode,
  });

  final bool? filterForUser;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? assetCode;
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  final _notesController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) {
    return '${(filterForUser ?? false) ? 'My ' : ''}'
        'Completed Jobs (${yard.yardCode})';
  }

  @override
  void initState(BuildContext context) {
    controller.filterForUser = filterForUser ?? false;
    controller.getAllYards();
    controller.setYardSearchState();
    _onFilterApplied();
  }

  Future<void> onRefresh() async {
    _onFilterApplied();
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    scrollController.addListener(
      () {
        final nextPageTrigger = 0.8 * scrollController.position.maxScrollExtent;
        if (controller.hasNextPage &&
            scrollController.position.pixels > nextPageTrigger) {
          _onFilterApplied(isRefresh: false);
        }
      },
    );

    if (controller.isLoading) return showSpinner();
    if (controller.isProcessing) return showSpinner();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: PopupMenuButton(
          color: FormAppColors.black,
          icon: const Icon(Icons.menu),
          position: PopupMenuPosition.under,
          onSelected: (value) {
            if (value == 'Fetch') {
              if (controller.hasNextPage) {
                _onFilterApplied(isRefresh: false);
                return;
              }
            } else if (value == 'Collapse') {
              setState(() {
                controller.isCollapsed = !controller.isCollapsed;
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
              if (controller.hasNextPage)
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
                if (controller.isProcessing || controller.isLoading) ...[
                  showSpinner(),
                ] else ...[
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
                            _addSortByOptions(context),
                            _addTypeaheadSearchBox(context),
                            _addJobTradeChoiceChipsWidget(),
                            if (controller.selectedFilterByOption ==
                                'Yard') ...[
                              const SizedBox(height: 5),
                              _addFilterChoiceChipsYardDepots(),
                            ],
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                  if (controller.completedJobs!.isEmpty)
                    Center(
                      child: showNoResults(context),
                    )
                  else ...[
                    Material(
                      elevation: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            _addScheduleTypeChips(),
                            _selectableAndExportControls(context),
                            Stack(
                              children: [
                                _addListView(context),
                                if (controller.isNextpageLoading)
                                  Positioned(
                                    bottom: Insets.gutter,
                                    left: Insets.gutter,
                                    right: Insets.gutter,
                                    child: showSpinner(),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ],
              ],
            ),
          ),
        ),
      ),
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
                  key: UniqueKey(),
                  searchOptions: [
                    DateRangeSearchOption(
                      displayText: 'Date',
                      propertyName: 'date',
                      isPinned: true,
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
                    TypeaheadSearchOption(
                      displayText: 'Completed By',
                      propertyName: 'submittedBy',
                      datasource: null,
                      sourceCallback: controller.getUserNames,
                    ),
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
                  initialState: controller.searchState,
                  onStateChanged: (searchState) async {
                    controller.searchStateChanged(searchState);
                    _onFilterApplied();
                  },
                );
              },
            ),
          );
        },
      );

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

  void onSearch() {
    controller.toggleSearchWindow();
  }

  void onFilter() {
    controller.toggleFilterWindow();
  }

  Widget _selectableAndExportControls(
    BuildContext context,
  ) {
    return Row(
      children: [
        Checkbox(
          tristate: true,
          value: controller.selectedItems.isEmpty
              ? false
              : controller.selectedItems.length ==
                      controller.completedJobs!.length
                  ? true
                  : null,
          onChanged: (isChecked) {
            controller.checkAllChanged(isChecked: isChecked);
          },
        ),
        GestureDetector(
          onTap: () {
            controller.onCheckAllTapped();
          },
          child: Text(context.l10n.checkAll),
        ),
        const Spacer(),
        if (kIsWeb)
          Text(
            'Compact View',
            style: TextStyle(color: FormAppColors.black),
          ),
        Switch(
          value: controller.isCollapsed,
          onChanged: (value) async {
            setState(() {
              controller.isCollapsed = !controller.isCollapsed;
            });
          },
        ),
        const SizedBox(
          width: 10,
        ),
        if (!kIsWeb)
          IconButton(
            onPressed: !controller.hasNextPage
                ? null
                : () => _onFilterApplied(isRefresh: false),
            icon: const Icon(Icons.notes),
          ),
        if (kIsWeb)
          ElevatedButton(
            onPressed: !controller.hasNextPage
                ? null
                : () => _onFilterApplied(isRefresh: false),
            child: const Tooltip(
              message: 'Fetch More',
              child: Icon(Icons.notes),
            ),
          ),
        const SizedBox(
          width: 10,
        ),
        if (!kIsWeb)
          IconButton(
            onPressed: controller.selectedItems.isEmpty
                ? null
                : () async {
                    await _exportClick(context);
                  },
            icon: const Icon(Icons.exit_to_app),
          ),
        if (kIsWeb)
          ElevatedButton(
            onPressed: controller.selectedItems.isEmpty
                ? null
                : () async {
                    await _exportClick(context);
                  },
            child: Text('Export (${controller.selectedItems.length})'),
          ),
      ],
    );
  }

  Future<void> _exportClick(BuildContext context) async {
    final scaffoldMessengerState = ScaffoldMessenger.of(context);
    try {
      final filePath = await controller.exportPdf();

      final snackBar = appSnackBarMessage(
        'Exported to $filePath',
        MessageTypes.success,
      );
      scaffoldMessengerState.showSnackBar(snackBar);
    } catch (e) {
      final snackBar = appSnackBarMessage(e.toString(), MessageTypes.error);
      scaffoldMessengerState.showSnackBar(snackBar);
    }
  }

  Widget _addListView(BuildContext context) {
    var list = controller.completedJobs!;
    controller.filteredList.clear();
    controller.filteredList.addAll(list);

    if (controller.sortBy.fieldName == 'Title') {
      if (controller.sortBy.sortDirection == SortDirection.ascending) {
        list.sort(
          (x, y) => (x.workOrderDescription ?? '')
              .compareTo(y.workOrderDescription ?? ''),
        );
      } else {
        list.sort(
          (x, y) => (y.workOrderDescription ?? '')
              .compareTo(x.workOrderDescription ?? ''),
        );
      }
    }

    if (controller.sortBy.fieldName == 'Work Order') {
      if (controller.sortBy.sortDirection == SortDirection.ascending) {
        list.sort((x, y) => x.workOrderId!.compareTo(y.workOrderId!));
      } else {
        list.sort((x, y) => y.workOrderId!.compareTo(x.workOrderId!));
      }
    }

    if (controller.sortBy.fieldName == 'Submitted Date') {
      if (controller.sortBy.sortDirection == SortDirection.ascending) {
        list.sort((x, y) => x.submittedDate!.compareTo(y.submittedDate!));
      } else {
        list.sort((x, y) => y.submittedDate!.compareTo(x.submittedDate!));
      }
    }

    if (controller.sortBy.fieldName == 'Asset Code') {
      if (controller.sortBy.sortDirection == SortDirection.ascending) {
        list.sort((x, y) => x.assetCode!.compareTo(y.assetCode!));
      } else {
        list.sort((x, y) => y.assetCode!.compareTo(x.assetCode!));
      }
    }

    if (controller.sortBy.fieldName == 'Priority') {
      if (controller.sortBy.sortDirection == SortDirection.ascending) {
        list.sort((x, y) => x.jobPriority!.compareTo(y.jobPriority!));
      } else {
        list.sort((x, y) => y.jobPriority!.compareTo(x.jobPriority!));
      }
    }

    if (controller.searchPattern?.isNotEmpty ?? false) {
      list = list
          .where(
            (e) =>
                e.workOrderDescription == controller.searchPattern ||
                e.workOrderId == controller.searchPattern ||
                e.assetCode == controller.searchPattern ||
                e.submittedBy == controller.searchPattern,
          )
          .toList();
    }

    if (controller.selectedFilterChip.isNotEmpty) {
      list = list
          .where(
            (e) =>
                controller.selectedFilterChip
                    .contains(e.workOrderDescription ?? '') ||
                controller.selectedFilterChip.contains(e.jobType ?? '') ||
                controller.selectedFilterChip.contains(e.jobTrade ?? '') ||
                controller.selectedFilterChip
                    .contains(e.jobTypeVariant ?? '') ||
                controller.selectedFilterChip.contains(e.depotNo ?? '') ||
                controller.selectedFilterChip.contains(e.yardCode ?? '') ||
                controller.selectedFilterChip.contains(e.teamName ?? '') ||
                controller.selectedFilterChip.contains(e.category ?? ''),
          )
          .toList();
      controller.filteredList.clear();
      controller.filteredList.addAll(list);
    }
    if (controller.selectedScheduledItemType.isNotEmpty) {
      list = list
          .where(
            (e) => controller.selectedScheduledItemType
                .contains(e.scheduleItemType),
          )
          .toList();
    }
    if (controller.filterDepotChips.isNotEmpty) {
      list = list
          .where(
            (element) =>
                controller.filterDepotChips.contains(element.depotNo ?? ''),
          )
          .toList();
    }

    return showJobList(context, list);
  }

  Widget showJobList(BuildContext context, List<CompletedJob> list);

  Widget _addSortByOptions(BuildContext context) {
    return Row(
      children: [
        Text(
          context.l10n.sortBy,
        ),
        _addSortByDropDownWidget(),
      ],
    );
  }

  Widget _addSortByDropDownWidget() {
    final sortFields = [
      'Title',
      'Submitted Date',
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
        controller.setSortBy((onChanged)!);
      },
    );
  }

  Widget _getSignature(BuildContext context) {
    var inkPadController = EmrInkPadController();

    inkPadController.addListener(_signatureChanged);
    return StatefulBuilder(
      builder: (context, setState) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                width: 300,
                child: InformTextBox(
                  controller: _notesController,
                  onChanged: (value) {},
                  labelText: context.l10n.notes,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                child: Row(
                  children: [
                    Text(context.l10n.signature),
                  ],
                ),
              ),
              SizedBox(
                width: 300,
                height: 200,
                child: EmrInkPad(
                  key: UniqueKey(),
                  controller: inkPadController,
                  penColour: Colors.red,
                  backgroundColour: Colors.grey.shade300,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      isSignatureSubmitDisabled.value = true;
                      context.pop();
                    },
                    child: Text(context.l10n.cancel),
                  ),
                  ValueListenableBuilder(
                    valueListenable: isSignatureSubmitDisabled,
                    builder: (context, disabled, child) {
                      return ElevatedButton(
                        onPressed: disabled
                            ? null
                            : () async {
                                final signatureBytes =
                                    await inkPadController.getImage();
                                if (await checkImageValid(signatureBytes!)) {
                                  if (context.mounted) {
                                    isSignatureSubmitDisabled.value = true;
                                    context.pop(signatureBytes);
                                  }
                                } else {
                                  inkPadController
                                      .removeListener(_signatureChanged);
                                  inkPadController = EmrInkPadController();
                                  inkPadController
                                      .addListener(_signatureChanged);
                                  isSignatureSubmitDisabled.value = true;
                                  setState(() {});
                                }
                              },
                        child: Text(context.l10n.submit),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _validateSignatureData(
    Uint8List? stream,
    CompletedJob job,
  ) async {
    if (stream == null) return;

    await controller
        .validateBySignature(
      job.workOrderId!,
      stream,
      _notesController.text,
    )
        .then((value) async {
      var ctx = stateMediator.getBuildContext!.call();
      if (ctx.mounted) {
        await showConfirmationDialog(
          context: ctx,
          message: 'Do you want to create a ad-hoc work request ?',
        ).then((shouldNavigate) async {
          if (shouldNavigate ?? false) {
            ctx = stateMediator.getBuildContext!.call();
            if (ctx.mounted) {
              await ctx.pushNamed(
                FormsRoutingName.createWorkOrderRequest,
              );
            }
          }
          await onRefresh();
        });
      }
    });
  }

  Widget jobCell({
    required BuildContext context,
    required CompletedJob job,
    String? title,
    String? startedBy,
    String? workOrder,
    String? companyCode,
    String? assetCode,
    String? assetName,
    String? jobType,
    DateTime? submittedDate,
    String? jobPriority,
    String? submittedBy,
    String? teamName,
    String? category,
  }) {
    final slidableActions = List<SlidableAction>.empty(growable: true);
    if (ScreenAccess().canCreateTask(context)) {
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
              job: job,
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
          label: 'Quick Clone',
          onPressed: (BuildContext newContext) async {
            await controller
                .cloneJob(
              context: context,
              job: job,
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
                          '''$response${context.l10n.scheduleTaskCreated}''',
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

    return Slidable(
      startActionPane: workOrder!.startsWith('SI')
          ? ActionPane(
              extentRatio: 1,
              motion: const StretchMotion(),
              children: slidableActions,
            )
          : null,
      child: GestureDetector(
        onTap: () {
          controller.selectJob(job);
        },
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
                      CommonUtility.iconForJobPriority(job.jobPriority),
                      if (_canValidate(context, job)) ...[
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: job.validations?.any(
                                    (e) =>
                                        e.validatedBy ==
                                            UserInfoService
                                                .instance!.userInfo.name &&
                                        e.status == 'Created',
                                  ) ??
                                  false
                              ? null
                              : () async {
                                  if (job.template?.validateBySignature ??
                                      false) {
                                    await _validateBySignature(context, job);
                                    return;
                                  }

                                  if (job.template?.validateByWorkOrder ??
                                      false) {
                                    await _validateByWorkOrder(context, job);
                                    return;
                                  }
                                },
                          child: Text(context.l10n.validateButtonText),
                        ),
                      ],
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          context.pushNamed(
                            FormsRoutingName.completedJobsPdf,
                            params: {
                              'workOrderId': workOrder,
                              'companyCode': companyCode!,
                            },
                          );
                        },
                        child: Text(context.l10n.view),
                      ),
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
                                  job.scheduleItemType,
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
                  Row(
                    children: [
                      Text('$workOrder (${job.yardCode} / ${job.depotNo})'),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '${context.l10n.asset} : '
                        '${assetDisplayText(assetCode, assetName)}',
                      ),
                      if (controller.isCollapsed) ...[
                        const Spacer(),
                        Checkbox(
                          value: controller.selectedItems.contains(job),
                          onChanged: (isChecked) {
                            controller.selectionChanged(
                              isChecked: isChecked,
                              job: job,
                            );
                          },
                        ),
                      ],
                    ],
                  ),
                  if (!controller.isCollapsed) ...[
                    Row(
                      children: [
                        Text('${context.l10n.jobType} : ${jobType ?? '--'}'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '${context.l10n.jobTrade} : ${job.jobTrade ?? '--'}',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '${context.l10n.startedBy} : $startedBy',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(_getFormDueDate(context, submittedDate)),
                        const SizedBox(width: 5),
                        FormAppIcons.calendarIcon,
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${context.l10n.completedBy} : $submittedBy'),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '''
${context.l10n.category} : ${job.category ?? '--'}''',
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '''
${context.l10n.allocatedToTeam} : ${job.teamName ?? '--'}''',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          (job.validations?.isNotEmpty ?? false)
                              ? '''
${context.l10n.lastVerifiedBy} : ${job.validations?.lastOrNull?.validatedBy}'''
                              : '',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          (job.validations?.isNotEmpty ?? false)
                              ? '''
${context.l10n.verificationItems} : ${job.validations!.take(1).map((e) => e.referenceId ?? 'Signature').join(', ')}${job.validations!.length > 2 ? ' ...' : ''}'''
                              : '',
                        ),
                        Tooltip(
                          richMessage: WidgetSpan(
                            child: Column(
                              children: job.validations!
                                  .map(
                                    (e) => Wrap(
                                      children: [
                                        if (e.status == 'Submitted')
                                          Icon(
                                            Icons.done_outline_sharp,
                                            color: FormAppColors.background,
                                            size: 16,
                                          )
                                        else
                                          Icon(
                                            Icons.schedule,
                                            color: FormAppColors.background,
                                            size: 16,
                                          ),
                                        Text(
                                          '''
${e.referenceId ?? 'Signature'} (${e.validatedBy})''',
                                          style: TextStyle(
                                            color: FormAppColors.background,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                          child: job.validations!.isEmpty
                              ? null
                              : Icon(
                                  Icons.info,
                                  size: 18,
                                  color: FormAppColors.information,
                                ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Checkbox(
                          value: controller.selectedItems.contains(job),
                          onChanged: (isChecked) {
                            controller.selectionChanged(
                              isChecked: isChecked,
                              job: job,
                            );
                          },
                        ),
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

  bool isDigitalSignatureNeeded({
    required bool isDigitalSignatureRequiredForTemplate,
    required bool isDigitalSignatureRequiredForJob,
  }) {
    if (isDigitalSignatureRequiredForJob ||
        isDigitalSignatureRequiredForTemplate) {
      return true;
    }

    if (InformJobs.preference?.isDigitalSignForWorkOrdersEnabled == null ||
        InformJobs.yardDetails?.yardCode == null) {
      return false;
    }

    return InformJobs.preference!.isDigitalSignForWorkOrdersEnabled!
        .getValue(InformJobs.yardDetails!.yardCode!);
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

    return context.l10n.submittedDateText + formattedDate;
  }

  Widget _addTypeaheadSearchBox(BuildContext context) {
    return TypeAheadFormField<String>(
      suggestionsCallback: _getSuggestions,
      itemBuilder: (context, String availableSuggestions) {
        final suggestion = availableSuggestions;
        return ListTile(
          title: Text(
            suggestion,
          ),
        );
      },
      onSuggestionSelected: (String availableSuggestions) {
        final suggestion = availableSuggestions;
        _controller.text = suggestion;
        setState(() {
          controller.selectedFilterChip = [];
          controller.searchPattern = _controller.text;
        });
      },
      noItemsFoundBuilder: (context) => SizedBox(
        height: 50,
        child: typeAheadErrorMessageWidget(context.l10n.noRecordsMessage),
      ),
      textFieldConfiguration: TextFieldConfiguration(
        controller: _controller,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          labelText: context.l10n.searchJobsHintText,
          hintText: context.l10n.searchJobsHintText,
          suffixIcon: _controller.text.isEmpty
              ? null
              : IconButton(
                  onPressed: () {
                    _controller.clear();
                    setState(() {
                      controller.selectedFilterChip = [];
                      controller.searchPattern = null;
                    });
                  },
                  icon: const Icon(Icons.clear),
                ),
        ),
      ),
    );
  }

  Widget _addJobTradeChoiceChipsWidget() {
    final choiceChips = <Widget>[];

    if (controller.completedJobs?.isNotEmpty ?? false) {
      final jobTrades = <String>[];
      if (controller.selectedFilterByOption == 'Job Trade') {
        jobTrades.addAll(
          controller.completedJobs!.map((e) => e.jobTrade ?? '').toList(),
        );
      }

      if (controller.selectedFilterByOption == 'Job Type') {
        jobTrades.addAll(
          controller.completedJobs!.map((e) => e.jobType ?? '').toList(),
        );
      }

      if (controller.selectedFilterByOption == 'Job Type Variant') {
        jobTrades.addAll(
          controller.completedJobs!.map((e) => e.jobTypeVariant ?? '').toList(),
        );
      }

      if (controller.selectedFilterByOption == 'Description') {
        jobTrades.addAll(
          controller.completedJobs!
              .map((e) => e.workOrderDescription ?? '')
              .toList(),
        );
      }

      if (controller.selectedFilterByOption == 'Yard') {
        jobTrades.addAll(
          controller.completedJobs!.map((e) => e.yardCode ?? '').toList(),
        );
      }

      if (controller.selectedFilterByOption == 'Team') {
        jobTrades.addAll(
          controller.completedJobs!.map((e) => e.teamName ?? '').toList(),
        );
      }

      if (controller.selectedFilterByOption == 'Category') {
        jobTrades.addAll(
          controller.completedJobs!.map((e) => e.category ?? '').toList(),
        );
      }

      choiceChips.addAll(
        jobTrades
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
                selected: controller.selectedFilterChip.contains(e.key),
                onSelected: (value) {
                  setState(() {
                    if (value) {
                      controller.selectedFilterChip.add(e.key);
                      if (controller.selectedFilterByOption == 'Yard') {
                        controller.selectedYards.add(e.key);
                      }
                    } else {
                      controller.selectedFilterChip.remove(e.key);
                      if (controller.selectedFilterByOption == 'Yard') {
                        controller.selectedYards.remove(e.key);
                      }
                    }
                    controller.searchPattern = '';
                    _controller.text = '';
                  });
                },
              ),
            ),
      );
    }

    return Column(
      children: [
        if (controller.completedJobs?.isNotEmpty ?? false)
          Row(
            children: [
              const Text('Filter By: '),
              const SizedBox(width: 10),
              DropdownButton<String>(
                value: controller.selectedFilterByOption,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    controller.selectedFilterChip = [];
                    controller.selectedFilterByOption = value!;
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
                    value: 'Yard',
                    child: Text('Yard'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Team',
                    child: Text('Team'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Category',
                    child: Text('Category'),
                  ),
                ],
              ),
            ],
          ),
        Wrap(spacing: 5, runSpacing: 5, children: choiceChips),
      ],
    );
  }

  List<String> _getSuggestions(
    String searchText,
  ) {
    var masterList = <String>[];
    masterList.addAll(
      controller.completedJobs
              ?.map((e) => e.workOrderDescription ?? '')
              .toList() ??
          [],
    );
    masterList.addAll(
      controller.completedJobs?.map((e) => e.workOrderId ?? '').toList() ?? [],
    );
    masterList.addAll(
      controller.completedJobs?.map((e) => e.assetCode ?? '').toList() ?? [],
    );
    masterList.addAll(
      controller.completedJobs?.map((e) => e.submittedBy ?? '').toList() ?? [],
    );

    masterList = masterList.where((e) => e.isNotEmpty).toSet().toList();
    return masterList
        .where((e) => e.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
  }

  void _onFilterApplied({bool isRefresh = true}) {
    _controller.text = '';
    controller.loadJobs(
      isRefresh: isRefresh,
    );
  }

  @override
  Widget getBottomBar(Yard yard) {
    return InformBottomAppBar(
      yard: yard,
      screenName: FormsRoutingName.completedJobs,
      startDate: startDate,
      endDate: endDate,
      assetCode: assetCode,
    );
  }

  void _signatureChanged() {
    isSignatureSubmitDisabled.value = false;
  }

  final isSignatureSubmitDisabled = ValueNotifier(true);
  Widget _popupForValidateBySignature(BuildContext context, CompletedJob? job) {
    return AlertDialog(
      title: Text('${context.l10n.validateButtonText} '
          '(${UserInfoService.instance!.userInfo.name})'),
      content: _getSignature(context),
    );
  }

  Future<bool> checkImageValid(Uint8List bytes) async {
    // Example byte data (replace with your actual image bytes)

    // Decode the image dimensions and pixel data
    final codec = await instantiateImageCodec(bytes);
    final frameInfo = await codec.getNextFrame();
    final byteData = await frameInfo.image.toByteData();

    if (byteData != null) {
      // Extract pixel data
      final pixels = byteData.buffer.asUint32List();

      // Count unique colors
      final colors = <int>{};
      for (final pixel in pixels) {
        colors.add(pixel);
        // You can break early if you find more than one color
        if (colors.length > 1) {
          return true;
        }
      }
    }
    return false;
  }

  Future<void> _validateByWorkOrder(
    BuildContext context,
    CompletedJob job,
  ) async {
    await showConfirmationDialog(
      context: context,
      message: context.l10n.confirmationCreateValidationTask,
    ).then((isConfirmed) async {
      if (isConfirmed == null || isConfirmed == false) return;
      await controller.createValidationTask(job).then((workOrderId) async {
        if (workOrderId == null) {
          await showMessageDialog(
            context: stateMediator.getBuildContext!.call(),
            messageType: MessageType.error,
            message: 'Could not create a work order',
          );
          return;
        }

        await showConfirmationDialog(
          context: stateMediator.getBuildContext!.call(),
          message:
              'Work order $workOrderId created. Do you want to start now ?',
        ).then((canStart) async {
          if (canStart ?? false) {
            await controller
                .getJobByWorkOrderId(workOrderId, yard.yardCode!)
                .then(
              (scheduled) {
                if (scheduled == null) return;
                final ctx = stateMediator.getBuildContext!.call();
                if (ctx.mounted) {
                  ctx.pushNamed(
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
                                territoryCode: '',
                                workOrderId: scheduled.job!.workOrderId!,
                                workOrderDescription:
                                    scheduled.job!.workOrderDescription!,
                              ),
                            ),
                      'isPreview': 'false',
                      'isDigitalSignatureRequired': isDigitalSignatureNeeded(
                        isDigitalSignatureRequiredForJob:
                            scheduled.job?.isDigitalSignatureRequired ?? false,
                        isDigitalSignatureRequiredForTemplate:
                            scheduled.template?.isDigitalSignatureRequired ??
                                false,
                      ).toString(),
                    },
                  );
                }
              },
            );
          }
          await onRefresh();
        });
      });
    });
  }

  bool _canValidate(BuildContext context, CompletedJob job) {
    // submitted date is today
    // job id starts with WO
    // ValidateBySignature or ValidateByWorkOrder should be true
    // validateFrom should be null or less than current time
    return job.submittedDate.dateOnly == DateTime.now().dateOnly &&
        job.workOrderId!.startsWith('WO') &&
        (((job.template?.validateBySignature ?? false) ||
                (job.template?.validateByWorkOrder ?? false)) &&
            (job.template?.validateFrom == null ||
                job.template!.validateFrom!.dateOnly.isBefore(DateTime.now())));
  }

  Future<void> _validateBySignature(
    BuildContext context,
    CompletedJob job,
  ) async {
    if (!kIsWeb) {
      await showModalBottomSheet<Uint8List>(
        context: context,
        builder: _getSignature,
      ).then((image) async {
        await _validateSignatureData(image, job);
      });
    } else {
      await showDialog<Uint8List>(
        context: context,
        barrierDismissible: false,
        builder: (context) => _popupForValidateBySignature(
          context,
          job,
        ),
      ).then((stream) async {
        await _validateSignatureData(stream, job);
      });
    }
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
          selected: controller.selectedScheduledItemType.contains(e),
          onSelected: (value) {
            if (value) {
              if (!controller.selectedScheduledItemType.contains(e)) {
                setState(() => controller.selectedScheduledItemType.add(e));
              }
            } else {
              if (controller.selectedScheduledItemType.contains(e)) {
                setState(() => controller.selectedScheduledItemType.remove(e));
              }
            }
          },
          selectedColor: FormAppColors.success,
        ),
      ).toList(),
    );
  }

  String _getCount(String group) {
    final jobForms = controller.filteredList;
    return jobForms
        .where((x) => x.scheduleItemType == group)
        .toList()
        .length
        .toString();
  }

  Widget _addFilterChoiceChipsYardDepots() {
    final choiceChips = <Widget>[];
    final completedJobs = controller.completedJobs;
    var choiceChipsText = <String>[];

    choiceChipsText = completedJobs!
        .where((e) => controller.selectedYards.contains(e.yardCode))
        .map((e) => e.depotNo!)
        .toList();

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
                  setState(() {
                    controller.filterDepotChips.remove(e.key);
                  });
                } else {
                  setState(() {
                    controller.filterDepotChips.add(e.key);
                  });
                }
                _controller.text = '';
              },
            ),
          ),
    );
    return Column(
      children: [
        if (completedJobs.isNotEmpty)
          Wrap(spacing: 5, runSpacing: 5, children: choiceChips),
      ],
    );
  }
}
