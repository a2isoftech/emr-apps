import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/models/work_request.dart';
import 'package:emr_one_inform/models/work_request_query_filter.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/services/view_work_request_service.dart';
import 'package:emr_one_inform/widgets/search_widget.dart';

class ViewWorkRequestController extends BaseController {
  ViewWorkRequestController({
    required this.viewWorkRequestService,
    required this.userPreferencesRepository,
  }) {
    final datePeriod = DateUtility.getWeekDateRange(DateTime.now());
    _searchStartDate = datePeriod.start.toUtc();
    _searchEndDate = datePeriod.end.toUtc();
  }

  List<WorkRequest>? workRequests;
  SortBy sortBy = const SortBy(
    fieldName: 'Work Request Id',
    sortDirection: SortDirection.ascending,
  );
  bool isSearchVisible = false;
  bool isFilterVisible = false;
  bool isProcessing = false;
  bool isLoading = true;
  String? searchPattern;
  List<String> selectedFilterChip = List.empty(growable: true);
  final List<WorkRequest> selectedItems = List.empty(growable: true);

  final IUserPreferencesRepository userPreferencesRepository;
  final IViewWorkRequestService viewWorkRequestService;
  late final DateTime _searchStartDate;
  late final DateTime _searchEndDate;

  SelectedDates searchSelectedDates = SelectedDates.dateRange(
    dateRange: DateUtility.getWeekDateRange(DateTime.now()),
  );
  String selectedFilterByOption = 'Work Request State';
  String? assetCode;

  SearchState _searchState = SearchState(
    selectedDate: SelectedDates.dateRange(
      dateRange: DateUtility.getWeekDateRange(DateTime.now()),
    ),
  );

  SearchState get searchState => _searchState;

  void searchStateChanged(SearchState searchState) {
    _searchState = searchState;
    notifyListeners();
  }

  void toggleSearchWindow() {
    isFilterVisible = false;
    isSearchVisible = !isSearchVisible;
    reload();
  }

  void toggleFilterWindow() {
    isSearchVisible = false;
    isFilterVisible = !isFilterVisible;
    reload();
  }

  Future<void> applyFilter(
    WorkRequestQueryFilter workRequestQueryFilter,
  ) async {
    isLoading = true;
    reload();

    workRequests = await viewWorkRequestService.getWorkRequests(
      workRequestQueryFilter: workRequestQueryFilter,
    );

    isLoading = false;
    reload();
  }

  Future<void> loadWorkRequests({
    DateTime? startDate,
    DateTime? endDate,
    String? assetCode,
  }) async {
    final yard = await userPreferencesRepository.getYard();

    await applyFilter(
      WorkRequestQueryFilter(
        yardCode: yard?.yardCode,
        startDate: startDate ?? _searchStartDate,
        endDate: endDate ?? _searchEndDate,
        refreshFromD365: false,
        assetCode: assetCode,
      ),
    );

    isLoading = false;
    reload();
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

    final zipFile = await viewWorkRequestService
        .exportPDFs(selectedItems.map((e) => e.workOrderId!).toList());

    selectedItems.clear();
    isProcessing = false;
    reload();

    return zipFile.path;
  }

  void checkAllChanged({bool? isChecked}) {
    if (isChecked ?? false) {
      selectedItems.clear();
      selectedItems.addAll(workRequests!);
    } else {
      selectedItems.clear();
    }
    reload();
  }

  void onCheckAllTapped() {
    if (selectedItems.isEmpty) {
      selectedItems.addAll(workRequests!);
    } else if (selectedItems.length != workRequests!.length) {
      selectedItems.clear();
      selectedItems.addAll(workRequests!);
    } else {
      selectedItems.clear();
    }

    reload();
  }

  void selectJob(WorkRequest? workRequest) {
    if (selectedItems.contains(workRequest)) {
      selectedItems.remove(workRequest);
    } else {
      selectedItems.add(workRequest!);
    }
    reload();
  }

  void selectionChanged({bool? isChecked, WorkRequest? workRequest}) {
    if (isChecked ?? false) {
      selectedItems.add(workRequest!);
    } else {
      selectedItems.remove(workRequest);
    }
    reload();
  }
}
