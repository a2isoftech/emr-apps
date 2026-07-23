import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/constants/strings.dart';
import 'package:emr_one_inform/diagnostic/services/diagnostice_service.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/models/asset.dart';
import 'package:emr_one_inform/models/diagnostic_job_form.dart';
import 'package:emr_one_inform/models/paginated_result.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/models/sort_by.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/services/interfaces/icommon_service.dart';
import 'package:flutter/material.dart';

abstract class IDiagnosticController extends BaseController {
  SortBy get sortBy;
  void setSortBy(SortBy sortBy);
  bool get isLoading;
  bool get isNextPageLoading;
  bool get isBusy;
  bool get isFilterVisible;
  bool get hasNextPage;
  bool isLoadingPreview = false;
  bool get canTakeAction;
  String get successMessage;
  String? get filterText;
  List<DiagnosticJobForm> selectedItems = List.empty(growable: true);
  List<DiagnosticJobForm> filteredJobs = List.empty(growable: true);
  List<String> reProcessingJobIds = List.empty(growable: true);
  List<String> repostD365JobIds = List.empty(growable: true);
  List<String> searchJobIds = List.empty(growable: true);
  List<DiagnosticJobForm>? jobs;
  String get selectedGroup;
  String? selectedFilterByOption = 'Yard';
  List<String> get filterChips;

  ValueNotifier<bool> isSearchWidgetVisible = ValueNotifier(true);
  void searchStateChanged(Map<String, dynamic> searchState);
  Map<String, dynamic> get searchState;
  Future<List<String>> getWorkOrderIds(String searchText);
  void toggleSearchWindow();
  void toggleFilterWindow();

  void setFilterText(String? filter);

  Future<void> loadJobs({bool? isRefresh});
  Future<void> searchSelectedJobs();
  Future<void> reProcess(String? workOrderId);
  Future<void> updateD365(String? workOrderId);
  Future<String?> getFormsTemplateJson(String templateId);
  void selectionChanged({bool? isChecked, DiagnosticJobForm? job});
  void selectJob(DiagnosticJobForm? job);
  void onCheckAllTapped();
  void checkAllChanged({bool? isChecked});
  bool canTakeActionOnJob({DiagnosticJobForm? job});
  bool canupdateD365({DiagnosticJobForm? job});
  bool canreProcess({DiagnosticJobForm? job});
  bool isFailed({DiagnosticJobForm? job});
  bool isCancelled({DiagnosticJobForm? job});
  void setSelectedGroup(String selectedGroup);
  Future<List<Asset>> getAssetsByName(String searchText);
}

class DiagnosticController extends IDiagnosticController {
  DiagnosticController({
    required this.diagnosticService,
    required this.userPreferencesRepository,
    required this.commonService,
  });

  final ICommonService commonService;
  final IDiagnosticService diagnosticService;
  final IUserPreferencesRepository userPreferencesRepository;
  bool _isLoading = true;
  bool _isNextPageLoading = false;
  bool _isBusy = false;
  bool _canTakeAction = false;
  bool _isFilterVisible = false;
  String? _filterText;
  SortBy _sortBy = const SortBy(
    fieldName: 'Title',
    sortDirection: SortDirection.ascending,
  );
  final List<String> _filterChips = List.empty(growable: true);

  String? nextPageToken;
  final String _successMessage =
      'Your request has been queued. Refresh the screen after sometime';
  bool _hasNextPage = false;
  List<DiagnosticJobForm>? _jobs;
  String _selectedGroup = AllocateUserScreenGroupItem.All;

  Map<String, dynamic> _searchState = {
    'date': SelectedDates.date(date: DateTime.now().dateOnly),
  };

  @override
  void searchStateChanged(Map<String, dynamic> searchState) {
    _searchState = searchState;
  }

  @override
  Map<String, dynamic> get searchState => _searchState;

  @override
  List<DiagnosticJobForm>? get jobs => _jobs;

  @override
  SortBy get sortBy => _sortBy;
  @override
  List<String> get filterChips => _filterChips;

  @override
  String get selectedGroup => _selectedGroup;

  @override
  String get successMessage => _successMessage;

  @override
  void setSelectedGroup(String selectedGroup) {
    _selectedGroup = selectedGroup;
    selectedItems.clear();

    reload();
  }

  @override
  bool get canTakeAction => _canTakeAction;

  @override
  bool get isBusy => _isBusy;

  @override
  bool get hasNextPage => _hasNextPage;

  @override
  bool get isLoading => _isLoading;

  @override
  bool get isNextPageLoading => _isNextPageLoading;

  @override
  bool get isFilterVisible => _isFilterVisible;

  @override
  String? get filterText => _filterText;

  final _debounceJobs =
      Debounceable<PaginatedResult<List<DiagnosticJobForm>?>>();

  @override
  void onCheckAllTapped() {
    final jobList = getFilteredItems();
    if (selectedItems.isEmpty && jobList.isNotEmpty) {
      selectedItems.clear();
      selectedItems.addAll(jobList);
    } else {
      selectedItems.clear();
    }
    reload();
  }

  @override
  void checkAllChanged({bool? isChecked}) {
    if (isChecked ?? false) {
      selectedItems.clear();
      final jobList = getFilteredItems();

      if (jobList.isNotEmpty) {
        selectedItems.addAll(jobList);
      }
    } else {
      selectedItems.clear();
    }
    reload();
  }

  @override
  void setFilterText(String? filter) {
    _filterText = filter;
    reload();
  }

  List<DiagnosticJobForm> getFilteredItems() {
    var jobList = <DiagnosticJobForm>[];
    switch (selectedGroup) {
      case DiagnsoticActionType.InProgress:
        jobList = jobs!.where((element) => canreProcess(job: element)).toList();
      case DiagnsoticActionType.Queued:
        jobList =
            jobs!.where((element) => canupdateD365(job: element)).toList();
    }

    return jobList;
  }

  @override
  void toggleSearchWindow() {
    _isFilterVisible = false;
    isSearchWidgetVisible.value = !isSearchWidgetVisible.value;
    reload();
  }

  @override
  void toggleFilterWindow() {
    isSearchWidgetVisible.value = false;
    _isFilterVisible = !_isFilterVisible;
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
  Future<void> searchSelectedJobs() async {
    await loadJobs();
    await checkForActionRequired();
    reload();
  }

  @override
  Future<String?> getFormsTemplateJson(String templateId) async {
    return diagnosticService.getFormsTemplateJson(templateId);
  }

  @override
  Future<void> loadJobs({bool? isRefresh = true}) async {
    _isBusy = true;
    _isLoading = true;
    reload();

    filteredJobs.clear();

    DateTime? startDate;
    DateTime? endDate;
    List<String>? workOrderIds;
    String? assetName;

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

      workOrderIds = searchState['workOrderId'] as List<String>;
    }

    if (searchState.keys.contains('assetName') &&
        searchState['assetName'] != null) {
      assetName = (searchState['assetName'] as Asset).assetCode;
    }

    fetchPaginatedJob(
      startDate: startDate,
      endDate: endDate,
      jobIds: workOrderIds,
      assetCode: assetName,
      isRefresh: isRefresh,
    );

    _isBusy = false;
    _isLoading = false;
    reload();
  }

  @override
  void selectionChanged({bool? isChecked, DiagnosticJobForm? job}) {
    if (isChecked ?? false) {
      selectedItems.add(job!);
    } else {
      selectedItems.remove(job);
    }
    reload();
  }

  @override
  void selectJob(DiagnosticJobForm? job) {
    if (selectedItems.contains(job)) {
      selectedItems.remove(job);
    } else {
      selectedItems.add(job!);
    }
    reload();
  }

  void fetchPaginatedJob({
    List<String>? jobIds,
    String? assetCode,
    DateTime? startDate,
    DateTime? endDate,
    bool? isRefresh,
  }) {
    _debounceJobs.call(
      () async {
        _isLoading = isRefresh!;
        _isNextPageLoading = !isRefresh;
        reload();

        nextPageToken = isRefresh ? null : nextPageToken;
        if (!hasNextPage && !isRefresh) {
          _isLoading = false;
          return Future.value(
            PaginatedResult(
              hasNextPage: false,
              items: <DiagnosticJobForm>[],
            ),
          );
        }
        return diagnosticService
            .getallJobs(
          startDate,
          endDate,
          jobIds,
          assetCode,
          InformJobs.preference?.pageSize ?? 20,
          nextPageToken,
        )
            .catchError((Object err) {
          return Future.value(
            PaginatedResult(
              hasNextPage: false,
              items: <DiagnosticJobForm>[],
            ),
          );
        });
      },
      onDebounced: () {},
      then: (response) {
        nextPageToken = response.nextPageToken;
        _hasNextPage = response.hasNextPage;
        _isNextPageLoading = false;
        if (isRefresh!) {
          _jobs = response.items;
        } else {
          _jobs = [..._jobs!, ...response.items!];
        }

        checkForActionRequired();
        _isLoading = false;
        reload();
      },
    );
  }

  @override
  Future<List<Asset>> getAssetsByName(String searchText) {
    return commonService.getAssetByName(searchText);
  }

  Future<void> checkForActionRequired() async {
    if (_jobs == null || _jobs!.isEmpty) {
      _canTakeAction = false;
      return;
    }
    _canTakeAction = _jobs!.any(
      (e) => e.scheduledItemStatus == 'InProgress' || e.status == 'InProgress',
    );
  }

  @override
  bool canTakeActionOnJob({DiagnosticJobForm? job}) {
    if (job != null &&
        (canupdateD365(job: job) || canreProcess(job: job)) &&
        (selectedGroup == DiagnsoticActionType.InProgress ||
            selectedGroup == DiagnsoticActionType.Queued)) {
      return true;
    }
    return false;
  }

  @override
  bool canupdateD365({DiagnosticJobForm? job}) {
    if (job != null &&
        !isFailed(job: job) &&
        (job.scheduledItemStatus == ScheduledItemStatus.Complete &&
                job.status == FormInstanceStatus.ReadyToSubmit &&
                !isSentForReProcessing(job.workOrderId) &&
                !isSentForRePostingtoD365(job.workOrderId) ||
            (job.d365Status != null &&
                job.d365Status != 'ReProcessing' &&
                job.d365Status != 'ReProcessed' &&
                job.d365Status != 'ReProcessFailed'))) {
      return true;
    }

    return false;
  }

  @override
  bool canreProcess({DiagnosticJobForm? job}) {
    if (job != null &&
        !isFailed(job: job) &&
        (job.scheduledItemStatus == ScheduledItemStatus.InProgress ||
            (job.scheduledItemStatus == ScheduledItemStatus.Cancelled &&
                job.status == FormInstanceStatus.InProgress) ||
            (job.d365Status != null &&
                job.d365Status != 'ReProcessing' &&
                job.d365Status != 'ReProcessed' &&
                job.d365Status != 'ReProcessFailed'))) {
      return true;
    }

    return false;
  }

  @override
  bool isFailed({DiagnosticJobForm? job}) {
    if (job != null &&
        (job.scheduledItemStatus == ScheduledItemStatus.Complete &&
            job.status == FormInstanceStatus.SubmitFailed)) {
      return true;
    }

    return false;
  }

  @override
  bool isCancelled({DiagnosticJobForm? job}) {
    if (job != null &&
        (job.status == FormInstanceStatus.Canceled ||
            (job.scheduledItemStatus == ScheduledItemStatus.Cancelled &&
                job.status != FormInstanceStatus.InProgress))) {
      return true;
    }

    return false;
  }

  @override
  Future<void> reProcess(String? workOrderId) async {
    reProcessingJobIds.clear();
    if (workOrderId != null && workOrderId.isNotEmpty) {
      reProcessingJobIds = [workOrderId];
    } else if (selectedItems.isNotEmpty) {
      reProcessingJobIds = selectedItems
          .map(
            (e) => e.workOrderId ?? '',
          )
          .toList();
    }

    if (reProcessingJobIds.isNotEmpty) {
      _isBusy = true;
      reload();
      await diagnosticService.reProcessJobs(reProcessingJobIds);
      await loadJobs();
      await setLocalStatustoSubmitted();
    }
  }

  Future<void> setLocalStatustoSubmitted() async {
    if (reProcessingJobIds.isNotEmpty && _jobs != null && _jobs!.isNotEmpty) {
      final submittedjobs = _jobs!
          .where((element) => reProcessingJobIds.contains(element.workOrderId))
          .toList();
      if (submittedjobs.isNotEmpty) {
        for (final jobId in submittedjobs) {
          final localData = await FormsEngine.services
              .get<IDatabaseManager>()
              .findInstancesByWorkOrderId(jobId.workOrderId!);
          if (localData != null && localData.isNotEmpty) {
            final instance = localData.first;
            instance.isOnServer = true;
            instance.isSubmitted = true;
            instance.isUploaded = true;
            instance.isUploading = false;
            await instance.save();
          }
        }
      }
    }
  }

  @override
  Future<void> updateD365(String? workOrderId) async {
    repostD365JobIds.clear();
    if (workOrderId != null && workOrderId.isNotEmpty) {
      repostD365JobIds = [workOrderId];
    } else if (selectedItems.isNotEmpty) {
      repostD365JobIds = selectedItems.map((e) => e.workOrderId ?? '').toList();
    }

    if (repostD365JobIds.isNotEmpty) {
      _isBusy = true;
      reload();
      await diagnosticService.updateD365(repostD365JobIds);
      await loadJobs();
    }
  }

  @override
  Future<List<String>> getWorkOrderIds(String searchText) async {
    return commonService
        .getWorkOrderIds(searchText: searchText, stateIds: [2, 3, 4]);
  }

  bool isSentForReProcessing(String? workOrderId) {
    if (workOrderId == null) {
      return false;
    }

    return reProcessingJobIds.contains(workOrderId);
  }

  bool isSentForRePostingtoD365(String? workOrderId) {
    if (workOrderId == null) {
      return false;
    }

    return repostD365JobIds.contains(workOrderId);
  }
}
