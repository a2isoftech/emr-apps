import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/models/category.dart';
import 'package:emr_one_inform/models/sort_by.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/client/client_controller.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:emr_one_inform/widgets/inform_search_widget.dart';
import 'package:flutter/material.dart';

abstract class ClientCommon extends BasePage<ClientController> {
  ClientCommon({
    super.key,
  });

  final formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();

  bool isWeb();
  void onSearch() => controller.toggleSearchWindow();
  void onFilter() => controller.toggleFilterWindow();

  @override
  String getTitle(BuildContext context) {
    return '${context.l10n.clients} (${yard.yardCode})';
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
  void initState(BuildContext context) => controller.getClients();

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
                TypeaheadSearchOption(
                  displayText: 'Client Name',
                  propertyName: 'clientName',
                  datasource: null,
                  sourceCallback: controller.getClientNames,
                ),
                DropdownSearchOption(
                  displayText: 'Is Editable',
                  propertyName: 'isEditable',
                  datasource: ['Yes', 'No'],
                ),
                if (InformJobs.preference?.isD365Enabled ?? false)
                  DropdownSearchOption(
                    displayText: 'Is D365',
                    propertyName: 'isD365',
                    datasource: ['Yes', 'No'],
                  ),
                DropdownSearchOption(
                  displayText: 'Can Schedule',
                  propertyName: 'canSchedule',
                  datasource: ['Yes', 'No'],
                ),
              ],
              initialState: controller.searchState,
              onStateChanged: (searchState) async {
                controller.searchStateChanged(searchState);
                await controller.getClients();
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
                    _addFilterChips(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
          ],
          if (controller.isLoading || controller.isBusy) ...[
            _showSpinner(),
          ] else if (controller.clients.isEmpty) ...[
            Center(child: showNoData('No categories found!')),
          ] else ...[
            _addClients(controller.filteredClients),
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
    final sortFields = ['Name', 'D365', 'Non D365', 'Deleted'];
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

  Widget _addFilterChips() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (InformJobs.preference?.isD365Enabled ?? false) ...[
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
          const SizedBox(width: 20),
        ],
        ChoiceChip(
          label: const Text('Deleted', style: TextStyle(fontSize: 16)),
          labelPadding: EdgeInsets.zero,
          onSelected: (value) {
            setState(() {
              if (value) {
                controller.selectedFilterChip.add('Deleted');
              } else {
                controller.selectedFilterChip.remove('Deleted');
              }
              _searchController.text = '';
              controller.setFilterText(null);
            });
          },
          selected: controller.selectedFilterChip.contains('Deleted'),
          selectedColor: FormAppColors.success,
        ),
      ],
    );
  }

  List<String> getFilterSuggestions(String key) {
    final titles = controller.clients.map((e) => e.title!).toList();
    final list = <String>{...titles}.toList();
    return list
        .where((element) => element.toLowerCase().contains(key.toLowerCase()))
        .toList();
  }

  Widget _showSpinner() => Padding(
        padding: const EdgeInsets.all(10),
        child: Center(child: showSpinner()),
      );

  Widget _addClients(List<Category> clients) {
    return Flexible(
      child: Material(
        elevation: 20,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.separated(
            itemBuilder: (context, index) {
              final client = clients[index];
              return _clientCard(context, client);
            },
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemCount: clients.length,
          ),
        ),
      ),
    );
  }

  Widget _clientCard(
    BuildContext context,
    Category client,
  ) {
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
                      Text('Name : ${client.title}'),
                      if (InformJobs.preference?.isD365Enabled ?? false)
                        Text(
                          client.isD365 != null && client.isD365!
                              ? 'Is D365 : Yes'
                              : 'Is D365 : No',
                        ),
                      Text(
                        client.isEditable != null && client.isEditable!
                            ? 'Is Editable : Yes'
                            : 'Is Editable : No',
                      ),
                      Text(
                        client.isActive != null && client.isActive!
                            ? 'Is Deleted : No'
                            : 'Is Deleted : Yes',
                        style: TextStyle(
                          fontWeight:
                              client.isActive != null && client.isActive!
                                  ? FontWeight.normal
                                  : FontWeight.bold,
                        ),
                      ),
                      Text(
                        client.canSchedule != null && client.canSchedule!
                            ? 'Can Schedule : Yes'
                            : 'Can Schedule : No',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: IconButton(
                    icon: const Icon(Icons.edit_outlined),
                    onPressed: () async {
                      await context.pushNamed(
                        FormsRoutingName.addClient,
                        queryParams: {
                          'clientId': client.id.toString(),
                        },
                      );
                      await controller.getClients();
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: IconButton(
                    icon: Icon(
                      Icons.delete_forever_sharp,
                      color: (client.isActive != null && client.isActive!)
                          ? FormAppColors.black
                          : FormAppColors.error,
                    ),
                    onPressed: (client.isActive != null && client.isActive!)
                        ? () async {
                            await showConfirmationDialog(
                              context: context,
                              message: context.l10n.confirmDeleteClient,
                            ).then((confirmed) async {
                              if (confirmed ?? false) {
                                await controller.deleteClient(client: client);
                                await controller.getClients();
                              }
                            });
                          }
                        : null,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> onRefresh() async => controller.getClients();
}
