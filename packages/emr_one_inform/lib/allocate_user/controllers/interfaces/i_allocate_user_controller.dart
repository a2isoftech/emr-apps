import 'package:emr_one_inform/allocate_user/models/allocate_user_job.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:flutter/material.dart';

abstract class IAllocateUserController extends BaseController {
  // bool get isSearchVisible;
  // bool get isFilterVisible;
  bool get isLoading;
  bool get isBusy;
  User? get selectedUser;
  Team? get selectedTeam;
  String get selectedGroup;
  String get selectedFilterByOption;
  int get userCount;
  int get teamCount;
  Map<String, dynamic> get searchState;
  String? get filterText;
  SortBy get sortBy;
  List<String> get filterChips;
  List<AllocateUserJob> get jobs;
  List<AllocateUserJob> get filteredJobs;
  List<AllocateUserJob> get inProgressJobs;
  List<AllocateUserJob> get scheduledJobs;
  List<AllocateUserJob> get selectedItems;
  bool isNextpageLoading = false;
  bool isInProgressJobs = false;

  bool get hasNextPage => false;

  bool get isCollapsed => true;

  ValueNotifier<bool> isSearchWidgetVisible = ValueNotifier(false);
  ValueNotifier<bool> isFilterValuesReady = ValueNotifier(false);

  void toggleSearchWindow();
  void toggleFilterWindow();

  Future<void> loadJobs();

  Future<List<User>> getUsers(String searchPattern);
  Future<List<Team>> getTeams(String searchPattern);
  void applyFilter({bool isRefresh});

  void setSelectedUser(User? selectedUser);
  void setCollapsed({bool value});

  Future<void> setSelectedTeam(Team? selectedTeam);
  void setSelectedGroup(String selectedGroup);
  void selectJob(AllocateUserJob job);

  Future<bool> assignWorkOrderToUser();

  Future<bool> reAssignWorkOrderToUserAndResetJob();

  void searchStateChanged(Map<String, dynamic> searchState);
  void setFilterText(String? filter);
  void setSortBy(SortBy sortBy);
  void setSelectedFilterByOption(String value);

  String? get filterScheduledItemTypeText;
  List<String> get selectedScheduledItemType;
  void setFilterScheduledItemTypeText(String? filter);
  List<String> get filterScheduledItemTypeChips;

  List<String> get filterDepotChips;
  List<String> selectedYards = List.empty(growable: true);

  Future<List<String>> getWorkOrderIds(String searchText);
  Future<bool> unallocateUserTeamFromJob(
    AllocateUserJob job,
    int unassignType,
  );
}
