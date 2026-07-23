import 'dart:convert';

import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_forms_engine/core/models/service/instance_job_info.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/constants/strings.dart';
import 'package:emr_one_inform/constants/styles.dart';
import 'package:emr_one_inform/diagnostic/controller/diagnostic_controller.dart';
import 'package:emr_one_inform/models/asset.dart';
import 'package:emr_one_inform/models/diagnostic_job_form.dart';
import 'package:emr_one_inform/models/form_instance.dart';
import 'package:emr_one_inform/models/message_type.dart';
import 'package:emr_one_inform/models/sort_by.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:emr_one_inform/widgets/new_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:responsive_grid/responsive_grid.dart';

class DiagnosticView extends BasePage<IDiagnosticController> {
  DiagnosticView({super.key});
  final _filterController = TextEditingController();
  final scrollController = ScrollController();
  late final String territoryCode;

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  List<Widget> getActions(BuildContext context) {
    return [
      IconButton(
        onPressed: onRefresh,
        icon: Icon(Icons.refresh, color: FormAppColors.white),
      ),
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

  @override
  String getTitle(BuildContext context) => 'Diagnostic';

  @override
  void initState(BuildContext context) {
    controller.loadJobs();
    _getTerritoryCode(context);
  }

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  Widget widgetBuilder(BuildContext context) {
    scrollController.addListener(
      () {
        final nextPageTrigger = 0.8 * scrollController.position.maxScrollExtent;
        if (controller.hasNextPage &&
            scrollController.position.pixels > nextPageTrigger &&
            !controller.isNextPageLoading) {
          controller.loadJobs(isRefresh: false);
        }
      },
    );
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
                controller.loadJobs(isRefresh: false);
                return;
              }
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
      body: SingleChildScrollView(
        controller: scrollController,
        child: Wrap(
          runSpacing: 10,
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
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5),
            ],
            if (controller.isBusy || controller.isLoading) ...[
              Center(child: showSpinner()),
            ] else if (controller.jobs != null &&
                controller.jobs!.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Spacer(),
                    ElevatedButton(
                      onPressed: !controller.hasNextPage
                          ? null
                          : () => controller.loadJobs(isRefresh: false),
                      child: const Tooltip(
                        message: 'Fetch More',
                        child: Icon(Icons.notes),
                      ),
                    ),
                  ],
                ),
              ),
              _addGroupChoiceChips(),
              const SizedBox(height: 5),
              if (controller.canTakeAction) ...[
                getActionsForDiagnostic(context),
              ],
              _getjobsPanel(context),
            ] else ...[
              Center(child: showNoData('No jobs found')),
            ],
          ],
        ),
      ),
    );
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

  Widget _addFilterChoiceChips() {
    final choiceChips = <Widget>[];
    var choiceChipsText = <String>[];
    if (controller.selectedFilterByOption == 'Yard') {
      choiceChipsText = controller.jobs!.map((e) => e.yardCode ?? '').toList();
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
              label: Text('${e.key}(${e.value})'),
              selected: controller.filterChips.contains(e.key),
              selectedColor: FormAppColors.success,
              onSelected: (value) {
                if (controller.filterChips.contains(e.key)) {
                  controller.filterChips.remove(e.key);
                } else {
                  controller.filterChips.add(e.key);
                }
                _filterController.text = '';
                controller.setFilterText(null);
              },
            ),
          ),
    );
    return Column(
      children: [
        if (controller.jobs != null)
          Row(
            children: [
              const Text('Filter By:'),
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
                    value: 'Yard',
                    child: Text('Yard'),
                  ),
                ],
              ),
            ],
          ),
        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: choiceChips,
        ),
      ],
    );
  }

  List<String> _getSuggestions(
    BuildContext context,
    String searchText,
  ) {
    var list = <String>[];
    if (controller.jobs!.isNotEmpty) {
      list.addAll(controller.jobs!.map((e) => e.workOrderId ?? ''));
      list.addAll(controller.jobs!.map((e) => e.workOrderDescription ?? ''));
      list.addAll(controller.jobs!.map((e) => e.scheduledItemStatus ?? ''));
      list.addAll(controller.jobs!.map((e) => e.yardCode ?? ''));
      list.addAll(controller.jobs!.map((e) => e.depotNo ?? ''));
    }
    final seen = <String>{};
    list = list
        .where(seen.add)
        .where((e) => e.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
    list = list.toSet().toList();
    return list;
  }

  Widget _getjobsPanel(BuildContext context) {
    if (controller.jobs != null) {
      controller.filteredJobs = _filterByGroup(controller.jobs!);
    }
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          if (controller.filteredJobs.isEmpty) ...[
            Center(child: showNoData('No jobs found')),
          ] else ...[
            _addJobList(context),
          ],
        ],
      ),
    );
  }

  Widget _addSearchWidget() => ValueListenableBuilder(
        valueListenable: controller.isSearchWidgetVisible,
        builder: (context, value, child) {
          return Visibility(
            visible: value,
            child: ValueListenableBuilder(
              valueListenable: controller.isSearchWidgetVisible,
              builder: (context, value, child) {
                return SearchWidget(
                  key: UniqueKey(),
                  searchOptions: [
                    DateRangeSearchOption(
                      displayText: 'Date',
                      propertyName: 'date',
                    ),
                    TypeaheadMultiSearchOption(
                      displayText: 'WO/SI Number',
                      propertyName: 'workOrderId',
                      datasource: controller.searchJobIds,
                      sourceCallback: controller.getWorkOrderIds,
                    ),
                    TypeaheadSearchOptionGeneric<Asset>(
                      displayText: 'Asset Code',
                      propertyName: 'assetName',
                      datasource: null,
                      sourceCallback: controller.getAssetsByName,
                      labelBuilder: (e) => e.name == null
                          ? e.assetCode
                          : '${e.assetCode} - ${e.name}',
                      widgetBuilder: (e) => ListTile(
                        title: Text(e.assetCode),
                        subtitle: Text(e.name ?? ''),
                      ),
                    ),
                  ],
                  initialState: controller.searchState,
                  onStateChanged: (searchState) async {
                    controller.searchStateChanged(searchState);
                    await controller.loadJobs();
                  },
                );
              },
            ),
          );
        },
      );

  Widget _addJobList(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        showjobsJobs(context, controller.filteredJobs),
        if (controller.isNextPageLoading) showSpinner(),
      ],
    );
  }

  Widget showjobsJobs(
    BuildContext context,
    List<DiagnosticJobForm>? jobs,
  ) {
    return ResponsiveGridRow(
      children: jobs!
          .map(
            (job) => ResponsiveGridCol(
              xl: 4,
              md: 6,
              child: jobCell(
                context: context,
                job: job,
              ),
            ),
          )
          .toList(),
    );
  }

  Future<void> onRefresh() async {
    await controller.loadJobs();
  }

  List<SlidableAction> getSlidableActionsForJob({
    required DiagnosticJobForm job,
    required BuildContext context,
  }) {
    final slidableActions = List<SlidableAction>.empty(growable: true);
    slidableActions.add(
      SlidableAction(
        backgroundColor: EmrColours.secondaryLightBlue,
        borderRadius: BorderRadius.circular(5),
        foregroundColor: FormAppColors.error,
        icon: Icons.remove_red_eye_rounded,
        label: 'View Template',
        onPressed: (BuildContext newContext) async {
          try {
            if (controller.isLoadingPreview) return;
            if (job.template!.templateId == null ||
                job.template!.templateId!.isEmpty) {
              return;
            }

            controller.isLoadingPreview = true;
            await controller
                .getFormsTemplateJson(job.template!.templateId!)
                .then((templateJson) async {
              if (templateJson != null || templateJson!.isNotEmpty) {
                controller.isLoadingPreview = false;
                if (context.mounted) {
                  await context.pushNamed(
                    FormsRoutingName.previewTemplate,
                    extra: templateJson,
                    queryParams: {
                      'isDigitalSignatureRequiredForJob': 'true',
                      'isDigitalSignatureRequiredForTemplate': 'true',
                    },
                  );
                }
              }
            });
          } catch (e) {
            ///
          }
        },
      ),
    );
    slidableActions.add(
      SlidableAction(
        backgroundColor: EmrColours.secondaryLightBlue,
        borderRadius: BorderRadius.circular(5),
        foregroundColor: FormAppColors.error,
        icon: Icons.note_alt_outlined,
        label: 'Audit History',
        onPressed: (BuildContext newContext) async {
          try {
            //get audit
            await context.pushNamed(
              FormsRoutingName.audit,
              queryParams: {
                'instanceId': job.id,
                'workOrderId': job.workOrderId,
              },
            );
          } catch (e) {
            ///
          }
        },
      ),
    );

    return slidableActions;
  }

  Widget jobCell({
    required DiagnosticJobForm job,
    required BuildContext context,
  }) {
    var mediaCount = job.capturedMediaCount ?? 0;
    if (job.scheduledItemStatus != 'InProgress' &&
        (job.isDigitalSignatureRequired ?? false)) {
      mediaCount = mediaCount - 1;
    }
    final slidableActions = getSlidableActionsForJob(
      job: job,
      context: context,
    );
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
        onTap: () {
          if (controller.canTakeActionOnJob(job: job)) {
            controller.selectJob(job);
          }
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
                      if (controller.canTakeActionOnJob(job: job)) ...[
                        Checkbox(
                          value: controller.canTakeActionOnJob(job: job) &&
                              controller.selectedItems.contains(job),
                          onChanged: (value) =>
                              controller.canTakeActionOnJob(job: job)
                                  ? controller.selectionChanged(
                                      isChecked: value,
                                      job: job,
                                    )
                                  : null,
                        ),
                      ],
                      const Spacer(),
                      if (mediaCount > 0)
                        Stack(
                          children: [
                            Tooltip(
                              message: 'Show Attached Media',
                              child: IconButton(
                                icon: const Icon(Icons.camera_alt_outlined),
                                onPressed: () => context.pushNamed(
                                  FormsRoutingName.mediaItems,
                                  params: {
                                    'workRequestId': job.workOrderId!,
                                    'cmpCode': job.companyCode!,
                                  },
                                ),
                              ),
                            ),
                            Align(
                              child: Container(
                                width: 50 * .4,
                                height: 50 * .4,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(132, 188, 1, 1),
                                ),
                                child: Center(
                                  child: Text(
                                    '$mediaCount',
                                    style: const TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      if (controller.canreProcess(job: job)) ...[
                        Tooltip(
                          message: 'Re-Process',
                          child: IconButton(
                            onPressed: () async {
                              await showMessageDialog(
                                context: context,
                                messageType: MessageType.success,
                                message: controller.successMessage,
                              ).then(
                                (value) =>
                                    controller.reProcess(job.workOrderId),
                              );
                            },
                            icon: const Icon(Icons.post_add),
                          ),
                        ),
                      ],
                      const SizedBox(
                        width: 5,
                      ),
                      if (controller.canupdateD365(job: job)) ...[
                        Tooltip(
                          message: 'Update D365',
                          child: IconButton(
                            onPressed: () async {
                              await showMessageDialog(
                                context: context,
                                messageType: MessageType.success,
                                message: controller.successMessage,
                              ).then(
                                (value) =>
                                    controller.updateD365(job.workOrderId),
                              );
                            },
                            icon: const Icon(Icons.upload),
                          ),
                        ),
                      ],
                      const SizedBox(
                        width: 5,
                      ),
                      Tooltip(
                        message: 'Preview',
                        child: IconButton(
                          onPressed: () => (job.status != 'noInstance')
                              ? _onPreviewPressed(context, job, true)
                              : null,
                          icon: const Icon(Icons.remove_red_eye),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Tooltip(
                        message: 'PDF',
                        child: IconButton(
                          onPressed: () => (job.status != 'noInstance')
                              ? _onPdfPressed(context, job)
                              : null,
                          icon: const Icon(Icons.picture_as_pdf),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        job.workOrderDescription ?? '',
                        style: FormAppTextStyles.listviewTitleTextColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '${job.workOrderId} (${job.yardCode} / ${job.depotNo})',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('${context.l10n.asset} : ${job.assetCode ?? '--'}'),
                    ],
                  ),
                  Row(
                    children: [
                      Text(_getFormDueDate(context, job.startedDate)),
                      Text(_getFormSubmittedDate(context, job.submittedDate)),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Status Info',
                        style: FormAppTextStyles.titleTextColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'InForm (ScheduledItem): ',
                      ),
                      Text(
                        job.scheduledItemStatus ?? '',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: _getStatusColor(job.scheduledItemStatus),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'D365 (FormInstance): ',
                      ),
                      Text(
                        job.status ?? '',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: _getStatusColor(job.status),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
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

  String _getFormSubmittedDate(
    BuildContext context,
    DateTime? formCompletionDueDate,
  ) {
    if (formCompletionDueDate == null) {
      return '';
    }

    final activeLocale = Localizations.localeOf(context);
    final formattedDate = DateFormat.yMd(activeLocale.toString())
        .format(formCompletionDueDate.toLocal());

    return ' | ${context.l10n.submittedDateText}$formattedDate';
  }

  Color _getStatusColor(String? status) {
    switch (status) {
      case 'InProgress':
      case 'ReadyToSubmit':
        return FormAppColors.information;
      case 'Submitted':
      case 'Complete':
        return FormAppColors.success;
      case 'Cancelled':
      case 'SubmitFailed':
        return FormAppColors.error;
      default:
        return FormAppColors.success;
    }
  }

  Widget getActionsForDiagnostic(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              if (controller.selectedGroup != DiagnsoticActionType.All &&
                  controller.selectedGroup != DiagnsoticActionType.Completed &&
                  controller.selectedGroup != DiagnsoticActionType.Failed &&
                  controller.selectedGroup !=
                      DiagnsoticActionType.Cancelled) ...[
                Checkbox(
                  value: controller.selectedItems.isNotEmpty &&
                      controller.selectedItems.length ==
                          controller.filteredJobs.length,
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
              ],
              if (controller.selectedGroup == DiagnsoticActionType.InProgress)
                ElevatedButton(
                  onPressed: () async {
                    await showMessageDialog(
                      context: context,
                      messageType: MessageType.success,
                      message: controller.successMessage,
                    ).then((value) => controller.reProcess(''));
                  },
                  child: const Text('Re-Process'),
                ),
              const SizedBox(
                width: 5,
              ),
              if (controller.selectedGroup == DiagnsoticActionType.Queued)
                ElevatedButton(
                  onPressed: () async {
                    await showMessageDialog(
                      context: context,
                      messageType: MessageType.success,
                      message: controller.successMessage,
                    ).then((value) => controller.updateD365(''));
                  },
                  child: const Text('Update D365'),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _getTerritoryCode(BuildContext context) async {
    final userRepo =
        Provider.of<IUserPreferencesRepository>(context, listen: false);
    final territory = await userRepo.getTerritory();
    setState(() => territoryCode = territory);
  }

  Future<void> _onPdfPressed(
    BuildContext context,
    FormInstance instance,
  ) async {
    await context.pushNamed(
      FormsRoutingName.completedJobsPdf,
      params: {
        'workOrderId': instance.workOrderId!,
        'companyCode': instance.companyCode!,
      },
    ).then((value) async {});
  }

  Future<void> _onPreviewPressed(
    BuildContext context,
    FormInstance instance,
    bool isPreview,
  ) async {
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
      },
    ).then((value) async {});
  }

  Widget _addGroupChoiceChips() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Wrap(
          spacing: 5,
          children: ConstantLists.DiagnsoticActions.map(
            (e) => ChoiceChip(
              labelPadding: EdgeInsets.zero,
              label: Text(
                '$e (${_getCount(e)})',
                style:
                    const TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
              ),
              selected: controller.selectedGroup == e,
              onSelected: (value) {
                controller.setSelectedGroup(e);
              },
              selectedColor: FormAppColors.success,
            ),
          ).toList(),
        ),
      ),
    );
  }

  String _getCount(String group) {
    switch (group) {
      case DiagnsoticActionType.All:
        return controller.jobs!.length.toString();
      case DiagnsoticActionType.Failed:
        return controller.jobs!
            .where(
              (element) => controller.isFailed(job: element),
            )
            .length
            .toString();
      case DiagnsoticActionType.Cancelled:
        return controller.jobs!
            .where(
              (element) => controller.isCancelled(job: element),
            )
            .length
            .toString();
      case DiagnsoticActionType.Queued:
        return controller.jobs!
            .where(
              (element) => controller.canupdateD365(job: element),
            )
            .length
            .toString();
      case DiagnsoticActionType.InProgress:
        return controller.jobs!
            .where(
              (element) => controller.canreProcess(job: element),
            )
            .length
            .toString();
      case DiagnsoticActionType.Completed:
        return controller.jobs!
            .where(
              (element) =>
                  !controller.canupdateD365(job: element) &&
                  !controller.canreProcess(job: element) &&
                  !controller.isFailed(job: element),
            )
            .length
            .toString();
    }
    return '0';
  }

  List<DiagnosticJobForm> _filterByGroup(List<DiagnosticJobForm> filteredJobs) {
    var masterList = filteredJobs.toList();

    switch (controller.selectedGroup) {
      case DiagnsoticActionType.Completed:
        masterList = masterList
            .where(
              (element) =>
                  !controller.canupdateD365(job: element) &&
                  !controller.canreProcess(job: element) &&
                  !controller.isFailed(job: element),
            )
            .toList();
      case DiagnsoticActionType.InProgress:
        masterList = masterList
            .where(
              (element) => controller.canreProcess(job: element),
            )
            .toList();
      case DiagnsoticActionType.Queued:
        masterList = masterList
            .where((element) => controller.canupdateD365(job: element))
            .toList();
      case DiagnsoticActionType.Failed:
        masterList = masterList
            .where((element) => controller.isFailed(job: element))
            .toList();
      case DiagnsoticActionType.Cancelled:
        masterList = masterList
            .where((element) => controller.isCancelled(job: element))
            .toList();
    }
    if (controller.filterText != null) {
      masterList = masterList
          .where(
            (element) =>
                element.workOrderDescription == controller.filterText ||
                element.workOrderId == controller.filterText ||
                element.yardCode == controller.filterText ||
                element.depotNo == controller.filterText ||
                element.scheduledItemStatus == controller.filterText,
          )
          .toList();
    }
    if (controller.filterChips.isNotEmpty) {
      masterList = masterList
          .where(
            (element) =>
                controller.filterChips.contains(element.yardCode ?? '') ||
                controller.filterChips.contains(element.depotNo ?? ''),
          )
          .toList();
    }
    return _sortJobs(masterList);
  }

  List<DiagnosticJobForm> _sortJobs(
    List<DiagnosticJobForm> jobs,
  ) {
    switch (controller.sortBy.fieldName) {
      case 'Title':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          jobs.sort(
            (x, y) =>
                x.workOrderDescription!.compareTo(y.workOrderDescription!),
          );
        } else {
          jobs.sort(
            (y, x) =>
                x.workOrderDescription!.compareTo(y.workOrderDescription!),
          );
        }
      case 'Due Date':
        if (controller.sortBy.sortDirection == SortDirection.ascending) {
          jobs.sort((x, y) => x.startedDate!.compareTo(y.startedDate!));
        } else {
          jobs.sort((y, x) => x.startedDate!.compareTo(y.startedDate!));
        }
    }
    return jobs;
  }
}
