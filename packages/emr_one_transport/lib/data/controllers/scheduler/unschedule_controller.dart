import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_one_core/utilities/debounceable.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/common/screen_refresh_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_data_controller.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_filter.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/scheduler/unscheduled_job.dart';
import 'package:emr_one_transport/data/services/date_helper.dart';
import 'package:emr_one_transport/data/services/shared_preferences_service.dart';
import 'package:emr_one_transport/data/services/signalr_service.dart';
import 'package:flutter/material.dart';

class UnscheduleController extends ChangeNotifier {
  UnscheduleController(
    this._dataController,
    this._sharedPreferenceService,
    this._signalRService,
    this.screenRefreshController,
  );

  // --- Private state ---
  final List<UnscheduledJob> _allPlans = [];
  final List<UnscheduledJob> _allJobs = [];
  final SchedulerDataController _dataController;
  final SharedPreferencesService _sharedPreferenceService;
  final ValueNotifier<bool> sortAscNotifier = ValueNotifier(true);
  final ValueNotifier<String> searchTermNotifier = ValueNotifier('');
  final SignalrService _signalRService;
  List<String> yardsList = [];
  List<ListDetails> filteredContainerTypes = [];
  List<ListDetails> filteredproductFamilies = [];
  List<ListDetails> filteredJobtypes = [];
  DateTime planFetchDate = DateTime.now();
  final ScreenRefreshController screenRefreshController;
  bool _isLoadingMore = false;
  bool _hasMore = true;
  int _currentPage = 1;
  bool _isSearching = false;
  static const int _pageSize = 100;

  // locally filtered & sorted plans
  List<UnscheduledJob> _displayedPlans = [];

  // --- Debouncers ---
  final _debounceLocalPlans = Debounceable<List<UnscheduledJob>>();
  final _debounceRemoteJobs = Debounceable<List<UnscheduledJob>>();

  // --- Public getters ---
  List<UnscheduledJob> get plans => List.unmodifiable(_displayedPlans);
  List<UnscheduledJob> get jobs => List.unmodifiable(_allJobs);

  bool get isLoadingMore => _isLoadingMore;
  bool get hasMore => _hasMore;
  bool get isSearching => _isSearching;

  // --- Initialization ---
  Future<void> init() async {
    await _loadPlans();
    await _fetchFirstPageJobs();
  }

  Future<void> startListening() async {
    await _signalRService.start();
    _signalRService.on(StringConstants.jobCreatedUpdated, handler);
    _signalRService.on(
      StringConstants.planCreatedOrUpdated,
      onPlanCreatedUpdated,
    );
  }

  // --- Private methods ---
  Future<void> _loadPlans() async {
    final fetched = await fetchUnscheduledPlans();
    _allPlans
      ..clear()
      ..addAll(fetched);
    _displayedPlans = List.from(_allPlans);
    notifyListeners();
  }

  Future<void> _fetchFirstPageJobs() async {
    _allJobs.clear();
    _currentPage = 1;
    _hasMore = true;
    notifyListeners();
    await loadMoreJobs();
  }

  Future<void> _searchPlansDebounced() async {
    final term = searchTermNotifier.value.toLowerCase();
    await _debounceLocalPlans.call(
      () {
        if (term.isEmpty) return Future.value(_allPlans);
        return Future.value(
          _allPlans.where((plan) {
            final fields = [
              plan.customerName,
              plan.flowType,
              plan.jobType,
              plan.dispatchYard,
              plan.endLocationAddress,
              plan.jobNumber?.toString(),
              plan.planNumber?.toString(),
              plan.planId,
              plan.haulierCode,
              plan.haulierName,
            ];
            return fields.any((f) => f?.toLowerCase().contains(term) ?? false);
          }).toList(),
        );
      },
      then: (filtered) {
        _displayedPlans = filtered;
        notifyListeners();
      },
    );
  }

  Future<void> _searchJobsDebounced() async {
    final term = searchTermNotifier.value;
    final sort = sortAscNotifier.value;
    _isSearching = true;
    notifyListeners();
    await _debounceRemoteJobs.call(
      () => fetchUnscheduledJobs(
        page: 1,
        size: _pageSize,
        search: term,
        sortAsc: sort,
      ),
      then: (fresh) {
        _allJobs
          ..clear()
          ..addAll(fresh);
        _currentPage = 2;
        _hasMore = fresh.length == _pageSize;
        _isSearching = false;
        notifyListeners();
      },
    );
  }

  // --- Public methods ---
  Future<void> loadMoreJobs() async {
    if (_isLoadingMore || !_hasMore) return;
    _isLoadingMore = true;
    notifyListeners();

    try {
      final page = await fetchUnscheduledJobs(
        page: _currentPage,
        size: _pageSize,
        search: searchTermNotifier.value,
        sortAsc: sortAscNotifier.value,
      );
      _allJobs.addAll(page);
      _currentPage++;
      if (page.length < _pageSize) _hasMore = false;
    } finally {
      _isLoadingMore = false;
      notifyListeners();
    }
  }

  Future<void> updateSearchTerm(String term) async {
    searchTermNotifier.value = term;
    await Future.wait([
      _searchPlansDebounced(),
      _searchJobsDebounced(),
      updateCache(term, isSortAsc: sortAscNotifier.value),
    ]);
  }

  void toggleSortOrder() {
    sortAscNotifier.value = !sortAscNotifier.value;
    updateCache(searchTermNotifier.value, isSortAsc: sortAscNotifier.value);
    _searchPlansDebounced();
    _searchJobsDebounced();
  }

  void addNewJob(UnscheduledJob job) {
    _allJobs.insert(0, job);
    notifyListeners();
  }

  Future<List<UnscheduledJob>> fetchUnscheduledPlans() async {
    final unscheduledPlans = await _dataController.fetchUnscheduledPlans(
      yardsList,
      filteredContainerTypes.map((e) => e.description ?? '').toList(),
      filteredJobtypes.map((e) => e.code ?? '').toList(),
      filteredproductFamilies.map((e) => e.code ?? '').toList(),
      planFetchDate,
    );
    return unscheduledPlans;
  }

  Future<void> setFilter(
    SchedulerFilter filter,
    DateTime date,
    String searchTerm,
  ) async {
    yardsList = filter.yardCodes;
    filteredContainerTypes = filter.containerTypes;
    filteredproductFamilies = filter.productFamilies;
    filteredJobtypes = filter.jobTypes;
    planFetchDate = date;
    searchTermNotifier.value = searchTerm;
    unawaited(init());
  }

  void removeJob(int jobNumber) {
    final idx = _allJobs.indexWhere((j) => j.jobNumber == jobNumber);
    if (idx == -1) return; // already removed → idempotent
    _allJobs.removeAt(idx);
    notifyListeners();
  }

  void addJob(UnscheduledJob job) {
    final existingJob = _allJobs.firstWhereOrNull(
      (j) => j.jobNumber == job.jobNumber,
    );
    if (existingJob != null) {
      _allJobs.removeWhere((j) => j.jobNumber == job.jobNumber);
    }
    _allJobs.insert(0, job);
    if (screenRefreshController.canRefreshScreen()) notifyListeners();
  }

  void updatePlanLoad(
    int planNumber,
    String haulierCode,
    int noOfJobsScheduled,
  ) {
    final plan = _allPlans.firstWhereOrNull(
      (e) => e.planNumber == planNumber && e.haulierCode == haulierCode,
    );
    if (plan == null) {
      return;
    }

    if (plan.loadsRemaining == noOfJobsScheduled) {
      _allPlans.remove(plan);
      _displayedPlans.remove(plan);
    } else {
      plan.loadsRemaining = plan.loadsRemaining! - noOfJobsScheduled;
    }
    notifyListeners();
  }

  Future<List<UnscheduledJob>> fetchUnscheduledJobs({
    required int page,
    required int size,
    required String search,
    required bool sortAsc,
  }) async {
    final unscheduledJobs = await _dataController.fetchUnscheduledJobs(
      PagedFilterRequest(
        page,
        size,
        includeFacets: false,
        searchTerm: '*${search.trim()}*',
        sortBy: 'dueDate',
        sortOrder: sortAsc ? StringConstants.asc : StringConstants.desc,
        filters: {
          'dispatchyards': yardsList,
          'jobTypes': filteredJobtypes.map((e) => e.code ?? '').toList(),
          'containerTypes': filteredContainerTypes
              .map((e) => e.code ?? '')
              .toList(),
          'productFamilies': filteredproductFamilies
              .map((e) => e.code ?? '')
              .toList(),
        },
      ),
    );

    return unscheduledJobs;
  }

  Future<void> updateCache(String searchTerm, {required bool isSortAsc}) async {
    var state = await _sharedPreferenceService.getSchedulerState();
    if (state != null) {
      state = state.copyWith(
        unscheduledJobSearchTerm: searchTerm,
        unscheduledJobSortAscending: isSortAsc,
      );
      await _sharedPreferenceService.setSchedulerState(state);
    }
  }

  void handler(List<Object?>? args) {
    if (args == null || args.isEmpty) return;

    // 1) Parse the payload
    final job = SchedulerJob.fromJson(args[0]! as Map<String, dynamic>);
    final isUnassigned = job.jobStatus == StringConstants.pendingApiValue;

    if (_allJobs.any((j) => j.jobNumber == job.jobNumber) && !isUnassigned) {
      _allJobs.removeWhere((j) => j.jobNumber == job.jobNumber);
      if (screenRefreshController.canRefreshScreen()) notifyListeners();
    }
  }

  Future<void> onPlanCreatedUpdated(List<Object?>? args) async {
    if (args == null || args.isEmpty) return;

    final plannedJobs = (args[0]! as List)
        .map((e) => UnscheduledJob.fromJson(e as Map<String, dynamic>))
        .toList();
    final plannedDate = DateTime.parse(args[1]! as String);

    if (!DateHelper.isSameDate(plannedDate, planFetchDate) ||
        plannedJobs.isEmpty) {
      return;
    }

    final planYard = plannedJobs.first.dispatchYard;

    if (!yardsList.contains(planYard)) return;

    final planIdComingIn = plannedJobs.first.planId;
    _allPlans.removeWhere((p) => p.planId == planIdComingIn);
    _allPlans.addAll(plannedJobs);
    await _searchPlansDebounced();
    if (screenRefreshController.canRefreshScreen()) notifyListeners();
  }
}
