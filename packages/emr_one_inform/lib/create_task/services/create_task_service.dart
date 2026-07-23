import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/graphql/queries/GetTeams.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getAssets.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getDepotByYardCode.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getFormTemplateJson.graphql.dart';
import 'package:emr_one_inform/graphql/queries/templates.graphql.dart';
import 'package:emr_one_inform/graphql/queries/users.graphql.dart';
import 'package:emr_one_inform/graphql/schema.graphql.dart';
import 'package:emr_one_inform/models/asset.dart';
import 'package:emr_one_inform/models/depot.dart';
import 'package:emr_one_inform/models/depot_query_filter.dart';
import 'package:emr_one_inform/models/schedule_task_models.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';

abstract class ICreateTaskService {
  Future<String?> createScheduledTaskByTemplate(
    ScheduleTaskByTemplateRequest scheduleTaskByTemplateRequest,
  );
  Future<String?> editScheduledTaskByTemplate(
    ScheduleTaskByTemplateRequest scheduleTaskByTemplateRequest,
  );
  Future<List<Depot>> getDepotsByYardCode(DepotQueryFilter filter);
  Future<String?> getFormsTemplateJson(String templateId);
  Future<List<FormsTemplate>> getTemplates(SearchQueryFilter filter);
  Future<List<User>> getUsers(String filter);
  Future<List<Team>> getTeams(String filter);
  Future<List<Asset>> getAssets(String depotNo);
}

class CreateTaskService extends ICreateTaskService {
  CreateTaskService({
    required this.httpClient,
  });

  final ResilientHttpClient httpClient;

  @override
  Future<String?> createScheduledTaskByTemplate(
    ScheduleTaskByTemplateRequest scheduleTaskByTemplateRequest,
  ) async {
    try {
      final response = await httpClient.post(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.workOrder,
        ),
        body: json.encode(scheduleTaskByTemplateRequest),
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body) as String?;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<String?> editScheduledTaskByTemplate(
    ScheduleTaskByTemplateRequest scheduleTaskByTemplateRequest,
  ) async {
    try {
      final response = await httpClient.put(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.workOrder,
        ),
        body: json.encode(scheduleTaskByTemplateRequest),
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body) as String?;
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<List<Depot>> getDepotsByYardCode(DepotQueryFilter filter) async {
    final results = await documentNodeQueryGetDepotByYardCode.execute(
      httpClient,
      Query$GetDepotByYardCode.fromJson,
      variables: Variables$Query$GetDepotByYardCode(
        filter: Input$DepotQueryFilterInput(
          depotNos: filter.depotNos,
          yardCodes: filter.yardCodes,
          searchText: filter.searchText,
        ),
      ),
    );

    if (results.hasErrors()) {
      return <Depot>[];
    }

    if (results.data?.depots.isEmpty ?? true) {
      return <Depot>[];
    }

    return results.data!.depots.map((e) => Depot.fromJson(e.toJson())).toList();
  }

  @override
  Future<String?> getFormsTemplateJson(String templateId) async {
    final results = await documentNodeQueryGetFormTemplateJson.execute(
      httpClient,
      Query$GetFormTemplateJson.fromJson,
      variables: Variables$Query$GetFormTemplateJson(id: templateId),
    );

    if (results.hasErrors() || results.data == null) {
      return null;
    }

    return results.data!.formTemplateJson!.document;
  }

  @override
  Future<List<FormsTemplate>> getTemplates(SearchQueryFilter filter) async {
    final results = await documentNodeQueryTemplates.execute(
      httpClient,
      Query$Templates.fromJson,
      variables: Variables$Query$Templates(
        filter: Input$SearchQueryFilterInput(
          includeAll: filter.includeAll,
          searchText: filter.searchText,
        ),
      ),
    );

    if (results.hasErrors()) {
      return <FormsTemplate>[];
    }

    if (results.data?.formTemplatesByName.isEmpty ?? true) {
      return <FormsTemplate>[];
    }

    return results.data!.formTemplatesByName
        .map((e) => FormsTemplate.fromJson(e.toJson()))
        .toList();
  }

  @override
  Future<List<Team>> getTeams(String filter) async {
    final results = await documentNodeQueryGetTeams.execute(
      httpClient,
      Query$GetTeams.fromJson,
      variables: Variables$Query$GetTeams(teamName: filter),
    );

    if (results.hasErrors()) {
      return [];
    }

    if (results.data == null) {
      return [];
    }

    return results.data!.teams.map((e) => Team.fromJson(e.toJson())).toList();
  }

  @override
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

  @override
  Future<List<Asset>> getAssets(String depotNo) async {
    final result = await documentNodeQueryAssets.execute(
      httpClient,
      Query$Assets.fromJson,
      variables: Variables$Query$Assets(
        filter: Input$AssetQueryFilterInput(depotNos: [depotNo]),
      ),
    );

    if (result.hasErrors() || result.data == null) return [];

    return result.data!.assets.map((e) => Asset.fromJson(e.toJson())).toList();
  }
}
