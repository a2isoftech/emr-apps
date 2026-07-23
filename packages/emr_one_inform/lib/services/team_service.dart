import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/graphql/queries/GetTeamById.graphql.dart';
import 'package:emr_one_inform/graphql/queries/GetTeams.graphql.dart';
import 'package:emr_one_inform/graphql/queries/users.graphql.dart';
import 'package:emr_one_inform/models/api_result.dart';
import 'package:emr_one_inform/models/schedule_task_models.dart';
import 'package:emr_one_inform/screens/team/add_team/add_team_model.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';

abstract class ITeamService {}

class TeamService implements ITeamService {
  TeamService({
    required this.httpClient,
  });

  final ResilientHttpClient httpClient;

  Future<List<Team>> getTeams({
    DateTime? startDate,
    DateTime? endDate,
    String? teamName,
    String? createdBy,
    String? teamMember,
  }) async {
    final result = await documentNodeQueryGetTeams.execute(
      httpClient,
      Query$GetTeams.fromJson,
      variables: Variables$Query$GetTeams(
        startDate: startDate?.toIso8601String(),
        endDate: endDate?.toIso8601String(),
        teamName: teamName,
        createdBy: createdBy,
        teamMember: teamMember,
      ),
    );

    if (result.hasErrors()) return [];

    if (result.data == null) return [];

    return result.data!.teams.map((e) => Team.fromJson(e.toJson())).toList();
  }

  Future<bool> createTeam({
    required CreateTeamRequest createTeamRequest,
  }) async {
    try {
      final response = await httpClient.post(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.teams,
        ),
        body: json.encode(createTeamRequest),
      );

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updateTeam({
    required UpdateTeamRequest updateTeamRequest,
  }) async {
    try {
      final response = await httpClient.put(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.teams,
        ),
        body: json.encode(updateTeamRequest),
      );

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<APIResult?> deleteTeam(
    DeleteTeamRequest deleteListRequest,
  ) async {
    final response = await httpClient.delete(
      Uri(
        scheme: httpClient.getUri().scheme,
        host: httpClient.getUri().host,
        port: httpClient.getUri().port,
        path: FormAppApiPath.teams,
      ),
      body: json.encode(deleteListRequest),
    );
    if (response.statusCode == 200) {
      final apiResult = APIResult.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return apiResult;
    }
    return null;
  }

  Future<Team?> getTeamById({required String teamId}) async {
    final result = await documentNodeQueryGetTeamById.execute(
      httpClient,
      Query$GetTeamById.fromJson,
      variables: Variables$Query$GetTeamById(id: teamId),
    );

    if (result.hasErrors() || result.data == null) return null;

    return Team.fromJson(result.data!.teamById!.toJson());
  }

  Future<List<User>> getUsers(String filter) async {
    final results = await documentNodeQueryUsers.execute(
      httpClient,
      Query$Users.fromJson,
      variables: Variables$Query$Users(filter: filter),
    );

    if (results.hasErrors() || results.data == null) {
      return [];
    }

    return results.data!.users.map((e) => User.fromJson(e.toJson())).toList();
  }
}
