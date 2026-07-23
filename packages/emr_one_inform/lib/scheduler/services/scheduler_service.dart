import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/graphql/queries/GetScheduleDescriptions.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getDepotByYard.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getSchedules.graphql.dart';
import 'package:emr_one_inform/graphql/schema.graphql.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/scheduler/models/patch_schedule.dart';
import 'package:emr_one_inform/scheduler/models/schedule_filter.dart';
import 'package:emr_one_inform/scheduler/models/schedule_record.dart';

class SchedulerService {
  SchedulerService({required this.httpClient});

  final ResilientHttpClient httpClient;

  Future<List<ScheduleRecord>> getSchedules(
    ScheduleFilter scheduleFilter,
  ) async {
    final result = await documentNodeQueryGetSchedules.execute(
      httpClient,
      Query$GetSchedules.fromJson,
      variables: Variables$Query$GetSchedules(
        filter: Input$ScheduleFilterInput(
          createDateStart: scheduleFilter.createdDateStart?.toIso8601String(),
          createDateEnd: scheduleFilter.createdDateEnd?.toIso8601String(),
          description: scheduleFilter.description,
          isActive: scheduleFilter.isActive,
        ),
      ),
    );

    if (result.data == null) return [];

    return result.data!.schedules
        .map((e) => ScheduleRecord.fromJson(e.toJson()))
        .toList();
  }

  Future<List<String>> getScheduleDescriptions(
    ScheduleFilter scheduleFilter,
  ) async {
    final result = await documentNodeQueryGetScheduleDescriptions.execute(
      httpClient,
      Query$GetScheduleDescriptions.fromJson,
      variables: Variables$Query$GetScheduleDescriptions(
        filter: Input$ScheduleFilterInput(
          description: scheduleFilter.description,
        ),
      ),
    );

    if (result.data == null) return [];

    return result.data!.schedules.map((e) => e.description).toList();
  }

  Future<bool> create(ScheduleRecord scheduleRecord) async {
    final response = await httpClient.post(
      Uri(
        scheme: httpClient.getUri().scheme,
        host: httpClient.getUri().host,
        port: httpClient.getUri().port,
        path: FormAppApiPath.schedule,
      ),
      body: jsonEncode(scheduleRecord),
    );

    if (response.statusCode != 200) return false;
    if (response.body != 'true') {
      final apiResponse = jsonDecode(response.body) as Map<String, dynamic>;
      if (apiResponse['errorCode'] != null) return false;
    }
    return true;
  }

  Future<bool> save(ScheduleRecord scheduleRecord) async {
    final response = await httpClient.put(
      Uri(
        scheme: httpClient.getUri().scheme,
        host: httpClient.getUri().host,
        port: httpClient.getUri().port,
        path: FormAppApiPath.schedule,
      ),
      body: jsonEncode(scheduleRecord),
    );

    if (response.statusCode != 200) return false;
    if (response.body != 'true') {
      final apiResponse = jsonDecode(response.body) as Map<String, dynamic>;
      if (apiResponse['errorCode'] != null) return false;
    }
    return true;
  }

  Future<bool> patchSchedule(PatchSchedule patchSchedule) async {
    final response = await httpClient.patch(
      Uri(
        scheme: httpClient.getUri().scheme,
        host: httpClient.getUri().host,
        port: httpClient.getUri().port,
        path: FormAppApiPath.schedule,
      ),
      body: jsonEncode(patchSchedule),
    );

    if (response.statusCode != 200) return false;
    if (response.body != 'true') {
      final apiResponse = jsonDecode(response.body) as Map<String, dynamic>;
      if (apiResponse['errorCode'] != null) return false;
    }
    return true;
  }

  Future<List<Depot>> getDepotsByYard(DepotQueryFilter filter) async {
    final result = await documentNodeQueryGetDepotByYard.execute(
      httpClient,
      Query$GetDepotByYard.fromJson,
      variables: Variables$Query$GetDepotByYard(
        filter: Input$DepotQueryFilterInput(yardCodes: filter.yardCodes),
      ),
    );

    if (result.hasErrors()) {
      return <Depot>[];
    }

    if (result.data?.depots.isEmpty ?? true) {
      return <Depot>[];
    }

    return result.data!.depots.map((e) => Depot.fromJson(e.toJson())).toList();
  }
}
