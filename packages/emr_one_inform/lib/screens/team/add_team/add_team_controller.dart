import 'package:emr_one_inform/models/schedule_task_models.dart' as user;
import 'package:emr_one_inform/screens/base/base_controller.dart';
import 'package:emr_one_inform/screens/team/add_team/add_team_model.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';
import 'package:emr_one_inform/services/team_service.dart';
import 'package:flutter/material.dart';

class AddTeamController extends BaseController {
  AddTeamController({
    required this.teamService,
  });

  final TeamService teamService;

  bool isBusy = false;
  bool isValid = false;

  String? uuid;
  String teamName = '';
  bool isActive = true;
  Team? team;
  late List<TeamMember> teamMembers = List.empty(growable: true);

  Future<List<user.User>> getUsers(String user) async {
    return teamService.getUsers(user);
  }

  bool isFormValid() {
    final status = teamName != '' && teamMembers.isNotEmpty;
    debugPrint(status.toString());
    return status;
  }

  void setTeamName(String? newTeamName) {
    teamName = newTeamName ?? '';
    notifyListeners();
  }

  void setTeamNameDeleted({required bool teamIsActive}) {
    isActive = teamIsActive;
    notifyListeners();
  }

  Future<void> saveTeam() async {
    isBusy = true;
    notifyListeners();

    if (uuid == null) {
      await teamService.createTeam(
        createTeamRequest: CreateTeamRequest(
          name: teamName,
          teamMembers: teamMembers,
        ),
      );
    } else {
      await teamService.updateTeam(
        updateTeamRequest: UpdateTeamRequest(
          uuid: uuid,
          name: teamName,
          teamMembers: teamMembers,
          isActive: isActive,
        ),
      );
    }

    isBusy = false;
    notifyListeners();
  }

  Future<void> getTeamById({required String teamId}) async {
    isBusy = true;
    notifyListeners();

    team = await teamService.getTeamById(teamId: teamId);

    uuid = team!.uuid;
    setTeamName(team?.name);
    if (team?.teamMembers?.isNotEmpty ?? false) {
      teamMembers.clear();
      teamMembers.addAll(team!.teamMembers!);
    }
    setTeamNameDeleted(teamIsActive: team!.isActive ?? false);

    isBusy = false;
    notifyListeners();
  }
}
