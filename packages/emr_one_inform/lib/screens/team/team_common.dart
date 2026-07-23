import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/models/sort_by.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/screens/team/team_controller.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:emr_one_inform/widgets/inform_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

abstract class TeamCommon extends BasePage<TeamController> {
  TeamCommon({super.key});

  final formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();

  bool isWeb();
  void onSearch() => controller.toggleSearchWindow();
  void onFilter() => controller.toggleFilterWindow();

  @override
  String getTitle(BuildContext context) {
    return '${context.l10n.teams} (${yard.yardCode})';
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
  void initState(BuildContext context) => controller.getTeams();

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
                  displayText: 'Team Name',
                  propertyName: 'teamName',
                  datasource: null,
                  sourceCallback: controller.getTeamNames,
                ),
                TypeaheadSearchOption(
                  displayText: 'Created By',
                  propertyName: 'createdBy',
                  datasource: null,
                  sourceCallback: controller.getUsers,
                ),
                TypeaheadSearchOption(
                  displayText: 'Team Member',
                  propertyName: 'teamMember',
                  datasource: null,
                  sourceCallback: controller.getUsers,
                ),
              ],
              initialState: controller.searchState,
              onStateChanged: (searchState) async {
                controller.searchStateChanged(searchState);
                await controller.getTeams();
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
          ] else if (controller.teams.isEmpty) ...[
            Center(child: showNoData(context.l10n.noTeamsFound)),
          ] else ...[
            _addTeams(controller.filteredTeams),
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
    final sortFields = ['Team Name', 'Created By', 'Created Date', 'Deleted'];
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
        ChoiceChip(
          label: const Text('Active', style: TextStyle(fontSize: 16)),
          labelPadding: EdgeInsets.zero,
          onSelected: (value) {
            setState(() {
              if (value) {
                controller.selectedFilterChip.add('Active');
              } else {
                controller.selectedFilterChip.remove('Active');
              }
              _searchController.text = '';
              controller.setFilterText(null);
            });
          },
          selected: controller.selectedFilterChip.contains('Active'),
          selectedColor: FormAppColors.success,
        ),
        const SizedBox(width: 20),
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
    final teamNames = controller.teams.map((e) => e.name!).toList();
    final list = <String>{...teamNames}.toList();
    return list
        .where((element) => element.toLowerCase().contains(key.toLowerCase()))
        .toList();
  }

  Widget _showSpinner() => Padding(
        padding: const EdgeInsets.all(10),
        child: Center(child: showSpinner()),
      );

  Widget _addTeams(List<Team> teams) {
    return Flexible(
      child: Material(
        elevation: 20,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.separated(
            itemBuilder: (context, index) {
              final team = teams[index];
              return _teamCard(context, team);
            },
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemCount: teams.length,
          ),
        ),
      ),
    );
  }

  Widget _teamCard(
    BuildContext context,
    Team team,
  ) {
    final activeLocale = Localizations.localeOf(context);
    final createdDate =
        DateFormat.yMd(activeLocale.toString()).format(team.createdOn!);
    final modifiedDate = team.modifiedOn != null
        ? DateFormat.yMd(activeLocale.toString()).format(team.modifiedOn!)
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
                      Text('Team Name : ${team.name}'),
                      Row(
                        children: [
                          Text(
                            'Team Members : '
                            '''
${team.teamMembers!.map((e) => e.userName).take(2).join(', ')}'''
                            '''
${team.teamMembers!.map((e) => e.userName).length > 2 ? ' ...' : ''}''',
                          ),
                          Tooltip(
                            message: team.teamMembers!
                                .map((e) => e.userName)
                                .join(', '),
                            child: Icon(
                              Icons.info,
                              size: 18,
                              color: FormAppColors.information,
                            ),
                          ),
                        ],
                      ),
                      Text('Created By : ${team.createdBy}'),
                      Text('Created Date : $createdDate'),
                      Text(
                        team.modifiedBy != null
                            ? 'Modified By : ${team.modifiedBy}'
                            : 'Modified By : --',
                      ),
                      Text('Modified Date : $modifiedDate'),
                      Text(
                        team.isActive != null && team.isActive!
                            ? 'Is Deleted : No'
                            : 'Is Deleted : Yes',
                        style: TextStyle(
                          fontWeight: team.isActive != null && team.isActive!
                              ? FontWeight.normal
                              : FontWeight.bold,
                        ),
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
                        FormsRoutingName.addTeam,
                        queryParams: {
                          'teamId': team.uuid,
                        },
                      );
                      await controller.getTeams();
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: IconButton(
                    icon: Icon(
                      Icons.delete_forever_sharp,
                      color: (team.isActive != null && team.isActive!)
                          ? FormAppColors.black
                          : FormAppColors.error,
                    ),
                    onPressed: (team.isActive != null && team.isActive!)
                        ? () async {
                            await showConfirmationDialog(
                              context: context,
                              message: context.l10n.confirmDeleteTeam,
                            ).then((confirmed) async {
                              if (confirmed ?? false) {
                                await controller.deleteTeam(team: team);
                                await controller.getTeams();
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

  Future<void> onRefresh() async => controller.getTeams();
}
