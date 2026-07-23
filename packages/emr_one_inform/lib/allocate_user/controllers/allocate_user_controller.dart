import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/allocate_user/controllers/interfaces/i_allocate_user_controller.dart';
import 'package:emr_one_inform/allocate_user/models/allocate_user_job.dart';
import 'package:emr_one_inform/allocate_user/services/interfaces/i_allocate_user_service.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/paginated_result.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/models/unallocate_user_team_from_job.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/services/interfaces/icommon_service.dart';
import 'package:emr_one_inform/services/interfaces/ilanding_page_service.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AllocateUserController extends IAllocateUserController {
  AllocateUserController({
    required this.service,
    required this.userPreferencesRepository,
    required this.landingPageService,
    required this.commonService,
  });

  final ICommonService commonService;
  final IAllocateUserService service;
  final IUserPreferencesRepository userPreferencesRepository;
  final ILandingPageService landingPageService;

  User? _selectedUser;
  Team? _selectedTeam;
  String _selectedGroup = AllocateUserScreenGroupItem.All;
  bool _isLoading = true;
  bool _isBusy = false;
  String? nextPageToken;
  final _debounceLoad = Debounceable<PaginatedResult<List<AllocateUserJob>>?>();

  @override
  bool hasNextPage = false;

  @override
  bool isCollapsed = true;
  Map<String, dynamic> _searchState = {
    'date': SelectedDates.dateRange(
      dateRange: DateUtility.getWeekDateRange(DateTime.now().dateOnly),
    ),
  };

  final List<String> _filterChips = List.empty(growable: true);
  List<AllocateUserJob> _jobs = List.empty(growable: true);
  List<AllocateUserJob> _filteredJobs = List.empty(growable: true);
  List<AllocateUserJob> _inProgressJobs = List.empty(growable: true);
  List<AllocateUserJob> _scheduledJobs = List.empty(growable: true);

  final List<AllocateUserJob> _selectedItems = List.empty(growable: true);
  String? _filterText;
  SortBy _sortBy =
      const SortBy(fieldName: 'Title', sortDirection: SortDirection.ascending);
  String _selectedFilterByOption = 'Job Trade';
  int _userCount = -1;
  int _teamCount = -1;
  List<User>? _usersInTeam;

  String? _filterScheduledItemTypeText;
  final List<String> _filterScheduledItemTypeChips = List.empty(growable: true);
  final List<String> _selectedScheduledItemType = List.empty(growable: true);
  final List<String> _filterDepotChips = List.empty(growable: true);

  @override
  List<String> get filterScheduledItemTypeChips =>
      _filterScheduledItemTypeChips;

  @override
  String? get filterScheduledItemTypeText => _filterScheduledItemTypeText;

  @override
  void setFilterScheduledItemTypeText(String? filter) {
    _filterScheduledItemTypeText = filter;
    if (filter != null) {
      _filterScheduledItemTypeChips.clear();
    }

    reload();
  }

  @override
  List<String> get selectedScheduledItemType => _selectedScheduledItemType;

  @override
  int get userCount => _userCount;

  @override
  int get teamCount => _teamCount;

  @override
  SortBy get sortBy => _sortBy;

  @override
  String get selectedFilterByOption => _selectedFilterByOption;

  @override
  bool get isBusy => _isBusy;

  @override
  bool get isLoading => _isLoading;

  @override
  User? get selectedUser => _selectedUser;

  @override
  Team? get selectedTeam => _selectedTeam;

  @override
  String get selectedGroup => _selectedGroup;

  @override
  Map<String, dynamic> get searchState => _searchState;

  @override
  List<String> get filterChips => _filterChips;

  @override
  List<String> get filterDepotChips => _filterDepotChips;

  @override
  String? get filterText => _filterText;

  @override
  List<AllocateUserJob> get jobs => _jobs;

  @override
  List<AllocateUserJob> get filteredJobs => _filteredJobs;
  @override
  List<AllocateUserJob> get inProgressJobs => _inProgressJobs;
  @override
  List<AllocateUserJob> get scheduledJobs => _scheduledJobs;

  @override
  List<AllocateUserJob> get selectedItems => _selectedItems;

  @override
  void searchStateChanged(Map<String, dynamic> searchState) {
    _searchState = searchState;
  }

  @override
  void toggleSearchWindow() {
    isFilterValuesReady.value = false;
    isSearchWidgetVisible.value = !isSearchWidgetVisible.value;
    reload();
  }

  @override
  void toggleFilterWindow() {
    isSearchWidgetVisible.value = false;
    isFilterValuesReady.value = !isFilterValuesReady.value;
    reload();
  }

  @override
  void applyFilter({
    bool isRefresh = true,
  }) {
    _debounceLoad.call(
      () async {
        _isLoading = isRefresh;
        isNextpageLoading = !isRefresh;
        notifyListeners();

        nextPageToken = isRefresh ? null : nextPageToken;
        if (!hasNextPage && !isRefresh) {
          _isLoading = false;
          return Future.value(
            PaginatedResult(
              hasNextPage: false,
              items: <AllocateUserJob>[],
            ),
          );
        }

        final yard = await userPreferencesRepository.getYard();
        DateTime? startDate;
        DateTime? endDate;

        if (searchState.keys.contains('date')) {
          if (searchState.keys.length == 1 && searchState['date'] == null) {
            searchState['date'] = SelectedDates.date(
              date: DateTime.now().dateOnly,
            );
          }
          if (searchState['date'] != null) {
            final dateRange = DateUtility.getSelectedDateRange(
              searchState['date'] as SelectedDates,
            );
            startDate = dateRange.start;
            endDate = dateRange.end;
          }
        }

        if (searchState.keys.contains('workOrderId') &&
            searchState['workOrderId'] != null) {
          startDate = endDate = null;
        }

        return service
            .getJobs(
          yard!.yardCode!,
          startDate?.toUtc(),
          endDate?.toUtc(),
          searchState.keys.contains('assetCode')
              ? searchState['assetCode'] as String?
              : null,
          searchState.keys.contains('workOrderId')
              ? searchState['workOrderId'] as String?
              : null,
          InformJobs.preference?.pageSize ?? 20,
          nextPageToken,
          isInProgress: isInProgressJobs,
        )
            .catchError((Object err) {
          return Future.value(
            PaginatedResult(
              hasNextPage: false,
              items: <AllocateUserJob>[],
            ),
          );
        });
      },
      onDebounced: () {},
      then: (response) {
        if (response != null) {
          nextPageToken = response.nextPageToken;
          hasNextPage = response.hasNextPage;
          isNextpageLoading = false;
          if (isRefresh) {
            _jobs = response.items;
          } else {
            _jobs = [..._jobs, ...response.items];
          }

          if (isInProgressJobs) {
            _inProgressJobs = _jobs;
          } else {
            _scheduledJobs = _jobs;
          }
        }
        _isLoading = false;
        reload();
      },
    );
  }

  @override
  Future<void> loadJobs() async {
    applyFilter();

    _isLoading = false;
    notifyListeners();
  }

  @override
  void reload() {
    var masterList = isInProgressJobs ? _inProgressJobs : _scheduledJobs;
    if (filterText != null) {
      masterList = masterList
          .where(
            (element) =>
                element.assetCode == filterText ||
                element.workOrderId == filterText ||
                element.workOrderDescription == filterText,
          )
          .toList();
    }

    if (filterChips.isNotEmpty) {
      masterList = masterList
          .where(
            (element) =>
                filterChips.contains(element.jobTrade) ||
                filterChips.contains(element.jobType) ||
                filterChips.contains(element.jobTypeVariant) ||
                filterChips.contains(element.workOrderDescription) ||
                filterChips.contains(element.yardCode),
          )
          .toList();
    }

    if (filterDepotChips.isNotEmpty) {
      masterList = masterList
          .where(
            (element) => filterDepotChips.contains(element.depotNo),
          )
          .toList();
    }

    _filteredJobs = masterList;
    super.reload();
  }

  @override
  void dispose() {
    _debounceLoad.dispose();
    super.dispose();
  }

  @override
  Future<List<User>> getUsers(String searchPattern) async {
    if (selectedTeam == null) {
      if (searchPattern.length <= 2) return [];
      final users = await service.getUsers(searchPattern);
      _userCount = users.length;

      notifyListeners();
      return users;
    }

    if (_usersInTeam != null) return _usersInTeam!;
    return [];
  }

  @override
  Future<List<Team>> getTeams(String searchPattern) async {
    final teams = await service.getTeams(searchPattern);
    _teamCount = teams.length;

    notifyListeners();
    return teams;
  }

  @override
  void setSelectedGroup(String selectedGroup) {
    _selectedGroup = selectedGroup;
    reload();
  }

  @override
  void setSelectedUser(User? selectedUser) {
    _selectedUser = selectedUser;
    reload();
  }

  @override
  Future<void> setSelectedTeam(Team? selectedTeam) async {
    _isBusy = true;
    notifyListeners();

    _selectedTeam = selectedTeam;

    if (_selectedTeam == null) {
      _usersInTeam = null;
    } else {
      _usersInTeam = List<User>.empty(growable: true);
      for (final teamMember in selectedTeam!.teamMembers!) {
        final users = await service.getUsers(teamMember.userUuid!);
        if (users.isNotEmpty) _usersInTeam!.add(users.first);
      }
    }

    _isBusy = false;
    reload();
  }

  @override
  void selectJob(AllocateUserJob job) {
    if (selectedItems.contains(job)) {
      selectedItems.remove(job);
    } else {
      selectedItems.add(job);
    }
    reload();
  }

  @override
  Future<bool> assignWorkOrderToUser() async {
    _isBusy = true;
    reload();

    final yard = await userPreferencesRepository.getYard();
    final result = await service.assignWorkOrderToUser(
      AssignWorkOrderToUserRequest(
        yardCode: yard!.yardCode!,
        assignedTo: selectedUser?.id,
        assignedBy: UserInfoService.instance!.userInfo.name,
        assignedTypeId: 1,
        workOrders: selectedItems.map((e) => e.workOrderId).toList(),
        teamId: selectedTeam?.uuid,
      ),
    );

    InformJobs.allJobsCounts = await landingPageService.getAllJobsCount(
      yardCode: yard.yardCode,
      startDate: DateTime.now().toUtc(),
      endDate: DateTime.now().toUtc(),
      filterForUser: true,
    );

    _isBusy = false;
    reload();

    return result;
  }

  @override
  Future<bool> reAssignWorkOrderToUserAndResetJob() async {
    _isBusy = true;
    reload();

    final yard = await userPreferencesRepository.getYard();
    final appversion = await PackageInfo.fromPlatform();
    final result = await service.reAssignWorkOrderToUserAndResetJob(
      AssignWorkOrderToUserRequest(
        yardCode: yard!.yardCode!,
        assignedTo: selectedUser?.id,
        assignedBy: UserInfoService.instance!.userInfo.name,
        assignedTypeId: 1,
        workOrders: selectedItems.map((e) => e.workOrderId).toList(),
        inProgressFormInstances: selectedItems
            .map((e) => e.instanceId)
            .where((element) => element.isNotEmpty)
            .toList(),
        teamId: selectedTeam?.uuid,
        appVersion: '${appversion.version} (${appversion.buildNumber})',
      ),
    );

    InformJobs.allJobsCounts = await landingPageService.getAllJobsCount(
      yardCode: yard.yardCode,
      startDate: DateTime.now().toUtc(),
      endDate: DateTime.now().toUtc(),
      filterForUser: true,
    );

    _isBusy = false;
    reload();

    return result;
  }

  @override
  void setFilterText(String? filter) {
    _filterText = filter;
    if (filter != null) {
      _filterChips.clear();
      _filterDepotChips.clear();
    }
    _selectedGroup = AllocateUserScreenGroupItem.All;
    reload();
  }

  @override
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

  @override
  void setSelectedFilterByOption(String value) {
    _selectedFilterByOption = value;
    reload();
  }

  @override
  Future<List<String>> getWorkOrderIds(String searchText) {
    return commonService
        .getWorkOrderIds(searchText: searchText, stateIds: [1, 2]);
  }

  @override
  Future<bool> unallocateUserTeamFromJob(
    AllocateUserJob job,
    int unassignType,
  ) async {
    _isBusy = true;
    reload();

    final yard = await userPreferencesRepository.getYard();
    final result = await service.unallocateUserTeamFromJob(
      UnassignUserTeamFromWorkOrderRequest(
        yardCode: yard!.yardCode!,
        unassignTypeId: unassignType,
        workOrderId: job.workOrderId,
      ),
    );

    InformJobs.allJobsCounts = await landingPageService.getAllJobsCount(
      yardCode: yard.yardCode,
      startDate: DateTime.now().toUtc(),
      endDate: DateTime.now().toUtc(),
      filterForUser: true,
    );

    _isBusy = false;
    reload();

    return result;
  }

  @override
  void setCollapsed({bool value = true}) {
    isCollapsed = value;
  }
}
