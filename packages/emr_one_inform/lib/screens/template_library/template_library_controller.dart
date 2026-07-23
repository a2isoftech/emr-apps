import 'package:emr_one_inform/common/date_utility.dart';
import 'package:emr_one_inform/create_task/services/create_task_service.dart';
import 'package:emr_one_inform/create_template/model/client.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/screens/template_library/template_library_models.dart';
import 'package:emr_one_inform/services/interfaces/icommon_service.dart';
import 'package:emr_one_inform/services/template_library_service.dart';

class TemplateLibraryController extends BaseController {
  TemplateLibraryController({
    required this.templateLibraryService,
    required this.createTaskService,
    required this.commonService,
  });

  final TemplateLibraryService templateLibraryService;
  final ICreateTaskService createTaskService;
  final ICommonService commonService;

  List<User> selectedUsers = List.empty(growable: true);
  List<Client> clients = List.empty(growable: true);
  List<String> selectedClients = List.empty(growable: true);
  List<FormsTemplate> masterList = List.empty(growable: true);
  List<FormsTemplate> filteredList = List.empty(growable: true);
  List<PanelParent> filteredPanelParentList = List.empty(growable: true);
  List<String> loadingTemplates = [];
  Team? selectedTeam;
  bool isBusy = false;
  bool isLoadingPreview = false;
  bool isEditing = false;
  FormsTemplate? selectedTemplate;
  bool _isSearchVisible = false;
  bool _isFilterVisible = false;
  SortBy _sortBy = const SortBy(
    fieldName: 'Title',
    sortDirection: SortDirection.ascending,
  );
  String? _filterText;
  int templateCount = 0;
  bool _isSearchResult = false;
  int expandedPanel = -1;
  String? versionVisibleId;
  bool templateSelectedFromPanel = false;
  DateTime? effectiveDate;

  bool isCategoriesExpanded = true;

  KeyValuePair<String, dynamic>? _searchState;

  KeyValuePair<String, dynamic>? get searchState => _searchState;

  void searchStateChanged(KeyValuePair<String, dynamic> searchState) {
    _searchState = searchState;
    notifyListeners();
  }

  Future<List<FormsTemplate>> getTemplates({
    required SearchQueryFilter filter,
  }) async {
    final masterList = await templateLibraryService.getTemplates(
      filter: SearchQueryFilter(
        searchText: filter.searchText,
        includeAll: filter.includeAll,
        clientNames: filter.clientNames,
        startDate: filter.startDate,
        endDate: filter.endDate,
      ),
    );
    this.masterList = masterList;
    templateCount = masterList.length;
    return this.masterList;
  }

  Future<String?> getTemplateJson({
    required String templateId,
  }) async {
    final results = await templateLibraryService.getFormsTemplateJson(
      templateId: templateId,
    );
    return results;
  }

  Future<void> getClients() async {
    isBusy = true;
    notifyListeners();

    clients = await templateLibraryService.getClients();

    isBusy = false;
    notifyListeners();
  }

  Future<void> getTemplatesByDate({
    required SearchQueryFilter filter,
  }) async {
    isBusy = true;
    notifyListeners();

    masterList = await templateLibraryService.getTemplates(
      filter: SearchQueryFilter(
        searchText: filter.searchText,
        includeAll: filter.includeAll,
        clientNames: filter.clientNames,
        startDate: filter.startDate,
        endDate: filter.endDate,
        jobId: filter.jobId,
        assetCode: filter.assetCode,
        createdBy: filter.createdBy,
      ),
    );
    filteredList = masterList;
    templateCount = masterList.length;
    _mapFilteredListToPanel(masterList);

    isBusy = false;
    notifyListeners();
  }

  void _mapFilteredListToPanel(List<FormsTemplate> masterList) {
    filteredPanelParentList.clear();

    if (selectedClients.isEmpty) {
      var clientFromSearchResult =
          masterList.map((e) => e.clientName ?? '').toList();
      clientFromSearchResult = clientFromSearchResult.toSet().toList();
      selectedClients.addAll(clientFromSearchResult);
    }

    for (var i = 0; i < selectedClients.length; i++) {
      final filteredPanelChildList = List<PanelChild>.empty(growable: true);
      var clientTemplates =
          masterList.where((c) => c.clientName == selectedClients[i]).toList();

      clientTemplates = _applySorting(clientTemplates);
      if (filterText != null) {
        clientTemplates = clientTemplates
            .where(
              (element) =>
                  element.title == filterText ||
                  element.clientName == filterText ||
                  element.createdBy == filterText,
            )
            .toList();
      }

      for (var i = 0; i < clientTemplates.length; i++) {
        final panelChild = PanelChild(
          templateId: clientTemplates[i].id,
          templateTitle: clientTemplates[i].title,
          referenceId: clientTemplates[i].referenceId!,
          clientName: clientTemplates[i].clientName!,
          createdDate: clientTemplates[i].createDate!,
          createdBy: clientTemplates[i].createdBy!,
          versions: clientTemplates[i].versions,
          isDigitalSignatureRequired:
              clientTemplates[i].isDigitalSignatureRequired,
          validateBySignature: clientTemplates[i].validateBySignature,
          validateByWorkOrder: clientTemplates[i].validateByWorkOrder,
          validateFrom: clientTemplates[i].validateFrom,
          isEmailNotificationRequired:
              clientTemplates[i].isEmailNotificationRequired,
          sendEmailOnFailedQuestions:
              clientTemplates[i].sendEmailOnFailedQuestions,
          emailIds: clientTemplates[i].emailIds,
          assignFailedQuestionToTeam:
              clientTemplates[i].assignFailedQuestionToTeam,
          assignFailedQuestionToTeamId:
              clientTemplates[i].assignFailedQuestionToTeamId,
          isPublished: clientTemplates[i].isPublished,
        );
        filteredPanelChildList.add(panelChild);
      }
      filteredPanelParentList.add(
        PanelParent(
          clientName: selectedClients[i],
          clientTemplateCount: clientTemplates.length,
          totalTemplateCount: masterList.length,
          panelChild: filteredPanelChildList,
          expanded: i == expandedPanel,
        ),
      );
    }
  }

  void setSelectedClients(String clientName) {
    if (selectedClients.contains(clientName)) {
      selectedClients.remove(clientName);
    } else {
      selectedClients.add(clientName);
    }
    notifyListeners();
  }

  void setFilter(String templateTitle) {
    filteredList =
        masterList.where((element) => element.title == templateTitle).toList();
    notifyListeners();
  }

  bool get isSearchVisible => _isSearchVisible;

  bool get isFilterVisible => _isFilterVisible;

  bool get isSearchResult => _isSearchResult;

  SortBy get sortBy => _sortBy;

  String? get filterText => _filterText;

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

  void setSearchResultMode({required bool isSearchResult}) {
    _isSearchResult = isSearchResult;
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
    _mapFilteredListToPanel(filteredList);
    reload();
  }

  @override
  void reload() {
    var masterListToFilter = masterList;
    masterListToFilter = _applySorting(masterList);
    if (filterText != null) {
      masterListToFilter = masterListToFilter
          .where(
            (element) =>
                element.title == filterText ||
                element.clientName == filterText ||
                element.createdBy == filterText,
          )
          .toList();
    }

    filteredList = masterListToFilter;
    super.reload();
  }

  List<FormsTemplate> _applySorting(List<FormsTemplate> jobs) {
    switch (sortBy.fieldName) {
      case 'Client':
        if (sortBy.sortDirection == SortDirection.ascending) {
          jobs.sort(
            (x, y) => x.clientName!.compareTo(y.clientName!),
          );
        } else {
          jobs.sort(
            (x, y) => y.clientName!.compareTo(x.clientName!),
          );
        }
      case 'Created By':
        if (sortBy.sortDirection == SortDirection.ascending) {
          jobs.sort(
            (x, y) => x.createdBy!.compareTo(y.createdBy!),
          );
        } else {
          jobs.sort(
            (x, y) => y.createdBy!.compareTo(x.createdBy!),
          );
        }
      case 'Date':
        if (sortBy.sortDirection == SortDirection.ascending) {
          jobs.sort(
            (x, y) => x.createDate!.compareTo(y.createDate!),
          );
        } else {
          jobs.sort(
            (x, y) => y.createDate!.compareTo(x.createDate!),
          );
        }
      case 'Title':
        if (sortBy.sortDirection == SortDirection.ascending) {
          jobs.sort(
            (x, y) => x.title.compareTo(y.title),
          );
        } else {
          jobs.sort(
            (x, y) => y.title.compareTo(x.title),
          );
        }
    }
    return jobs;
  }

  void setFilterText(String? filter) {
    _filterText = filter;
    if (isSearchResult) {
      _mapFilteredListToPanel(masterList);
      notifyListeners();
    } else {
      reload();
    }
  }

  void updateChipButton(FormsTemplate? template) {
    if (template != null) {
      filteredList
          .where((element) => element.id == template.id)
          .take(1)
          .forEach((element) {
        element.validateBySignature = template.validateBySignature;
        element.isDigitalSignatureRequired =
            template.isDigitalSignatureRequired;
        element.isEmailNotificationRequired =
            template.isEmailNotificationRequired;
        element.sendEmailOnFailedQuestions =
            template.sendEmailOnFailedQuestions;
        element.validateByWorkOrder = template.validateByWorkOrder;
        element.assignFailedQuestionToTeamId =
            template.assignFailedQuestionToTeamId;
        element.assignFailedQuestionToTeam =
            template.assignFailedQuestionToTeam;
        element.isPublished = template.isPublished;
        element.emailIds = template.emailIds;
      });
      if (filteredPanelParentList.isNotEmpty) {
        final listChilds = filteredPanelParentList
            .map(
              (parent) =>
                  parent.panelChild.where((x) => x.templateId == template.id),
            )
            .toList()
            .firstOrNull;
        if (listChilds != null) {
          final element = listChilds.firstOrNull;
          if (element != null) {
            element.validateBySignature = template.validateBySignature;
            element.isDigitalSignatureRequired =
                template.isDigitalSignatureRequired;
            element.isEmailNotificationRequired =
                template.isEmailNotificationRequired;
            element.sendEmailOnFailedQuestions =
                template.sendEmailOnFailedQuestions;
            element.validateByWorkOrder = template.validateByWorkOrder;
            element.assignFailedQuestionToTeamId =
                template.assignFailedQuestionToTeamId;
            element.assignFailedQuestionToTeam =
                template.assignFailedQuestionToTeam;
            element.emailIds = template.emailIds;
            element.isPublished = template.isPublished;
          }
        }
      }
    }
    notifyListeners();
  }

  Future<bool> patchTemplate(PatchTemplate value) async {
    try {
      loadingTemplates.add(value.templateId);
      notifyListeners();

      final result = await templateLibraryService.patchTemplate(value);
      if (!result) return result;
      return true;
    } catch (e) {
      return false;
    } finally {
      loadingTemplates.remove(value.templateId);
      notifyListeners();
    }
  }

  Future<List<User>> getUsers(String filter) async {
    return createTaskService.getUsers(filter);
  }

  Future<List<String>> getUserNames(String filter) async {
    return commonService.getUsers(filter);
  }

  Future<List<String>> getWorkOrderIds(String filter) async {
    return commonService
        .getWorkOrderIds(searchText: filter, stateIds: [1, 2, 4]);
  }

  Future<List<Team>> getTeams(String searchText) async {
    return templateLibraryService.getTeams(searchText);
  }

  Future<void> loadTemplates() async {
    if (_isSearchResult) {
      if (searchState == null) return;

      DateTime? startDate;
      DateTime? endDate;

      if (searchState!.key == 'date') {
        final dateRange = DateUtility.getSelectedDateRange(
          searchState!.value as SelectedDates,
        );
        startDate = dateRange.start.toUtc();
        endDate = dateRange.end.toUtc();
      }

      await getTemplatesByDate(
        filter: SearchQueryFilter(
          includeAll: true,
          startDate: startDate,
          endDate: endDate,
          clientNames: searchState!.key == 'workOrderId' ||
                  searchState!.key == 'assetCode' ||
                  searchState!.key == 'createdBy'
              ? null
              : selectedClients,
          jobId: searchState!.key == 'workOrderId'
              ? searchState!.value as String?
              : null,
          assetCode: searchState!.key == 'assetCode'
              ? searchState!.value as String?
              : null,
          createdBy: searchState!.key == 'createdBy'
              ? searchState!.value as String?
              : null,
        ),
      );
    } else {
      if (filteredList.firstOrNull?.title.isEmpty ?? true) return;
      final title = filteredList.first.title;
      await getTemplates(
        filter: SearchQueryFilter(
          includeAll: true,
          clientNames: selectedClients,
          searchText: title,
        ),
      );
    }
  }

  Future<void> clearSearch() async {
    isBusy = true;
    notifyListeners();

    _filterText = null;
    _isSearchResult = true;

    filteredList.clear();
    masterList.clear();
    selectedClients.clear();
    _searchState = null;

    isBusy = false;
    notifyListeners();
  }
}
