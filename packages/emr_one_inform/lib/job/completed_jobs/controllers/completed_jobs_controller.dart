import 'dart:typed_data';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/common/common_utitlty.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/create_task/models/clone_task_parameter.dart';
import 'package:emr_one_inform/create_task/services/create_task_service.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/job/completed_jobs/model/completed_form_instance_query_filter.dart';
import 'package:emr_one_inform/job/completed_jobs/model/completed_job.dart';
import 'package:emr_one_inform/job/completed_jobs/service/icompleted_job_service.dart';
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

class CompletedJobsController extends BaseController {
  CompletedJobsController({
    required this.userPreferencesRepository,
    required this.completedJobService,
    required this.jobSearchService,
    required this.createTaskService,
    required this.landingPageService,
    required this.commonService,
    required this.yardService,
  });

  List<CompletedJob>? completedJobs;
  SortBy sortBy =
      const SortBy(fieldName: 'Title', sortDirection: SortDirection.ascending);
  ValueNotifier<bool> isSearchWidgetVisible = ValueNotifier(false);
  ValueNotifier<bool> isFilterValuesReady = ValueNotifier(false);
  bool isFilterVisible = false;
  bool isNextpageLoading = false;
  bool isProcessing = false;
  bool isLoading = true;
  bool isUpToTopButtonVisible = false;
  String? searchPattern;
  List<String> selectedFilterChip = List.empty(growable: true);
  final List<CompletedJob> selectedItems = List.empty(growable: true);
  SelectedDates searchSelectedDates =
      SelectedDates.date(date: DateTime.now().dateOnly);
  String selectedFilterByOption = 'Job Type';
  bool filterForUser = false;
  bool isCollapsed = true;
  List<Yard> yards = List.empty(growable: true);

  final ICommonService commonService;
  final IUserPreferencesRepository userPreferencesRepository;
  final ICompletedJobService completedJobService;
  final ICreateTaskService createTaskService;
  final IJobSearchService jobSearchService;
  final ILandingPageService landingPageService;
  final SelectYardService yardService;

  Map<String, dynamic> get searchState => _searchState;
  Map<String, dynamic> _searchState = {
    'date': SelectedDates.date(date: DateTime.now().dateOnly),
  };

  final List<String> filterScheduledItemTypeChips = List.empty(growable: true);
  List<String> selectedScheduledItemType = List.empty(growable: true);
  final List<CompletedJob> filteredList = List.empty(growable: true);
  List<String> selectedYards = List.empty(growable: true);
  List<String> filterDepotChips = [];
  String? nextPageToken;
  bool hasNextPage = false;
  final _debounceLoad = Debounceable<PaginatedResult<List<CompletedJob>?>>();

  void searchStateChanged(Map<String, dynamic> searchState) {
    _searchState = searchState;
    notifyListeners();
  }

  void toggleSearchWindow() {
    isFilterVisible = false;
    isSearchWidgetVisible.value = !isSearchWidgetVisible.value;
    reload();
  }

  void toggleFilterWindow() {
    isSearchWidgetVisible.value = false;
    isFilterVisible = !isFilterVisible;
    reload();
  }

  void toggleUpToTopButton({bool visibility = false}) {
    isUpToTopButtonVisible = visibility;
    reload();
  }

  Future<void> loadJobs({
    bool? isRefresh = true,
  }) async {
    isProcessing = true;
    isLoading = true;
    notifyListeners();

    final filter = await getFilterTobeApplied();

    await fetchPaginatedJobs(
      isRefresh: isRefresh,
      completedFormInstanceQueryFilter: filter,
    );

    isProcessing = false;
    isLoading = false;
    reload();
  }

  Future<CompletedFormInstanceQueryFilter> getFilterTobeApplied() async {
    DateTime? startDate;
    DateTime? endDate;
    String? yardCode;

    if (searchState.keys.contains('date')) {
      if (searchState['date'] == null) {
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

    final yard = await userPreferencesRepository.getYard();
    yardCode = yard?.yardCode;
    if (searchState.keys.contains('yard')) {
      if (searchState['yard'] == null) {
        searchState['yard'] = yard;
      } else {
        yardCode = (searchState['yard'] as Yard).yardCode;
      }
    }

    if (searchState.keys.contains('workOrderId') &&
        searchState['workOrderId'] != null) {
      startDate = endDate = yardCode = null;
    }

    return CompletedFormInstanceQueryFilter(
      yardCode: yardCode,
      startDate: startDate,
      endDate: endDate,
      filterForUser: filterForUser,
      assetCode: searchState.keys.contains('assetCode')
          ? searchState['assetCode'] as String?
          : null,
      workOrderId: searchState.keys.contains('workOrderId')
          ? searchState['workOrderId'] as String?
          : null,
      submittedBy: searchState.keys.contains('submittedBy')
          ? searchState['submittedBy'] as String?
          : null,
    );
  }

  Future<void> fetchPaginatedJobs({
    CompletedFormInstanceQueryFilter? completedFormInstanceQueryFilter,
    bool? isRefresh,
  }) async {
    await _debounceLoad.call(
      () async {
        isNextpageLoading = !isRefresh!;
        notifyListeners();

        nextPageToken = isRefresh ? null : nextPageToken;
        if (!hasNextPage && !isRefresh) {
          isLoading = false;
          return Future.value(
            PaginatedResult(
              hasNextPage: false,
              items: <CompletedJob>[],
            ),
          );
        }
        return completedJobService
            .getCompletedJobs(
          completedFormInstanceQueryFilter!,
          InformJobs.preference?.pageSize ?? 20,
          nextPageToken,
        )
            .catchError((Object err) {
          return Future.value(
            PaginatedResult(
              hasNextPage: false,
              items: <CompletedJob>[],
            ),
          );
        });
      },
      onDebounced: () {},
      then: (response) {
        nextPageToken = response.nextPageToken;
        hasNextPage = response.hasNextPage;
        isNextpageLoading = false;
        if (completedJobs == null || isRefresh!) {
          completedJobs = response.items;
        } else {
          completedJobs = [...completedJobs!, ...response.items!];
        }
        isLoading = false;
        reload();
      },
    );
  }

  void setSortBy(SortBy value) {
    sortBy = value;
    if (sortBy.sortDirection == SortDirection.ascending) {
      sortBy = SortBy(
        fieldName: sortBy.fieldName,
        sortDirection: SortDirection.descending,
      );
    } else {
      sortBy = SortBy(
        fieldName: sortBy.fieldName,
        sortDirection: SortDirection.ascending,
      );
    }

    reload();
  }

  Future<String> exportPdf() async {
    isProcessing = true;
    reload();

    final zipFilePath = await completedJobService
        .exportPDFs(selectedItems.map((e) => e.workOrderId!).toList());

    selectedItems.clear();
    isProcessing = false;
    reload();

    return zipFilePath;
  }

  void checkAllChanged({bool? isChecked}) {
    if (isChecked ?? false) {
      selectedItems.clear();
      selectedItems.addAll(completedJobs!);
    } else {
      selectedItems.clear();
    }
    reload();
  }

  void onCheckAllTapped() {
    if (selectedItems.isEmpty) {
      selectedItems.addAll(completedJobs!);
    } else if (selectedItems.length != completedJobs!.length) {
      selectedItems.clear();
      selectedItems.addAll(completedJobs!);
    } else {
      selectedItems.clear();
    }

    reload();
  }

  void selectJob(CompletedJob? job) {
    if (selectedItems.contains(job)) {
      selectedItems.remove(job);
    } else {
      selectedItems.add(job!);
    }
    reload();
  }

  void selectionChanged({bool? isChecked, CompletedJob? job}) {
    if (isChecked ?? false) {
      selectedItems.add(job!);
    } else {
      selectedItems.remove(job);
    }
    reload();
  }

  Future<String?> cloneJob({
    required BuildContext context,
    required CompletedJob job,
    bool showOptions = false,
  }) async {
    try {
      isProcessing = true;
      reload();

      final createTask = ScheduleTaskByTemplateRequest(
        yardCodes: [job.yardCode!],
        depotNos: [job.depotNo!],
        templateId: job.template!.templateId!,
        isRepeatable: false,
        workOrderDescription: job.workOrderDescription,
        createInD365: false,
        assignedTypeId: 1,
        assetCode: job.assetCode == 'NONE' ? '' : job.assetCode,
        startDate: DateTime.now().toUtc(),
        dueDate: DateTime.now().toUtc().add(const Duration(days: 7)),
        assignedTo: '',
        repeatEndDate: DateTime.now().toUtc(),
        repeatFrequency: 1,
        repeatType: 1,
        createWithQuickTemplate: false,
        isDigitalSignatureRequired: job.isDigitalSignatureRequired ?? false,
        notes: job.notes,
        jobPriority: CommonUtility.getJobPriority(job.jobPriority),
      );

      if (showOptions) {
        return await context.pushNamed<String?>(
          FormsRoutingName.createWorkOrder,
          extra: CloneTaskParameter(
            templateId: createTask.templateId,
            templateName: job.template!.title!,
            templateReferenceId: job.template!.referenceId!,
            yardCode: createTask.yardCodes.first,
            depotNo: createTask.depotNos.first,
            assetCode: createTask.assetCode,
            description: createTask.workOrderDescription!,
            isDigitalSignatureRequiredByTask:
                job.isDigitalSignatureRequired ?? false,
            isDigitalSignatureRequiredByTemplate:
                job.template?.isDigitalSignatureRequired ?? false,
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
        yardCode: job.yardCode,
      );
      isProcessing = false;
    }
  }

  Future<void> validateBySignature(
    String workOrderId,
    Uint8List stream,
    String notes,
  ) async {
    isProcessing = true;
    reload();
    final result = await completedJobService.validateBySignature(
      workOrderId,
      stream,
      notes,
    );
    isProcessing = false;
    reload();

    return result;
  }

  Future<String?> createValidationTask(CompletedJob job) async {
    try {
      isProcessing = true;
      reload();
      final createTask = ScheduleTaskByTemplateRequest(
        yardCodes: [job.yardCode!],
        depotNos: [job.depotNo!],
        templateId: job.template!.templateId!,
        isRepeatable: false,
        workOrderDescription: job.workOrderDescription,
        createInD365: false,
        assignedTypeId: 1,
        assetCode: job.assetCode == 'NONE' ? '' : job.assetCode,
        startDate: DateTime.now().toUtc(),
        dueDate: DateTime.now().toUtc().add(const Duration(days: 7)),
        assignedTo: UserInfoService.instance!.userInfo.name,
        repeatFrequency: 1,
        repeatType: 1,
        createWithQuickTemplate: false,
        isDigitalSignatureRequired: job.isDigitalSignatureRequired ?? false,
        parentWorkOrderId: job.workOrderId,
        notes: job.notes,
        jobPriority: CommonUtility.getJobPriority(job.jobPriority),
      );
      return await createTaskService.createScheduledTaskByTemplate(createTask);
    } catch (e) {
      return null;
    } finally {
      InformJobs.allJobsCounts = await landingPageService.getAllJobsCount(
        yardCode: job.yardCode,
      );
      isProcessing = false;
      reload();
    }
  }

  Future<ScheduledJobForm?> getJobByWorkOrderId(
    String workOrderId,
    String yardCode,
  ) async {
    try {
      isProcessing = true;
      reload();

      final result = await jobSearchService.getAssignedJobs(
        yardCode: yardCode,
        jobId: workOrderId,
      );

      if (result.items?.isEmpty ?? true) return null;

      return result.items!.firstWhere((e) => e.job?.workOrderId == workOrderId);
    } catch (e) {
      return null;
    } finally {
      isProcessing = false;
      reload();
    }
  }

  Future<List<String>> getWorkOrderIds(String searchText) async {
    return commonService.getWorkOrderIds(
      searchText: searchText,
      filterForUser: filterForUser,
      stateIds: [4],
    );
  }

  Future<List<String>> getUserNames(String filter) async {
    return commonService.getUsers(filter);
  }

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
}
