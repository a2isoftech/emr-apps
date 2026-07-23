import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/create_template/model/create_form_list.dart';
import 'package:emr_one_inform/models/sort_by.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/form_lists/form_list_controller.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:emr_one_inform/widgets/inform_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

abstract class FormListCommon extends BasePage<FormListController> {
  FormListCommon({super.key});

  final formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();

  bool isWeb();
  void onSearch() => controller.toggleSearchWindow();
  void onFilter() => controller.toggleFilterWindow();

  @override
  String getTitle(BuildContext context) {
    return '${context.l10n.lists} (${yard.yardCode})';
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

  @override
  void initState(BuildContext context) => controller.getLists();

  @override
  Widget widgetBuilder(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: Column(
        children: [
          if (controller.isSearchVisible) ...[
            InformSearchWidget(
              key: UniqueKey(),
              searchOptions: [
                DateRangeSearchOption(
                  displayText: 'Date',
                  propertyName: 'date',
                ),
                TypeaheadSearchOption(
                  displayText: 'List Name',
                  propertyName: 'listName',
                  datasource: null,
                  sourceCallback: controller.getListNames,
                ),
                TypeaheadSearchOption(
                  displayText: 'Created By',
                  propertyName: 'createdBy',
                  datasource: null,
                  sourceCallback: controller.getUsers,
                ),
              ],
              initialState: controller.searchState,
              onStateChanged: (searchState) async {
                controller.searchStateChanged(searchState);
                await controller.getLists();
              },
            ),
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
                    _typeAheadFilter(context),
                    const SizedBox(height: 5),
                    // _addFilterChips(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
          ],
          if (controller.isLoading || controller.isBusy) ...[
            _showSpinner(),
          ] else if (controller.lists.isEmpty) ...[
            Center(child: showNoData(context.l10n.noListsFound)),
          ] else ...[
            _addLists(controller.filteredLists),
          ],
        ],
      ),
    );
  }

  Widget _addSortByOptions(BuildContext context) {
    return Row(
      children: [
        Text(context.l10n.sortBy),
        const SizedBox(width: 20),
        _addSortByDropDownWidget(),
      ],
    );
  }

  Widget _addSortByDropDownWidget() {
    final sortFields = ['List Name', 'Created By', 'Created Date'];
    final dropDownMenuItems = <DropdownMenuItem<SortBy>>[];

    for (final sortField in sortFields) {
      dropDownMenuItems.add(
        DropdownMenuItem(
          value: SortBy(
            fieldName: sortField,
            sortDirection: controller.sortBy.sortDirection,
          ),
          child: Row(children: [Text(sortField)]),
        ),
      );
    }
    return DropdownButton(
      icon: (controller.sortBy.sortDirection == SortDirection.ascending)
          ? const Icon(Icons.arrow_upward_rounded)
          : const Icon(Icons.arrow_downward_rounded),
      items: dropDownMenuItems.toList(),
      value: controller.sortBy,
      onChanged: (onChanged) => controller.setSortBy(onChanged!),
    );
  }

  Widget _typeAheadFilter(BuildContext context) {
    return Wrap(
      runSpacing: 5,
      children: [
        TypeAheadFormField<String>(
          suggestionsCallback: (searchText) async {
            return (searchText.length > 2)
                ? getFilterSuggestions(searchText)
                : const Iterable<String>.empty();
          },
          itemBuilder: (context, String key) {
            return ListTile(title: Text(key));
          },
          onSuggestionSelected: (String suggestion) {
            _searchController.text = suggestion;
            controller.setFilterText(suggestion);
          },
          noItemsFoundBuilder: (context) => SizedBox(
            height: 50,
            child: typeAheadErrorMessageWidget(
              context.l10n.noRecordsMessage,
            ),
          ),
          textFieldConfiguration: TextFieldConfiguration(
            controller: _searchController,
            decoration: FormStyles.textFieldDecoration(context).copyWith(
              labelText: context.l10n.filters,
              hintText: context.l10n.search,
              suffixIcon: _searchController.text.isEmpty
                  ? null
                  : IconButton(
                      onPressed: () {
                        _searchController.clear();
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

  // ignore: unused_element
  Widget _addFilterChips() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ChoiceChip(
          label: const Text('D365', style: TextStyle(fontSize: 16)),
          labelPadding: EdgeInsets.zero,
          onSelected: (value) {
            setState(() {
              if (value) {
                controller.selectedFilterChip.add('D365');
              } else {
                controller.selectedFilterChip.remove('D365');
              }
              _searchController.text = '';
              controller.setFilterText(null);
            });
          },
          selected: controller.selectedFilterChip.contains('D365'),
          selectedColor: FormAppColors.success,
        ),
        const SizedBox(width: 20),
        ChoiceChip(
          label: const Text('Non D365', style: TextStyle(fontSize: 16)),
          labelPadding: EdgeInsets.zero,
          onSelected: (value) {
            setState(() {
              if (value) {
                controller.selectedFilterChip.add('Non-D365');
              } else {
                controller.selectedFilterChip.remove('Non-D365');
              }
              _searchController.text = '';
              controller.setFilterText(null);
            });
          },
          selected: controller.selectedFilterChip.contains('Non-D365'),
          selectedColor: FormAppColors.success,
        ),
      ],
    );
  }

  List<String> getFilterSuggestions(String key) {
    final listNames = controller.lists.map((e) => e.listName!).toList();
    final list = <String>{...listNames}.toList();
    return list
        .where((element) => element.toLowerCase().contains(key.toLowerCase()))
        .toList();
  }

  Widget _showSpinner() => Padding(
        padding: const EdgeInsets.all(10),
        child: Center(child: showSpinner()),
      );

  Widget _addLists(List<FormList> lists) {
    return Flexible(
      child: Material(
        elevation: 20,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.separated(
            itemBuilder: (context, index) {
              final list = lists[index];
              return _listCard(context, list);
            },
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemCount: lists.length,
          ),
        ),
      ),
    );
  }

  Widget _listCard(
    BuildContext context,
    FormList list,
  ) {
    final activeLocale = Localizations.localeOf(context);
    final createdDate =
        DateFormat.yMd(activeLocale.toString()).format(list.createdDate!);
    final modifiedDate = list.modifiedDate != null
        ? DateFormat.yMd(activeLocale.toString()).format(list.modifiedDate!)
        : '--';
    return Card(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('List Name : ${list.listName}'),
                      Text('List Values : ${list.listValues}'),
                      Text('Created By : ${list.createdBy}'),
                      Text('Created Date : $createdDate'),
                      Text(
                        list.modifiedBy != null
                            ? 'Modified By : ${list.modifiedBy}'
                            : 'Modified By : --',
                      ),
                      Text('Modified Date : $modifiedDate'),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: IconButton(
                    icon: const Icon(Icons.edit_outlined),
                    onPressed: () async {
                      await context.pushNamed(
                        FormsRoutingName.addList,
                        queryParams: {
                          'listId': list.id.toString(),
                        },
                      );
                      await controller.getLists();
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: IconButton(
                    icon: const Icon(Icons.delete_forever_sharp),
                    onPressed: () async {
                      await showConfirmationDialog(
                        context: context,
                        message: context.l10n.confirmDeleteList,
                      ).then((confirmed) async {
                        if (confirmed ?? false) {
                          await controller.deleteList(list: list);
                          await controller.getLists();
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> onRefresh() async => controller.getLists();
}
