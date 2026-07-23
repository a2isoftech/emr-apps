import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/create_task/services/create_task_service.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/scheduler/models/patch_schedule.dart';
import 'package:emr_one_inform/scheduler/models/schedule_filter.dart';
import 'package:emr_one_inform/scheduler/models/schedule_record.dart';
import 'package:emr_one_inform/scheduler/services/scheduler_service.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';

class SchedulerController extends BaseController {
  SchedulerController({required this.service, required this.createTaskService});

  final SchedulerService service;
  final ICreateTaskService createTaskService;

  bool isBusy = true;
  bool isSearchVisible = false;
  bool isFilterVisible = false;
  String? filterText;

  SortBy sortBy = const SortBy(
    fieldName: 'Description',
    sortDirection: SortDirection.ascending,
  );

  List<ScheduleRecord> schedules = List.empty(growable: true);
  List<ScheduleRecord> filteredSchedules = List.empty(growable: true);
  List<int> selectedRepeatInterval = List.empty(growable: true);

  KeyValuePair<String, dynamic> searchState = KeyValuePair(
    key: 'date',
    value: SelectedDates.dateRange(
      dateRange: DateUtility.getWeekDateRange(DateTime.now().dateOnly),
    ),
  );

  Future<void> loadData() async {
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

    schedules = await service.getSchedules(
      ScheduleFilter(
        createdDateStart: startDate,
        createdDateEnd: endDate,
        description: searchState.key == 'description'
            ? searchState.value as String?
            : null,
      ),
    );

    _applySortAndFilter();

    isBusy = false;
    notifyListeners();
  }

  Future<void> searchStateChanged(
    KeyValuePair<String, dynamic> searchState,
  ) async {
    this.searchState = searchState;
    await loadData();
  }

  void toggleSearchWindow() {
    isFilterVisible = false;
    isSearchVisible = !isSearchVisible;
    notifyListeners();
  }

  void toggleFilterWindow() {
    isSearchVisible = false;
    isFilterVisible = !isFilterVisible;
    notifyListeners();
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
    _applySortAndFilter();
    notifyListeners();
  }

  void setFilterText(String? value) {
    filterText = value;
    selectedRepeatInterval.clear();
    _applySortAndFilter();
    notifyListeners();
  }

  void _applySortAndFilter() {
    var list = schedules.toList();

    if (sortBy.fieldName == 'Description') {
      if (sortBy.sortDirection == SortDirection.ascending) {
        list.sort(
          (x, y) => x.description.compareTo(y.description),
        );
      } else {
        list.sort(
          (x, y) => y.description.compareTo(x.description),
        );
      }
    }

    if (sortBy.fieldName == 'Next Scheduled Date') {
      if (sortBy.sortDirection == SortDirection.ascending) {
        list.sort(
          (x, y) => x.nextSchedulerDate.compareTo(y.nextSchedulerDate),
        );
      } else {
        list.sort(
          (x, y) => y.nextSchedulerDate.compareTo(x.nextSchedulerDate),
        );
      }
    }

    if (sortBy.fieldName == 'Created Date') {
      if (sortBy.sortDirection == SortDirection.ascending) {
        list.sort(
          (x, y) => x.createdDate.compareTo(y.createdDate),
        );
      } else {
        list.sort(
          (x, y) => y.createdDate.compareTo(x.createdDate),
        );
      }
    }

    if (sortBy.fieldName == 'Repeat Frequency') {
      if (sortBy.sortDirection == SortDirection.ascending) {
        list.sort(
          (x, y) => x.repeatFrequency.compareTo(y.repeatFrequency),
        );
      } else {
        list.sort(
          (x, y) => y.repeatFrequency.compareTo(x.repeatFrequency),
        );
      }
    }

    if (filterText != null) {
      list = list.where((e) => e.description == filterText).toList();
    }

    if (selectedRepeatInterval.isNotEmpty) {
      list = list
          .where((e) => selectedRepeatInterval.contains(e.repeatInterval))
          .toList();
    }

    filteredSchedules = list.toList();
  }

  Future<List<User>> getUsers(String filter) async {
    return createTaskService.getUsers(filter);
  }

  Future<bool> patchSchedule(PatchSchedule patchSchedule) async {
    isBusy = true;
    notifyListeners();

    final result = await service.patchSchedule(patchSchedule);

    isBusy = false;
    notifyListeners();

    return result;
  }

  void updateSelectedRepeatInterval(int repeatType) {
    if (selectedRepeatInterval.contains(repeatType)) {
      selectedRepeatInterval.remove(repeatType);
    } else {
      selectedRepeatInterval.add(repeatType);
    }
    filterText = null;
    _applySortAndFilter();
    notifyListeners();
  }

  Future<List<String>> getScheduleTitles(String searchText) async {
    if (searchText.length <= 2) return List.empty(growable: true);
    return service
        .getScheduleDescriptions(ScheduleFilter(description: searchText));
  }
}
