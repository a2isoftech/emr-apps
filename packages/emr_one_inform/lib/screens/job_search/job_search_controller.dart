import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/common/common_export.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_task/models/clone_task_parameter.dart';
import 'package:emr_one_inform/create_task/services/create_task_service.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/paginated_result.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/services/interfaces/icommon_service.dart';
import 'package:emr_one_inform/services/interfaces/ijob_search_service.dart';
import 'package:emr_one_inform/services/interfaces/ilanding_page_service.dart';
import 'package:emr_one_inform/services/select_yard_service.dart';
import 'package:flutter/material.dart';

abstract class IJobSearchController extends BaseController {
  SortBy get sortBy;
  void setSortBy(SortBy sortBy);
  void toggleSearchWindow();
  void toggleFilterWindow();
  Future<void> loadJobs({bool? isRefresh});
  SelectedDates get selectedDates;
  Map<String, dynamic> searchState = {};
  Future<void> searchStateChanged(Map<String, dynamic> searchState);
  Future<void> setDefaultSearchState();
  Future<List<Yard>> getYards(String filter);
  Future<void> getAllYards();
  Future<void> applyDefaultSortType();

  List<ScheduledJobForm>? newJobsMasterList;
  List<ScheduledJobForm>? newJobsFiltered;
  List<FormInstance>? inProgressJobsMasterList;
  List<FormInstance>? inProgressJobsFiltered;
  bool hasNextPageFilterForUser = false;
  bool hasNextPageInProgress = false;
  bool get isLoading;
  bool get isNextPageLoading;
  bool get isBusy;
  bool get isFilterVisible;
  bool get isCollapsed;
  String get selectedGroup;
  void setSelectedGroup(String selectedGroup);
  Future<bool> resetInProgressForm({required String formInstanceUuid});
  void setFilterText(String? filter);
  String? get filterText;
  List<String> get filterChips;
  Future<bool> assignWorkOrderToUser(
    AssignWorkOrderToUserRequest assignWorkOrderToUserRequest,
  );
  String? selectedFilterByOption = 'Job Type';
  String? get jobId;
  String? get assetCode;
  void setJobId(String? jobId);
  void setAssetCode(String? assetCode);
  ValueNotifier<bool> isSearchWidgetVisible = ValueNotifier(false);

  ValueNotifier<bool> isFilterValuesReady = ValueNotifier(false);
  Future<void> getFilterValues();
  Future<String?> cloneJob({
    required BuildContext context,
    FormInstance? instance,
    ScheduledJobForm? scheduled,
    bool showOptions = false,
  });

  Future<String?> editJob({
    required BuildContext context,
    required ScheduledJobForm scheduled,
  });

  Future<bool> delete(String workOrderId);
  Future<bool> canStartJob(ScheduledJobForm scheduledJobForm);

  List<String> get selectedScheduledItemTypes;
  List<String> workOrderIds = List.empty(growable: true);
  void addSelectedScheduledItemType(String selectedScheduledItemType);
  void removeSelectedScheduledItemType(String selectedScheduledItemType);
  List<String> get filterDepotChips;
  List<String> selectedYards = List.empty(growable: true);
  List<Yard> yards = List.empty(growable: true);
  Future<List<String>> getWorkOrderIds(String searchText);
  Future<List<Asset>> getAssetsByName(String searchText);

  bool filterForUser = false;
  String jobState = 'New';

  void toggleIsCollapsed();
}

class JobSearchController extends IJobSearchController {
  JobSearchController({
    required this.jobSearchService,
    required this.userPreferencesRepository,
    required this.landingPageService,
    required this.createTaskService,
    required this.commonService,
    required this.yardService,
  });

  final ICommonService commonService;
  final ICreateTaskService createTaskService;
  final IJobSearchService jobSearchService;
  final IUserPreferencesRepository userPreferencesRepository;
  final ILandingPageService landingPageService;
  final SelectYardService yardService;

  SortBy _sortBy = const SortBy(
    fieldName: 'Due Date',
    sortDirection: SortDirection.descending,
  );

  bool _isLoading = true;
  bool _isNextPageLoading = false;
  bool _isBusy = false;
  bool _isFilterVisible = false;
  bool _hasNextPageFilterForUser = false;
  String? nextPageTokenFilterForUser;
  bool _hasNextPageInProgress = false;
  String? nextPageTokenInProgress;
  final SelectedDates _selectedDates =
      SelectedDates.date(date: DateTime.now().dateOnly);
  List<FormInstance>? _inProgressJobsMasterList;
  List<FormInstance>? _inProgressFiltered;
  List<ScheduledJobForm>? _newJobsMasterList;
  List<ScheduledJobForm>? _newJobsFiltered;
  String _selectedGroup = '';
  String? _jobId;
  String? _assetCode;
  String? _filterText;
  bool _isCollapsed = true;
  final List<String> _filterChips = List.empty(growable: true);
  final List<String> _filterDepotChips = List.empty(growable: true);

  final List<String> _selectedScheduledItemTypes = List.empty(growable: true);

  final _debounceUserJobs =
      Debounceable<PaginatedResult<List<ScheduledJobForm>?>>();
  final _debounceInProgressJobs =
      Debounceable<PaginatedResult<List<FormInstance>?>>();

  Map<String, dynamic> _searchState = {
    'date': SelectedDates.date(date: DateTime.now().dateOnly),
  };

  @override
  Map<String, dynamic> get searchState => _searchState;

  @override
  Future<void> searchStateChanged(
    Map<String, dynamic> searchState,
  ) async {
    _searchState = searchState;

    await loadJobs();
  }

  @override
  SortBy get sortBy => _sortBy;

  @override
  bool get isBusy => _isBusy;

  @override
  bool get isFilterVisible => _isFilterVisible;

  @override
  bool get isCollapsed => _isCollapsed;

  @override
  void toggleIsCollapsed() {
    _isCollapsed = !isCollapsed;
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
  List<String> get filterChips => _filterChips;

  @override
  List<String> get filterDepotChips => _filterDepotChips;

  @override
  void toggleSearchWindow() {
    _isFilterVisible = false;
    isSearchWidgetVisible.value = !isSearchWidgetVisible.value;
    reload();
  }

  @override
  void toggleFilterWindow() {
    isSearchWidgetVisible.value = false;
    _isFilterVisible = !isFilterVisible;
    reload();
  }

  @override
  SelectedDates get selectedDates => _selectedDates;

  @override
  void reload() {
    if (newJobsMasterList != null) {
      var filteredList = newJobsMasterList;
      if (filterText != null) {
        filteredList = filteredList!
            .where(
              (element) =>
                  element.job!.asset!.assetCode == filterText ||
                  element.job!.workOrderId == filterText ||
                  element.job!.workOrderDescription == filterText ||
                  element.job!.originalDescription == filterText,
            )
            .toList();
      }
      if (filterChips.isNotEmpty) {
        filteredList = filteredList!
            .where(
              (element) =>
                  filterChips.contains(element.job!.jobTrade ?? '') ||
                  filterChips.contains(element.job!.jobType ?? '') ||
                  filterChips.contains(element.job!.jobTypeVariant ?? '') ||
                  filterChips
                      .contains(element.job!.workOrderDescription ?? '') ||
                  filterChips.contains(element.job!.category ?? '') ||
                  filterChips.contains(element.job!.yardCode ?? '') ||
                  filterChips.contains(element.job!.depotNo ?? '') ||
                  filterChips.contains(element.job!.assignedToTeam ?? ''),
            )
            .toList();
      }
      if (filterDepotChips.isNotEmpty) {
        filteredList = filteredList!
            .where(
              (element) =>
                  filterDepotChips.contains(element.job!.depotNo ?? ''),
            )
            .toList();
      }
      _newJobsFiltered = filteredList;
    }
    if (inProgressJobsMasterList != null) {
      var inProgressList = inProgressJobsMasterList;
      if (filterText != null) {
        inProgressList = inProgressList!
            .where(
              (element) =>
                  element.assetCode == filterText ||
                  element.workOrderId == filterText ||
                  element.workOrderDescription == filterText,
            )
            .toList();
      }
      if (filterChips.isNotEmpty) {
        inProgressList = inProgressList!
            .where(
              (element) =>
                  filterChips.contains(element.jobTrade ?? '') ||
                  filterChips.contains(element.jobType ?? '') ||
                  filterChips.contains(element.jobTypeVariant ?? '') ||
                  filterChips.contains(element.workOrderDescription ?? '') ||
                  filterChips.contains(element.category ?? '') ||
                  filterChips.contains(element.yardCode ?? '') ||
                  filterChips.contains(element.assignedToTeam ?? ''),
            )
            .toList();
      }
      if (filterDepotChips.isNotEmpty) {
        inProgressList = inProgressList!
            .where(
              (element) => filterDepotChips.contains(element.depotNo ?? ''),
            )
            .toList();
      }
      _inProgressFiltered = inProgressList;
    }
    super.reload();
  }

  @override
  List<FormInstance>? get inProgressJobsMasterList => _inProgressJobsMasterList;

  @override
  List<ScheduledJobForm>? get newJobsFiltered => _newJobsFiltered;

  @override
  List<FormInstance>? get inProgressJobsFiltered => _inProgressFiltered;

  @override
  List<ScheduledJobForm>? get newJobsMasterList => _newJobsMasterList;

  @override
  bool get hasNextPageFilterForUser => _hasNextPageFilterForUser;

  @override
  bool get hasNextPageInProgress => _hasNextPageInProgress;

  @override
  bool get isLoading => _isLoading;

  @override
  bool get isNextPageLoading => _isNextPageLoading;

  @override
  Future<void> loadJobs({bool? isRefresh = true}) async {
    _isBusy = true;
    _isLoading = true;
    notifyListeners();

    final yard = await userPreferencesRepository.getYard();
    DateTime? startDate;
    DateTime? endDate;
    var assetCode = _assetCode;
    var yardCode = yard!.yardCode!;

    if (searchState.keys.contains('date')) {
      if (searchState.keys.length == 1 &&
          searchState['date'] == null &&
          jobState != 'InProgress' &&
          !filterForUser) {
        searchState['date'] = SelectedDates.date(
          date: DateTime.now().dateOnly,
        );
      }
      if (searchState['date'] != null) {
        final dateRange = DateUtility.getSelectedDateRange(
          searchState['date'] as SelectedDates,
        );
        startDate = dateRange.start.toUtc();
        endDate = dateRange.end.toUtc();
      }
    }

    if (searchState.keys.contains('yard')) {
      if (searchState['yard'] == null) {
        searchState['yard'] = yard;
      } else {
        yardCode = (searchState['yard'] as Yard).yardCode ?? yard.yardCode!;
      }
    }

    if (searchState.keys.contains('workOrderId') &&
        searchState['workOrderId'] != null) {
      startDate = endDate = null;
    }
    if (searchState.keys.contains('assetName')) {
      assetCode = (searchState['assetName'] as Asset).assetCode;
    }
    if (searchState.keys.contains('assetCode')) {
      assetCode = searchState['assetCode'] as String?;
    }

    if (jobState == 'New') {
      await fetchPaginatedJobsForUser(
        yardCode: yard.yardCode!,
        startDate: startDate,
        endDate: endDate,
        filterForUser: filterForUser,
        assetCode: assetCode,
        isRefresh: isRefresh,
      );
    } else if (jobState == 'In Progress') {
      await fetchPaginatedJobInProgress(
        yardCode: yardCode,
        startDate: startDate,
        endDate: endDate,
        filterForUser: filterForUser,
        assetCode: assetCode,
        isRefresh: isRefresh,
      );
    }

    _isBusy = false;
    _isLoading = false;
    reload();
  }

  Future<void> fetchPaginatedJobsForUser({
    required String yardCode,
    DateTime? startDate,
    bool? filterForUser,
    String? assetCode,
    DateTime? endDate,
    bool? isRefresh,
  }) async {
    await _debounceUserJobs.call(
      () async {
        _isNextPageLoading = !isRefresh!;
        notifyListeners();

        nextPageTokenFilterForUser =
            isRefresh ? null : nextPageTokenFilterForUser;
        if (!hasNextPageFilterForUser && !isRefresh) {
          _isLoading = false;
          return Future.value(
            PaginatedResult(
              hasNextPage: false,
              items: <ScheduledJobForm>[],
            ),
          );
        }
        return jobSearchService
            .getAssignedJobs(
          yardCode: yardCode,
          startDate: startDate,
          endDate: endDate,
          filterForUser: filterForUser,
          assetCode: assetCode,
          after: nextPageTokenFilterForUser,
          jobId: searchState.keys.contains('workOrderId')
              ? searchState['workOrderId'] as String?
              : null,
        )
            .catchError((Object err) {
          return Future.value(
            PaginatedResult(
              hasNextPage: false,
              items: <ScheduledJobForm>[],
            ),
          );
        });
      },
      onDebounced: () {},
      then: (response) {
        nextPageTokenFilterForUser = response.nextPageToken;
        _hasNextPageFilterForUser = response.hasNextPage;
        _isNextPageLoading = false;
        if (newJobsMasterList == null || isRefresh!) {
          _newJobsMasterList = response.items;
        } else {
          _newJobsMasterList = [
            ..._newJobsMasterList!,
            ...response.items!,
          ];
        }
        _isLoading = false;
        reload();
      },
    );
  }

  Future<void> fetchPaginatedJobInProgress({
    required String yardCode,
    DateTime? startDate,
    bool? filterForUser,
    String? assetCode,
    DateTime? endDate,
    bool? isRefresh,
  }) async {
    await _debounceInProgressJobs.call(
      () async {
        _isNextPageLoading = !isRefresh!;
        notifyListeners();

        nextPageTokenInProgress = isRefresh ? null : nextPageTokenInProgress;
        if (!hasNextPageInProgress && !isRefresh) {
          _isLoading = false;
          return Future.value(
            PaginatedResult(
              hasNextPage: false,
              items: <FormInstance>[],
            ),
          );
        }
        return jobSearchService
            .getInProgressJobs(
          yardCode: yardCode,
          startDate: startDate,
          endDate: endDate,
          filterForUser: filterForUser,
          assetCode: assetCode,
          after: nextPageTokenInProgress,
          jobId: searchState.keys.contains('workOrderId')
              ? searchState['workOrderId'] as String?
              : null,
        )
            .catchError((Object err) {
          return Future.value(
            PaginatedResult(
              hasNextPage: false,
              items: <FormInstance>[],
            ),
          );
        });
      },
      onDebounced: () {},
      then: (response) {
        nextPageTokenInProgress = response.nextPageToken;
        _hasNextPageInProgress = response.hasNextPage;
        _isNextPageLoading = false;
        if (inProgressJobsMasterList == null || isRefresh!) {
          _inProgressJobsMasterList = response.items;
        } else {
          _inProgressJobsMasterList = [
            ..._inProgressJobsMasterList!,
            ...response.items!,
          ];
        }
        _isLoading = false;
        reload();
      },
    );
  }

  @override
  String get selectedGroup => _selectedGroup;

  @override
  void setSelectedGroup(String selectedGroup) {
    _selectedGroup = selectedGroup;
    reload();
  }

  @override
  Future<bool> resetInProgressForm({required String formInstanceUuid}) async {
    _isBusy = true;
    reload();

    final result = await jobSearchService.resetInProgressForm(formInstanceUuid);

    final yard = await userPreferencesRepository.getYard();
    InformJobs.allJobsCounts = await landingPageService.getAllJobsCount(
      yardCode: yard!.yardCode,
      startDate: DateTime.now().toUtc(),
      endDate: DateTime.now().toUtc(),
      filterForUser: true,
    );

    _isBusy = false;
    reload();

    return result;
  }

  @override
  String? get filterText => _filterText;

  @override
  void setFilterText(String? filter) {
    _filterText = filter;
    if (filter != null) {
      _filterChips.clear();
      _filterDepotChips.clear();
    }

    reload();
  }

  @override
  Future<bool> assignWorkOrderToUser(
    AssignWorkOrderToUserRequest assignWorkOrderToUserRequest,
  ) {
    return jobSearchService.assignWorkOrderToUser(assignWorkOrderToUserRequest);
  }

  @override
  Future<String?> editJob({
    required BuildContext context,
    required ScheduledJobForm scheduled,
  }) async {
    try {
      _isBusy = true;
      reload();

      final createTask = ScheduleTaskByTemplateRequest(
        yardCodes: [scheduled.job!.yardCode!],
        depotNos: [scheduled.job!.depotNo!],
        templateId: scheduled.template!.templateId!,
        isRepeatable: false,
        workOrderDescription: scheduled.job!.workOrderDescription,
        createInD365: false,
        assignedTypeId: 1,
        assetCode: scheduled.job!.asset!.assetCode == 'NONE'
            ? ''
            : scheduled.job!.asset!.assetCode,
        startDate: DateTime.now().toUtc(),
        dueDate: DateTime.now().toUtc().add(const Duration(days: 7)),
        assignedTo: '',
        repeatEndDate: DateTime.now().toUtc(),
        repeatFrequency: 1,
        repeatType: 1,
        createWithQuickTemplate: false,
        isDigitalSignatureRequired:
            scheduled.job?.isDigitalSignatureRequired ?? false,
        notes: scheduled.job?.notes,
        jobPriority: CommonUtility.getJobPriority(scheduled.job!.jobPriority),
        jobTrade: scheduled.job!.jobTrade,
      );
      final templateName = scheduled.template!.title!;
      final templateReferenceId = scheduled.template!.referenceId!;

      return await context.pushNamed<String?>(
        FormsRoutingName.createWorkOrder,
        queryParams: {'isEdit': 'true'},
        extra: CloneTaskParameter(
          templateId: createTask.templateId,
          templateName: templateName,
          templateReferenceId: templateReferenceId,
          yardCode: createTask.yardCodes.first,
          depotNo: createTask.depotNos.first,
          assetCode: createTask.assetCode,
          description: createTask.workOrderDescription!,
          isDigitalSignatureRequiredByTask:
              createTask.isDigitalSignatureRequired,
          isDigitalSignatureRequiredByTemplate:
              scheduled.template?.isDigitalSignatureRequired ?? false,
          workOrderId: scheduled.job!.workOrderId,
          assignedTo: scheduled.job!.assignedTo,
          notes: createTask.notes,
          jobPriority: createTask.jobPriority,
          jobTrade: createTask.jobTrade,
        ),
      );
    } catch (e) {
      return null;
    } finally {
      InformJobs.allJobsCounts = await landingPageService.getAllJobsCount(
        yardCode: scheduled.job!.yardCode,
      );

      _isBusy = false;
      reload();
    }
  }

  @override
  Future<String?> cloneJob({
    required BuildContext context,
    FormInstance? instance,
    ScheduledJobForm? scheduled,
    bool showOptions = false,
  }) async {
    try {
      _isBusy = true;
      reload();

      final createTask = instance != null
          ? ScheduleTaskByTemplateRequest(
              yardCodes: [instance.yardCode!],
              depotNos: [instance.depotNo!],
              templateId: instance.template!.templateId!,
              isRepeatable: false,
              workOrderDescription: instance.workOrderDescription,
              createInD365: false,
              assignedTypeId: 1,
              assetCode: instance.assetCode == 'NONE' ? '' : instance.assetCode,
              startDate: DateTime.now().toUtc(),
              dueDate: DateTime.now().toUtc().add(const Duration(days: 7)),
              assignedTo: '',
              repeatEndDate: DateTime.now().toUtc(),
              repeatFrequency: 1,
              repeatType: 1,
              createWithQuickTemplate: false,
              isDigitalSignatureRequired:
                  instance.isDigitalSignatureRequired ?? false,
              notes: instance.notes,
              jobPriority: CommonUtility.getJobPriority(instance.jobPriority),
            )
          : scheduled != null
              ? ScheduleTaskByTemplateRequest(
                  yardCodes: [scheduled.job!.yardCode!],
                  depotNos: [scheduled.job!.depotNo!],
                  templateId: scheduled.template!.templateId!,
                  isRepeatable: false,
                  workOrderDescription: scheduled.job!.workOrderDescription,
                  createInD365: false,
                  assignedTypeId: 1,
                  assetCode: scheduled.job!.asset!.assetCode == 'NONE'
                      ? ''
                      : scheduled.job!.asset!.assetCode,
                  startDate: DateTime.now().toUtc(),
                  dueDate: DateTime.now().toUtc().add(const Duration(days: 7)),
                  assignedTo: '',
                  repeatEndDate: DateTime.now().toUtc(),
                  repeatFrequency: 1,
                  repeatType: 1,
                  createWithQuickTemplate: false,
                  isDigitalSignatureRequired:
                      scheduled.job?.isDigitalSignatureRequired ?? false,
                  notes: scheduled.job?.notes,
                  jobPriority:
                      CommonUtility.getJobPriority(scheduled.job!.jobPriority),
                )
              : null;
      final templateName = instance != null
          ? instance.template!.title!
          : scheduled != null
              ? scheduled.template!.title!
              : 'Hidden Template';
      final templateReferenceId = instance != null
          ? instance.template!.referenceId!
          : scheduled != null
              ? scheduled.template!.referenceId!
              : 'Hidden Template';

      if (createTask == null) return null;
      if (showOptions) {
        return await context.pushNamed<String?>(
          FormsRoutingName.createWorkOrder,
          extra: CloneTaskParameter(
            templateId: createTask.templateId,
            templateName: templateName,
            templateReferenceId: templateReferenceId,
            yardCode: createTask.yardCodes.first,
            depotNo: createTask.depotNos.first,
            assetCode: createTask.assetCode,
            description: createTask.workOrderDescription!,
            isDigitalSignatureRequiredByTask:
                createTask.isDigitalSignatureRequired,
            isDigitalSignatureRequiredByTemplate: instance != null
                ? instance.template?.isDigitalSignatureRequired ?? false
                : scheduled?.template?.isDigitalSignatureRequired ?? false,
            notes: createTask.notes,
            jobPriority: createTask.jobPriority,
          ),
        );
      }

      return await createTaskService.createScheduledTaskByTemplate(createTask);
    } catch (e) {
      return null;
    } finally {
      InformJobs.allJobsCounts = await landingPageService.getAllJobsCount(
        yardCode: instance != null
            ? instance.yardCode
            : scheduled != null
                ? scheduled.job!.yardCode
                : '',
      );

      _isBusy = false;
    }
  }

  @override
  String? get jobId => _jobId;

  @override
  String? get assetCode => _assetCode;

  @override
  void setJobId(String? jobId) {
    _jobId = jobId;
    notifyListeners();
  }

  @override
  void setAssetCode(String? assetCode) {
    _assetCode = assetCode;
    notifyListeners();
  }

  @override
  Future<bool> delete(String workOrderId) async {
    _isBusy = true;
    notifyListeners();

    return jobSearchService.delete(workOrderId);
  }

  @override
  Future<bool> canStartJob(ScheduledJobForm scheduledJobForm) async {
    if (scheduledJobForm.job?.assignedTo?.isNotEmpty ?? false) {
      return scheduledJobForm.job?.assignedTo ==
          UserInfoService.instance!.userInfo.name;
    }
    if (scheduledJobForm.job?.assignedToTeam?.isEmpty ?? true) return true;

    return jobSearchService.canStartJob(scheduledJobForm.job!.workOrderId!);
  }

  @override
  List<String> get selectedScheduledItemTypes => _selectedScheduledItemTypes;

  @override
  void addSelectedScheduledItemType(String selectedScheduledItemType) {
    if (!selectedScheduledItemTypes.contains(selectedScheduledItemType)) {
      selectedScheduledItemTypes.add(selectedScheduledItemType);
      reload();
    }
  }

  @override
  void removeSelectedScheduledItemType(String selectedScheduledItemType) {
    if (selectedScheduledItemTypes.contains(selectedScheduledItemType)) {
      selectedScheduledItemTypes.remove(selectedScheduledItemType);
      reload();
    }
  }

  @override
  Future<List<String>> getWorkOrderIds(String searchText) async {
    return commonService.getWorkOrderIds(
      searchText: searchText,
      filterForUser: filterForUser,
      stateIds: jobState == 'New' ? [1] : [2],
    );
  }

  @override
  Future<List<Asset>> getAssetsByName(String searchText) {
    return commonService.getAssetByName(searchText);
  }

  @override
  Future<void> getFilterValues() async {
    isFilterValuesReady.value = true;
  }

  @override
  Future<void> setDefaultSearchState() async {
    if (searchState.keys.contains('date')) {
      searchState.remove('date');
    }
    await setYardSearchState();
  }

  @override
  Future<List<Yard>> getYards(String filter) async {
    return yards
        .where(
          (element) =>
              element.displayName
                  .toLowerCase()
                  .contains(filter.toLowerCase()) ||
              (element.yardCode != null &&
                  element.yardCode!
                      .toLowerCase()
                      .contains(filter.toLowerCase())),
        )
        .toList();
  }

  @override
  Future<void> getAllYards() async {
    final territory = await userPreferencesRepository.getTerritory();
    if (territory.isNotEmpty) {
      final yards = await yardService.getYardsByTerritoryCode(code: territory);
      this.yards = yards;
    }
  }

  Future<void> setYardSearchState() async {
    final yard = await userPreferencesRepository.getYard();
    final yardsearchState = <String, dynamic>{
      'yard': yard,
    };
    searchState.addAll(yardsearchState);
  }

  @override
  Future<void> applyDefaultSortType() async {
    if (jobState == 'In Progress' && filterForUser) {
      _sortBy = const SortBy(
        fieldName: 'Due Date',
        sortDirection: SortDirection.descending,
      );
    } else {
      _sortBy = const SortBy(
        fieldName: 'Title',
        sortDirection: SortDirection.ascending,
      );
    }
  }
}
