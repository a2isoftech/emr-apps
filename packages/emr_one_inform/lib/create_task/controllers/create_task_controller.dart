import 'dart:async';

import 'package:emr_one_inform/constants/strings.dart';
import 'package:emr_one_inform/create_task/services/create_task_service.dart';
import 'package:emr_one_inform/create_template/model/create_form_list.dart';
import 'package:emr_one_inform/globals.dart' as globals;
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/services/form_list_service.dart';
import 'package:emr_one_inform/services/interfaces/ilanding_page_service.dart';
import 'package:emr_one_inform/widgets/inform_multiple_yard_depot_selector.dart';

class CreateTaskController extends BaseController {
  CreateTaskController({
    required this.createTaskService,
    required this.landingPageService,
    required this.formListService,
  });

  final ICreateTaskService createTaskService;
  final FormListService formListService;
  final ILandingPageService landingPageService;

  bool isBusy = false;
  List<Depot> depotsByYard = List.empty(growable: true);
  List<Asset> assetsForDepot = List.empty(growable: true);
  List<FormList> jobTradeFormList = List.empty(growable: true);
  bool isLoadingPreview = false;
  bool isQuickTemplateSelected = false;
  bool isChooseTemplateSelected = false;
  bool showExistingNotes = false;

  Yard? yard;
  String? workOrderId;
  String templateId = '';
  String selectedTeam = '';
  String selectedTeamId = '';
  String selectedUser = '';
  String selectedAsset = '';
  String selectedJobTrade = '';
  bool isRepeatable = false;
  String description = '';
  String? notes;
  String? existingNotes;
  DateTime startDate = DateTime.now();
  DateTime dueDate = DateTime.now();
  DateTime? repeatEndDate;
  RepeatOptions? selectedRepeatOption;
  int selectedJobPriority = 1;
  int? repeatFrequency = 1;
  int? repeatType = 1;
  int workingDays = 127;
  String? createdWorkOrderId = '';
  bool isValid = false;
  bool assignToSameUser = false;
  bool isDigitalSignatureRequired = false;
  bool isDigitalSignatureRequiredByTemplate = false;
  int userCount = -1;
  int teamCount = -1;
  List<User>? usersInTeam;

  List<Depot> selectedDepots = List.empty(growable: true);
  List<Yard> selectedYards = List.empty(growable: true);
  List<Asset> assets = List.empty(growable: true);
  List<KeyValuePair<int, String>> jobPriorities = [
    KeyValuePair<int, String>(key: 1, value: JobPriority.Low),
    KeyValuePair<int, String>(key: 2, value: JobPriority.Medium),
    KeyValuePair<int, String>(key: 3, value: JobPriority.High),
    KeyValuePair<int, String>(key: 4, value: JobPriority.Critical),
    KeyValuePair<int, String>(key: 5, value: JobPriority.Urgent),
  ];

  SelectedYardsAndDepots selectedYardAndDepots =
      SelectedYardsAndDepots(yards: [], depots: []);

  RepeatInterval? selectedRepeatInterval;

  List<String> dateValidationMessages = [
    FormAppStringLiteral.StartDateValidation,
    FormAppStringLiteral.DueDateValidation,
    FormAppStringLiteral.StartDateAfterDueDateMessage,
    FormAppStringLiteral.DueDateBeforeStartDateMessage,
  ];

  Future<String?> createTask({required bool isEdit}) async {
    isBusy = true;
    notifyListeners();

    final scheduleTaskByTemplateRequest = ScheduleTaskByTemplateRequest(
      yardCodes: selectedYards.map((e) => e.yardCode!).toList(),
      depotNos: selectedDepots.map((e) => e.depotNo!).toList(),
      templateId: templateId,
      assignedTo: selectedUser,
      assetCode: selectedAsset,
      jobTrade: selectedJobTrade,
      startDate: startDate.toUtc(),
      dueDate: dueDate.toUtc(),
      isRepeatable: isRepeatable,
      repeatFrequency: repeatFrequency ?? 0,
      repeatType: repeatType ?? 1,
      repeatEndDate: repeatEndDate?.toUtc(),
      repeatAssignedTo: assignToSameUser ? selectedUser : null,
      workOrderDescription: description,
      createInD365: false,
      assignedTypeId: 1,
      createWithQuickTemplate: isQuickTemplateSelected,
      isDigitalSignatureRequired: isDigitalSignatureRequired,
      workOrderId: workOrderId,
      workingDays: workingDays,
      notes: _getNotes(),
      jobPriority: selectedJobPriority,
      assignedToTeam: selectedTeam,
      assignedToTeamId: selectedTeamId,
    );

    if (isEdit) {
      createdWorkOrderId = await createTaskService.editScheduledTaskByTemplate(
        scheduleTaskByTemplateRequest,
      );
    } else {
      createdWorkOrderId =
          await createTaskService.createScheduledTaskByTemplate(
        scheduleTaskByTemplateRequest,
      );
    }

    final counts =
        await landingPageService.getAllJobsCount(yardCode: yard!.yardCode);
    globals.InformJobs.allJobsCounts = counts;

    isBusy = false;
    notifyListeners();
    return null;
  }

  Future<String?> getFormsTemplateJson(String templateId) async {
    return createTaskService.getFormsTemplateJson(templateId);
  }

  Future<List<User>> getUsers(String filter) async {
    if (usersInTeam == null) {
      if (filter.length <= 2) return [];
      final users = await createTaskService.getUsers(filter);

      notifyListeners();
      return users;
    }

    return usersInTeam!
        .where(
          (e) => e.displayName.toLowerCase().contains(filter.toLowerCase()),
        )
        .toList();
  }

  Future<List<Team>> getTeams(String filter) async {
    return createTaskService.getTeams(filter);
  }

  FutureOr<Iterable<String?>> getFormListForJobTrades(
    String searchText,
  ) async {
    if (jobTradeFormList.isEmpty) {
      jobTradeFormList = await formListService.getLists(listName: 'Job Trades');
    }
    final jobTradesString = jobTradeFormList.first.listValues;
    return jobTradesString!.split(',').where(
          (element) => element.toLowerCase().contains(searchText.toLowerCase()),
        );
  }

  Future<void> setSelectedTeam(Team? selectedTeam) async {
    isBusy = true;
    reload();

    if (selectedTeam == null) {
      usersInTeam = null;
    } else {
      usersInTeam = List<User>.empty(growable: true);
      for (final teamMember in selectedTeam.teamMembers!) {
        final users = await createTaskService.getUsers(teamMember.userUuid!);
        if (users.isNotEmpty) usersInTeam!.add(users.first);
      }
    }

    isBusy = false;
    reload();
  }

  void setIsRepeatable({required bool repeated}) {
    isRepeatable = repeated;
    notifyListeners();
  }

  void setIsValid() {
    if (selectedYards.isEmpty ||
        description.isEmpty ||
        (!isQuickTemplateSelected && !isChooseTemplateSelected) ||
        (isChooseTemplateSelected && templateId.isEmpty)) {
      isValid = false;
    } else {
      isValid = true;
    }
    notifyListeners();
  }

  void setIsDigitalSignatureRequired({required bool value}) {
    isDigitalSignatureRequired = value;
    notifyListeners();
  }

  void onQuickTemplate() {
    isChooseTemplateSelected = false;
    templateId = '';
    isQuickTemplateSelected = true;
    setIsValid();
  }

  void onChooseTemplate() {
    isQuickTemplateSelected = false;
    isChooseTemplateSelected = true;
    setIsValid();
  }

  Future<void> onYardAndDepotChanged(SelectedYardsAndDepots state) async {
    selectedYardAndDepots = state;

    selectedYards = state.yards;
    selectedDepots = state.depots;

    if (selectedDepots.length == 1) {
      assets = await createTaskService.getAssets(selectedDepots.first.depotNo!);
    }
    setIsValid();
  }

  FutureOr<Iterable<Asset?>> getAssets(String searchText) {
    if (selectedDepots.length != 1) return const Iterable<Asset>.empty();
    return assets
        .where(
          (e) => e.assetCode.toLowerCase().contains(searchText.toLowerCase()),
        )
        .toList();
  }

  bool isAtleastOneDepotSelectedInEachYard() {
    return getYardsWithoutDepots().isNotEmpty;
  }

  bool isUserAllocated() {
    return selectedUser != '';
  }

  void assignFirstUser() {
    if (selectedUser == '' && usersInTeam != null && usersInTeam!.isNotEmpty) {
      selectedUser = usersInTeam!.first.displayName;
    }
  }

  Future<void> selectAllDepotsForMissedYards() async {
    final yardCodes = getYardsWithoutDepots();
    if (yardCodes.isNotEmpty) {
      final depots = await createTaskService
          .getDepotsByYardCode(DepotQueryFilter(yardCodes: yardCodes));
      selectedDepots.addAll(depots);
    }
  }

  List<String> getYardsWithoutDepots() {
    final yardsInDepots = selectedDepots.map((e) => e.yardCode!).toSet();

    return selectedYards
        .map((e) => e.yardCode!)
        .toSet()
        .difference(yardsInDepots)
        .toList();
  }

  String? _getNotes() {
    if ((existingNotes?.isEmpty ?? true) && (notes?.isEmpty ?? true)) {
      return null;
    }

    if (existingNotes?.isNotEmpty ?? false) {
      if (notes?.isNotEmpty ?? false) {
        return '$existingNotes\n$notes';
      } else {
        return existingNotes;
      }
    } else {
      if (notes?.isNotEmpty ?? false) {
        return notes;
      } else {
        return null;
      }
    }
  }
}
