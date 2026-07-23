import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/create_template/model/create_form_list.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/screens/form_lists/add_list/add_form_list_model.dart';
import 'package:emr_one_inform/services/form_list_service.dart';
import 'package:emr_one_inform/services/interfaces/icommon_service.dart';

class FormListController extends BaseController {
  FormListController({
    required this.listService,
    required this.commonService,
  });

  final FormListService listService;
  final ICommonService commonService;

  bool isBusy = false;
  bool isLoading = false;
  bool _isSearchVisible = false;
  bool _isFilterVisible = false;
  bool get isSearchVisible => _isSearchVisible;
  bool get isFilterVisible => _isFilterVisible;
  List<FormList> lists = List.empty(growable: true);
  List<FormList> filteredLists = List.empty(growable: true);
  SortBy _sortBy = const SortBy(
    fieldName: 'List Name',
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

  Future<void> getLists() async {
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

    lists = await listService.getLists(
      startDate: startDate?.toIso8601String(),
      endDate: endDate?.toIso8601String(),
      listName:
          searchState.key == 'listName' ? searchState.value as String? : null,
      createdBy:
          searchState.key == 'createdBy' ? searchState.value as String? : null,
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
    var listToFilterAndSort = lists;
    listToFilterAndSort = _applySorting(lists);
    if (filterText != null) {
      listToFilterAndSort = lists
          .where(
            (element) =>
                element.listName!.toLowerCase().trim() ==
                filterText!.toLowerCase().trim(),
          )
          .toList();
    }

    filteredLists = listToFilterAndSort;
    super.reload();
  }

  List<FormList> _applySorting(List<FormList> lists) {
    switch (sortBy.fieldName) {
      case 'List Name':
        if (sortBy.sortDirection == SortDirection.ascending) {
          lists.sort(
            (x, y) => x.listName!.compareTo(y.listName!),
          );
        } else {
          lists.sort(
            (x, y) => y.listName!.compareTo(x.listName!),
          );
        }
      case 'Created By':
        if (sortBy.sortDirection == SortDirection.ascending) {
          lists.sort(
            (x, y) => x.createdBy!.compareTo(y.createdBy!),
          );
        } else {
          lists.sort(
            (x, y) => y.createdBy!.compareTo(x.createdBy!),
          );
        }
      case 'Created Date':
        if (sortBy.sortDirection == SortDirection.ascending) {
          lists.sort(
            (x, y) =>
                x.createdDate!.toString().compareTo(y.createdDate!.toString()),
          );
        } else {
          lists.sort(
            (x, y) =>
                y.createdDate!.toString().compareTo(x.createdDate!.toString()),
          );
        }
    }
    return lists;
  }

  Future<void> deleteList({
    required FormList list,
  }) async {
    isBusy = true;
    notifyListeners();

    await listService.deleteList(
      DeleteFormListRequest(
        id: list.id!,
        modifiedBy: UserInfoService.instance!.userInfo.name,
        modifiedDate: DateTime.now().toUtc(),
      ),
    );
    lists = await listService.getLists();

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

  Future<List<String>> getListNames(String searchText) async {
    if (searchText.length <= 2) return [];
    final formList = await listService.getLists(listName: searchText);
    return formList
        .map((e) => e.listName ?? '')
        .where((e) => e.isNotEmpty)
        .toList();
  }
}
