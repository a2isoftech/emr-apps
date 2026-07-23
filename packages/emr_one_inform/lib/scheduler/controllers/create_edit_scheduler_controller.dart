import 'package:emr_one_inform/create_task/services/create_task_service.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/scheduler/models/schedule_record.dart';
import 'package:emr_one_inform/scheduler/services/scheduler_service.dart';
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/services/select_yard_service.dart';
import 'package:emr_one_inform/widgets/inform_multiple_yard_depot_selector.dart';

class CreateEditSchedulerController extends BaseController {
  CreateEditSchedulerController({
    required this.service,
    required this.selectYardService,
    required this.createTaskService,
    required this.userPreferencesRepository,
  });
  final SchedulerService service;
  final SelectYardService selectYardService;
  final ICreateTaskService createTaskService;
  final IUserPreferencesRepository userPreferencesRepository;

  bool isBusy = false;

  List<Yard> selectedYards = List.empty(growable: true);
  List<Depot> selectedDepots = List.empty(growable: true);

  List<User>? usersInTeam;

  Future<bool> save(ScheduleRecord scheduleRecord) async {
    isBusy = true;
    reload();
    return service.save(scheduleRecord);
  }

  Future<bool> create(ScheduleRecord scheduleRecord) async {
    isBusy = true;
    reload();
    return service.create(scheduleRecord);
  }

  Future<List<Team>> getTeams(String filter) async {
    return createTaskService.getTeams(filter);
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

  void onYardsAndDepotChanged(SelectedYardsAndDepots state) {
    selectedYards = state.yards;
    selectedDepots = state.depots;

    notifyListeners();
  }

  bool isAtleastOneDepotSelectedInEachYard() {
    return getYardsWithoutDepots().isNotEmpty;
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
}
