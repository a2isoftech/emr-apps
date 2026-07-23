import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/work_request.dart';
import 'package:emr_one_inform/models/work_request_query_filter.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/view_work_request/view_work_request_controller.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:emr_one_inform/widgets/inform_bottom_app_bar.dart';
import 'package:emr_one_inform/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

abstract class ViewWorkRequestCommon
    extends BasePage<ViewWorkRequestController> {
  ViewWorkRequestCommon({
    super.key,
    this.startDate,
    this.endDate,
    this.assetCode,
  });

  final DateTime? startDate;
  final DateTime? endDate;
  final String? assetCode;

  final _formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) =>
      '${context.l10n.workRequests} (${yard.yardCode})';

  @override
  void initState(BuildContext context) => controller.loadWorkRequests(
        assetCode: assetCode,
        startDate: startDate,
        endDate: endDate,
      );

  Future<void> onRefresh() async {
    _onFilterApplied(
      searchState: controller.searchState,
      hideSearchOptions: false,
    );
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              if (controller.isProcessing) ...[
                showSpinner(),
              ] else if (controller.isLoading) ...[
                showSpinner(),
              ] else ...[
                if (controller.isSearchVisible) ...[
                  SearchWidget(
                    context: context,
                    yardCode: yard.yardCode!,
                    filterForUser: false,
                    searchUser: false,
                    initialState: controller.searchState,
                    onFilterApplied: (searchState) {
                      controller.searchStateChanged(searchState);

                      _onFilterApplied(
                        searchState: searchState,
                        hideSearchOptions: false,
                      );
                    },
                  ),
                ],
                if (controller.isFilterVisible) ...[
                  Material(
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          _addSortByOptions(context),
                          _addTypeAheadSearchBox(context),
                          _addFilterChips(),
                        ],
                      ),
                    ),
                  ),
                ],
                if (controller.workRequests!.isEmpty)
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
                          // if (false) _selectableAndExportControls(context),
                          _addListView(),
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
    );
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
        icon: Icon(
          Icons.filter_list,
          color: FormAppColors.white,
        ),
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
  Widget getBottomBar(Yard yard) {
    return InformBottomAppBar(
      screenName: FormsRoutingName.viewWorkRequest,
      yard: yard,
    );
  }

  Widget _addListView() {
    var list = controller.workRequests!;

    if (controller.sortBy.fieldName == 'Work Request Id') {
      if (controller.sortBy.sortDirection == SortDirection.ascending) {
        list.sort(
          (x, y) => x.workRequestId.compareTo(y.workRequestId),
        );
      } else {
        list.sort(
          (x, y) => y.workRequestId.compareTo(x.workRequestId),
        );
      }
    }

    if (controller.sortBy.fieldName == 'Work Request State') {
      if (controller.sortBy.sortDirection == SortDirection.ascending) {
        list.sort((x, y) => x.requestState.compareTo(y.requestState));
      } else {
        list.sort((x, y) => y.requestState.compareTo(x.requestState));
      }
    }

    if (controller.sortBy.fieldName == 'Start Date') {
      if (controller.sortBy.sortDirection == SortDirection.ascending) {
        list.sort((x, y) => x.actualStartDate!.compareTo(y.actualStartDate!));
      } else {
        list.sort((x, y) => y.actualStartDate!.compareTo(x.actualStartDate!));
      }
    }

    if (controller.sortBy.fieldName == 'Service Level') {
      if (controller.sortBy.sortDirection == SortDirection.ascending) {
        list.sort((x, y) => x.serviceLevel.compareTo(y.serviceLevel));
      } else {
        list.sort((x, y) => y.serviceLevel.compareTo(x.serviceLevel));
      }
    }

    if (controller.searchPattern?.isNotEmpty ?? false) {
      list = list
          .where(
            (e) =>
                e.workRequestId == controller.searchPattern ||
                e.assetCode == controller.searchPattern,
          )
          .toList();
    }

    if (controller.selectedFilterChip.isNotEmpty) {
      list = list
          .where(
            (e) =>
                controller.selectedFilterChip.contains(e.requestState) ||
                controller.selectedFilterChip.contains(e.serviceLevel),
          )
          .toList();
    }

    return ListView.separated(
      itemCount: list.length,
      itemBuilder: (ctx, idx) {
        final job = list[idx];
        return _jobCellWorkRequests(
          ctx,
          job,
        );
      },
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (ctx, idx) => listViewDivider(),
      shrinkWrap: true,
    );
  }

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
      'Work Request Id',
      'Work Request State',
      'Start Date',
      'Service Level',
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

  Widget _jobCellWorkRequests(BuildContext context, WorkRequest workRequest) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 5),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (workRequest.requestState == 'Finished')
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.pushNamed(
                          FormsRoutingName.completedJobsPdf,
                          params: {
                            'workOrderId': workRequest.workRequestId,
                            'companyCode': workRequest.companyCode,
                          },
                        );
                      },
                      child: Text(context.l10n.view),
                    ),
                  ],
                ),
              _jobCellRowHeader(workRequest),
              _jobCellRowDetail(workRequest.assetCode, workRequest.requestType),
              _jobCellRowDetail(
                workRequest.workRequestId,
                workRequest.serviceLevel,
              ),
              _jobCellRowDetail(
                getFormDueDate(context, workRequest.actualStartDate),
                workRequest.requestState,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _jobCellRowHeader(WorkRequest workRequest) {
    return Wrap(
      children: [
        Text(
          workRequest.description ?? '',
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }

  Widget _jobCellRowDetail(
    String leftColumn,
    String rightColumn,
  ) {
    return Row(
      children: [
        Text(
          leftColumn,
        ),
        const Spacer(),
        Text(
          rightColumn,
        ),
      ],
    );
  }

  String getFormDueDate(BuildContext context, DateTime? dateToFormat) {
    if (dateToFormat == null) {
      return '';
    }
    final activeLocale = Localizations.localeOf(context);
    final formattedDate =
        DateFormat.yMd(activeLocale.toString()).format(dateToFormat.toLocal());
    return formattedDate;
  }

  Widget _addTypeAheadSearchBox(BuildContext context) {
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
        _searchController.text = suggestion;
        setState(() {
          controller.selectedFilterChip = [];
          controller.searchPattern = _searchController.text;
        });
      },
      noItemsFoundBuilder: (context) => SizedBox(
        height: 50,
        child: typeAheadErrorMessageWidget(context.l10n.noRecordsMessage),
      ),
      textFieldConfiguration: TextFieldConfiguration(
        controller: _searchController,
        decoration: FormStyles.textFieldDecoration(context).copyWith(
          labelText: context.l10n.searchJobsHintText,
          hintText: context.l10n.searchByWorkRequestHintText,
          suffixIcon: _searchController.text.isEmpty
              ? null
              : IconButton(
                  onPressed: () {
                    _searchController.clear();
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

  Widget _addFilterChips() {
    final choiceChips = <Widget>[];

    if (controller.workRequests?.isNotEmpty ?? false) {
      final chipsText = <String>[];

      switch (controller.selectedFilterByOption) {
        case 'Work Request State':
          chipsText.addAll(
            controller.workRequests!.map((e) => e.requestState).toList(),
          );
        case 'Service Level':
          chipsText.addAll(
            controller.workRequests!.map((e) => e.serviceLevel).toList(),
          );
        default:
          chipsText.addAll(
            controller.workRequests!.map((e) => e.requestState).toList(),
          );
      }

      choiceChips.addAll(
        chipsText
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
                    } else {
                      controller.selectedFilterChip.remove(e.key);
                    }
                    controller.searchPattern = '';
                    _searchController.text = '';
                  });
                },
              ),
            ),
      );
    }

    return Column(
      children: [
        if (controller.workRequests?.isNotEmpty ?? false)
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
                    value: 'Work Request State',
                    child: Text('Work Request State'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Service Level',
                    child: Text('Service Level'),
                  ),
                ],
              ),
            ],
          ),
        Wrap(spacing: 5, children: choiceChips),
      ],
    );
  }

  List<String> _getSuggestions(
    String searchText,
  ) {
    if (controller.workRequests?.isEmpty ?? true) return [];

    var suggestionsList = <String>[];
    suggestionsList.addAll(
      controller.workRequests?.map((e) => e.workRequestId).toList() ?? [],
    );
    suggestionsList.addAll(
      controller.workRequests?.map((e) => e.assetCode).toList() ?? [],
    );
    suggestionsList = suggestionsList.toSet().toList();
    return suggestionsList
        .where((e) => e.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
  }

  void _onFilterApplied({
    required SearchState searchState,
    required bool hideSearchOptions,
  }) {
    // final datePeriod = DateUtility.getSelectedDateRange(filter);
    // final searchStartDate = datePeriod.start.toUtc();
    // final searchEndDate = datePeriod.end.toUtc();

    DateTime? startDate;
    DateTime? endDate;

    if (searchState.selectedDate != null) {
      final dateRange =
          DateUtility.getSelectedDateRange(searchState.selectedDate!);
      startDate = dateRange.start.toUtc();
      endDate = dateRange.end.toUtc();
    }

    _searchController.text = '';

    controller.applyFilter(
      WorkRequestQueryFilter(
        yardCode: yard.yardCode,
        startDate: startDate,
        endDate: endDate,
        refreshFromD365: false,
        assetCode: searchState.assetCode,
        workRequestId: searchState.jobId,
      ),
    );
  }
}
