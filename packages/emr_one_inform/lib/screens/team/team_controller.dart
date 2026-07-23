import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/screens/team/add_team/add_team_model.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/services/interfaces/icommon_service.dart';
import 'package:emr_one_inform/services/team_service.dart';

class TeamController extends BaseController {
  TeamController({
    required this.teamService,
    required this.commonService,
  });

  final TeamService teamService;
  final ICommonService commonService;

  bool isBusy = false;
  bool isLoading = false;
  bool _isSearchVisible = false;
  bool _isFilterVisible = false;
  bool get isSearchVisible => _isSearchVisible;
  bool get isFilterVisible => _isFilterVisible;
  List<Team> teams = List.empty(growable: true);
  List<Team> filteredTeams = List.empty(growable: true);
  SortBy _sortBy = const SortBy(
    fieldName: 'Team Name',
    sortDirection: SortDirection.ascending,
  );
  SortBy get sortBy => _sortBy;
  String? _filterText;
  String? get filterText => _filterText;
  String _selectedFilterByOption = '';
  String get selectedFilterByOption => _selectedFilterByOption;
  final List<String> _filterChips = List.empty(growable: true);
  List<String> get filterChips => _filterChips;
  String _selectedList = '';
  String get selectedList => _selectedList;
  List<String> selectedFilterChip = List.empty(growable: true);
  KeyValuePair<String, dynamic> _searchState = KeyValuePair(
    key: 'date',
    value: SelectedDates.dateRange(
      dateRange: DateUtility.getWeekDateRange(DateTime.now().dateOnly),
    ),
  );

  KeyValuePair<String, dynamic> get searchState => _searchState;

  void searchStateChanged(KeyValuePair<String, dynamic> searchState) {
    _searchState = searchState;
    notifyListeners();
  }

  Future<void> getTeams({
    DateTime? startDate,
    DateTime? endDate,
    String? teamName,
  }) async {
    isBusy = true;
    notifyListeners();

    DateTime? startDate;
    DateTime? endDate;

    if (searchState.key == 'date') {
      final dateRange =
          DateUtility.getSelectedDateRange(searchState.value as SelectedDates);
      startDate = dateRange.start.toUtc();
      endDate = dateRange.end.toUtc();
    }

    teams = await teamService.getTeams(
      startDate: startDate,
      endDate: endDate,
      teamName:
          searchState.key == 'teamName' ? searchState.value as String? : null,
      createdBy:
          searchState.key == 'createdBy' ? searchState.value as String? : null,
      teamMember:
          searchState.key == 'teamMember' ? searchState.value as String? : null,
    );

    isBusy = false;
    reload();
  }

  void toggleSearchWindow() {
    _isFilterVisible = false;
    _isSearchVisible = !isSearchVisible;
    reload();
  }

  void toggleFilterWindow() {
    _isSearchVisible = false;
    _isFilterVisible = !isFilterVisible;
    reload();
  }

  @override
  void reload() {
    var listToFilterAndSort = teams;
    listToFilterAndSort = _applySorting(teams);
    if (filterText != null) {
      listToFilterAndSort = teams
          .where(
            (element) =>
                element.name!.toLowerCase().trim() ==
                filterText!.toLowerCase().trim(),
          )
          .toList();
    }
    if (selectedFilterChip.isNotEmpty) {
      if (selectedFilterChip.contains('Active') &&
          selectedFilterChip.contains('Deleted')) {
      } else if (selectedFilterChip.contains('Active')) {
        listToFilterAndSort =
            listToFilterAndSort.where((e) => e.isActive!).toList();
      } else if (selectedFilterChip.contains('Deleted')) {
        listToFilterAndSort =
            listToFilterAndSort.where((e) => e.isActive! != true).toList();
      }
    }

    filteredTeams = listToFilterAndSort;
    super.reload();
  }

  List<Team> _applySorting(List<Team> teams) {
    switch (sortBy.fieldName) {
      case 'Team Name':
        if (sortBy.sortDirection == SortDirection.ascending) {
          teams.sort(
            (x, y) => x.name!.compareTo(y.name!),
          );
        } else {
          teams.sort(
            (x, y) => y.name!.compareTo(x.name!),
          );
        }
      case 'Created By':
        if (sortBy.sortDirection == SortDirection.ascending) {
          teams.sort(
            (x, y) => x.createdBy!.compareTo(y.createdBy!),
          );
        } else {
          teams.sort(
            (x, y) => y.createdBy!.compareTo(x.createdBy!),
          );
        }
      case 'Created Date':
        if (sortBy.sortDirection == SortDirection.ascending) {
          teams.sort(
            (x, y) =>
                x.createdOn!.toString().compareTo(y.createdOn!.toString()),
          );
        } else {
          teams.sort(
            (x, y) =>
                y.createdOn!.toString().compareTo(x.createdOn!.toString()),
          );
        }
      case 'Deleted':
        if (sortBy.sortDirection == SortDirection.ascending) {
          teams.sort(
            (x, y) => x.isActive!.toString().compareTo(y.isActive!.toString()),
          );
        } else {
          teams.sort(
            (x, y) => y.isActive!.toString().compareTo(x.isActive!.toString()),
          );
        }
    }
    return teams;
  }

  Future<void> deleteTeam({
    required Team team,
  }) async {
    isBusy = true;
    notifyListeners();

    await teamService.deleteTeam(
      DeleteTeamRequest(
        uuid: team.uuid,
      ),
    );
    teams = await teamService.getTeams();

    isBusy = false;
    notifyListeners();
  }

  void setSortBy(SortBy sortBy) {
    if (sortBy.fieldName == _sortBy.fieldName) {
      if (sortBy.sortDirection == SortDirection.ascending) {
        _sortBy = SortBy(
          fieldName: sortBy.fieldName,
          sortDirection: SortDirection.descending,
        );
      } else {
        _sortBy = SortBy(
          fieldName: sortBy.fieldName,
          sortDirection: SortDirection.ascending,
        );
      }
    } else {
      _sortBy = sortBy;
    }
    reload();
  }

  void setFilterText(String? filter) {
    _filterText = filter;
    if (filter != null) {
      _filterChips.clear();
    }
    reload();
  }

  void setSelectedFilterByOption(String value) {
    _selectedFilterByOption = value;
    reload();
  }

  void setSelectedList(String selectedList) {
    _selectedList = selectedList;
    reload();
  }

  Future<List<String>> getUsers(String searchText) async {
    return commonService.getUsers(searchText);
  }

  Future<List<String>> getTeamNames(String searchText) async {
    if (searchText.length <= 2) return [];
    final teams = await teamService.getTeams(teamName: searchText);
    return teams.map((e) => e.name!).toList();
  }
}
