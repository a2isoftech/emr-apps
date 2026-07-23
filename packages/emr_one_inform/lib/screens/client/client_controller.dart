import 'package:emr_one_inform/models/category.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/screens/add_client/add_client_model.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/services/client_service.dart';

class ClientController extends BaseController {
  ClientController({
    required this.clientService,
  });

  final ClientService clientService;

  bool isBusy = false;
  bool isLoading = false;
  bool _isSearchVisible = false;
  bool _isFilterVisible = false;
  bool get isSearchVisible => _isSearchVisible;
  bool get isFilterVisible => _isFilterVisible;
  List<Category> clients = List.empty(growable: true);
  List<Category> filteredClients = List.empty(growable: true);
  SortBy _sortBy = const SortBy(
    fieldName: 'Name',
    sortDirection: SortDirection.ascending,
  );
  SortBy get sortBy => _sortBy;
  String? _filterText;
  String? get filterText => _filterText;
  String _selectedFilterByOption = 'D365';
  String get selectedFilterByOption => _selectedFilterByOption;
  final List<String> _filterChips = List.empty(growable: true);
  List<String> get filterChips => _filterChips;
  String _selectedClient = '';
  String get selectedClient => _selectedClient;
  List<String> selectedFilterChip = List.empty(growable: true);

  KeyValuePair<String, dynamic>? _searchState;

  KeyValuePair<String, dynamic>? get searchState => _searchState;

  void searchStateChanged(KeyValuePair<String, dynamic> searchState) {
    _searchState = searchState;
    notifyListeners();
  }

  Future<void> getClients() async {
    isBusy = true;
    notifyListeners();

    if (searchState == null) {
      clients = await clientService.getClients();
    } else {
      clients = await clientService.getClients(
        clientName: searchState!.key == 'clientName'
            ? searchState!.value as String?
            : null,
        isEditable: searchState!.key == 'isEditable'
            ? searchState!.value == 'Yes'
                ? true
                : searchState!.value == 'No'
                    ? false
                    : null
            : null,
        isD365: searchState!.key == 'isD365'
            ? searchState!.value == 'Yes'
                ? true
                : searchState!.value == 'No'
                    ? false
                    : null
            : null,
        canSchedule: searchState!.key == 'canSchedule'
            ? searchState!.value == 'Yes'
                ? true
                : searchState!.value == 'No'
                    ? false
                    : null
            : null,
      );
    }

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
    var clientListToFilterAndSort = clients;
    clientListToFilterAndSort = _applySorting(clients);
    if (filterText != null) {
      clientListToFilterAndSort = clients
          .where(
            (element) =>
                element.title!.toLowerCase().trim() ==
                filterText!.toLowerCase().trim(),
          )
          .toList();
    }
    if (selectedFilterChip.isNotEmpty) {
      if (selectedFilterChip.contains('D365') &&
          selectedFilterChip.contains('Non-D365') &&
          selectedFilterChip.contains('Deleted')) {
      } else if (selectedFilterChip.contains('D365')) {
        clientListToFilterAndSort =
            clientListToFilterAndSort.where((e) => e.isD365!).toList();
      } else if (selectedFilterChip.contains('Non-D365')) {
        clientListToFilterAndSort =
            clientListToFilterAndSort.where((e) => e.isD365! != true).toList();
      } else if (selectedFilterChip.contains('Deleted')) {
        clientListToFilterAndSort = clientListToFilterAndSort
            .where((e) => e.isActive! != true)
            .toList();
      }
    }

    filteredClients = clientListToFilterAndSort;
    super.reload();
  }

  List<Category> _applySorting(List<Category> clients) {
    switch (sortBy.fieldName) {
      case 'Name':
        if (sortBy.sortDirection == SortDirection.ascending) {
          clients.sort(
            (x, y) => x.title!.compareTo(y.title!),
          );
        } else {
          clients.sort(
            (x, y) => y.title!.compareTo(x.title!),
          );
        }
      case 'D365':
        if (sortBy.sortDirection == SortDirection.ascending) {
          clients.sort(
            (x, y) => x.isD365!.toString().compareTo(y.isD365!.toString()),
          );
        } else {
          clients.sort(
            (x, y) => y.isD365!.toString().compareTo(x.isD365!.toString()),
          );
        }
      case 'Non D365':
        if (sortBy.sortDirection == SortDirection.descending) {
          clients.sort(
            (x, y) => x.isD365!.toString().compareTo(y.isD365!.toString()),
          );
        } else {
          clients.sort(
            (x, y) => y.isD365!.toString().compareTo(x.isD365!.toString()),
          );
        }
      case 'Deleted':
        if (sortBy.sortDirection == SortDirection.ascending) {
          clients.sort(
            (x, y) => x.isActive!.toString().compareTo(y.isActive!.toString()),
          );
        } else {
          clients.sort(
            (x, y) => y.isActive!.toString().compareTo(x.isActive!.toString()),
          );
        }
    }
    return clients;
  }

  Future<void> deleteClient({
    required Category client,
  }) async {
    isBusy = true;
    notifyListeners();

    await clientService.createOrUpdateClient(
      SaveClientRequest(
        id: client.id,
        title: client.title,
        isEditable: client.isEditable,
        isD365: client.isD365,
        isActive: false,
        canSchedule: client.canSchedule,
      ),
    );
    clients = await clientService.getClients();

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

  void setSelectedClient(String selectedClient) {
    _selectedClient = selectedClient;
    reload();
  }

  Future<List<String>> getClientNames(String searchText) async {
    if (searchText.length <= 2) return [];
    final formList = await clientService.getClients(clientName: searchText);
    return formList
        .map((e) => e.title ?? '')
        .where((e) => e.isNotEmpty)
        .toList();
  }
}
