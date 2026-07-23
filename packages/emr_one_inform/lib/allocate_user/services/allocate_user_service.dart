import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/allocate_user/models/allocate_user_job.dart';
import 'package:emr_one_inform/allocate_user/services/interfaces/i_allocate_user_service.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/graphql/queries/GetTeams.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getJobFormsForYard.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getScheduledJobFormsForYard.graphql.dart';
import 'package:emr_one_inform/graphql/queries/users.graphql.dart';
import 'package:emr_one_inform/models/assign_work_order_to_user_request.dart';
import 'package:emr_one_inform/models/paginated_result.dart';
import 'package:emr_one_inform/models/schedule_task_models.dart';
import 'package:emr_one_inform/models/unallocate_user_team_from_job.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';

class AllocateUserService extends IAllocateUserService {
  AllocateUserService({required this.httpClient});

  final ResilientHttpClient httpClient;

  Future<PaginatedResult<List<AllocateUserJob>>?> getInProgressJobs(
    String yardCode,
    DateTime? startDate,
    DateTime? endDate,
    String? assetCode,
    String? jobId,
    int first,
    String? after,
  ) async {
    final results = await documentNodeQueryGetJobFormsForYard.execute(
      httpClient,
      Query$GetJobFormsForYard.fromJson,
      variables: Variables$Query$GetJobFormsForYard(
        firstIn: first,
        afterIn: after,
        yardCode: yardCode,
        startDate: startDate?.toIso8601String(),
        endDate: endDate?.toIso8601String(),
        filterForUser: false,
        forcedUpdate: false,
        assetCode: assetCode,
        jobId: jobId,
      ),
    );

    if (results.hasErrors()) {
      return Future.error(Exception(results.errors?.first.message));
    }

    if (results.data == null) {
      return Future.error(Exception(results.errors?.first.message));
    }

    final list = results.data!.jobFormsForYard.inProgress?.nodes!
        .map(
          (e) => AllocateUserJob(
            workOrderDescription: e!.workOrderDescription!,
            workOrderId: e.workOrderId!,
            assetCode: e.assetCode ?? 'NONE',
            jobType: e.jobType ?? '',
            jobTrade: e.jobTrade ?? '',
            jobTypeVariant: e.jobTypeVariant ?? '',
            dueDate: DateTime.parse(e.startedDate!),
            assignedTo: e.assignedTo,
            startedBy: e.startedBy,
            instanceId: e.id,
            assignedToTeam: e.assignedToTeam ?? '',
            assignedToTeamId: e.assignedToTeamId ?? '',
            yardCode: e.yardCode,
            scheduleItemType: e.scheduleItemType,
            jobPriority: e.jobPriority,
            depotNo: e.depotNo ?? '',
          ),
        )
        .toList();

    final nextPageToken =
        results.data!.jobFormsForYard.inProgress?.pageInfo.endCursor;
    final hasNextPage =
        results.data!.jobFormsForYard.inProgress?.pageInfo.hasNextPage;

    return PaginatedResult(
      nextPageToken: nextPageToken,
      items: list ?? [],
      hasNextPage: hasNextPage!,
    );
  }

  Future<PaginatedResult<List<AllocateUserJob>>?> getSceduledJobs(
    String yardCode,
    DateTime? startDate,
    DateTime? endDate,
    String? assetCode,
    String? jobId,
    int first,
    String? after,
  ) async {
    final results = await documentNodeQueryGetScheduledJobFormsForYard.execute(
      httpClient,
      Query$GetScheduledJobFormsForYard.fromJson,
      variables: Variables$Query$GetScheduledJobFormsForYard(
        firstSc: first,
        afterSc: after,
        yardCode: yardCode,
        startDate: startDate?.toIso8601String(),
        endDate: endDate?.toIso8601String(),
        filterForUser: false,
        forcedUpdate: false,
        assetCode: assetCode,
        jobId: jobId,
      ),
    );

    if (results.hasErrors()) {
      return Future.error(Exception(results.errors?.first.message));
    }

    if (results.data == null) {
      return Future.error(Exception(results.errors?.first.message));
    }

    final list = results.data!.jobFormsForYard.scheduled?.nodes!
        .map(
          (e) => AllocateUserJob(
            workOrderDescription: e!.job!.workOrderDescription!,
            workOrderId: e.job!.workOrderId,
            assetCode: e.job!.asset?.assetCode ?? 'NONE',
            jobType: e.job!.jobType,
            jobTrade: e.job!.jobTrade,
            jobTypeVariant: e.job!.jobTypeVariant ?? '',
            dueDate: DateTime.parse(e.job!.expectedStartDate),
            assignedTo: e.job!.assignedTo ?? '',
            startedBy: '',
            instanceId: '',
            assignedToTeam: e.job!.assignedToTeam ?? '',
            assignedToTeamId: e.job!.assignedToTeamId ?? '',
            yardCode: e.job?.yardCode ?? '',
            scheduleItemType: e.job?.scheduleItemType ?? '',
            jobPriority: e.job?.jobPriority ?? '',
            depotNo: e.job?.depotNo ?? '',
          ),
        )
        .toList();

    final nextPageToken =
        results.data!.jobFormsForYard.scheduled?.pageInfo.endCursor;
    final hasNextPage =
        results.data!.jobFormsForYard.scheduled?.pageInfo.hasNextPage;

    return PaginatedResult(
      nextPageToken: nextPageToken,
      items: list ?? [],
      hasNextPage: hasNextPage!,
    );
  }

  @override
  Future<PaginatedResult<List<AllocateUserJob>>?> getJobs(
    String yardCode,
    DateTime? startDate,
    DateTime? endDate,
    String? assetCode,
    String? jobId,
    int first,
    String? after, {
    bool isInProgress = true,
  }) async {
    if (isInProgress) {
      return getInProgressJobs(
        yardCode,
        startDate,
        endDate,
        assetCode,
        jobId,
        first,
        after,
      );
    } else {
      return getSceduledJobs(
        yardCode,
        startDate,
        endDate,
        assetCode,
        jobId,
        first,
        after,
      );
    }
  }

  @override
  Future<List<User>> getUsers(String searchPattern) async {
    final results = await documentNodeQueryUsers.execute(
      httpClient,
      Query$Users.fromJson,
      variables: Variables$Query$Users(filter: searchPattern),
    );

    if (results.hasErrors()) {
      return [];
    }

    if (results.data == null) {
      return [];
    }

    return results.data!.users.map((e) => User.fromJson(e.toJson())).toList();
  }

  @override
  Future<List<Team>> getTeams(String searchPattern) async {
    final results = await documentNodeQueryGetTeams.execute(
      httpClient,
      Query$GetTeams.fromJson,
      variables: Variables$Query$GetTeams(teamName: searchPattern),
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
  Future<bool> assignWorkOrderToUser(
    AssignWorkOrderToUserRequest assignWorkOrderToUserRequest,
  ) async {
    try {
      final response = await httpClient.post(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.assignWorkOrderToUser,
        ),
        body: json.encode(assignWorkOrderToUserRequest),
      );

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> reAssignWorkOrderToUserAndResetJob(
    AssignWorkOrderToUserRequest reAssignWorkOrderToUserAndResetJobRequest,
  ) async {
    try {
      final response = await httpClient.post(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.reassignWorkOrderToUser,
        ),
        body: json.encode(reAssignWorkOrderToUserAndResetJobRequest),
      );

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> unallocateUserTeamFromJob(
    UnassignUserTeamFromWorkOrderRequest unassignUserTeamFromWorkOrderRequest,
  ) async {
    try {
      final response = await httpClient.post(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.unassignWorkOrders,
        ),
        body: json.encode(unassignUserTeamFromWorkOrderRequest),
      );

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
