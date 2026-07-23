import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/graphql/queries/canStartJob.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getAssignedJobs.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getInProgressJobs.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getJobFormsForYard.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getScheduledJobFormsForYard.graphql.dart';
import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/paginated_result.dart';
import 'package:emr_one_inform/services/interfaces/ijob_search_service.dart';
import 'package:package_info_plus/package_info_plus.dart';

class JobSearchService implements IJobSearchService {
  JobSearchService({
    required this.httpClient,
  });

  final ResilientHttpClient httpClient;

  static const String loggerPrefix = '[JobService] - ';

  @override
  Future<JobForms?> getJobsForDepot({
    required String yardCode,
    DateTime? startDate,
    DateTime? endDate,
    bool? filterForUser,
    List<String>? searchTerms,
  }) async {
    final results = await documentNodeQueryGetJobFormsForYard.execute(
      httpClient,
      Query$GetJobFormsForYard.fromJson,
      variables: Variables$Query$GetJobFormsForYard(
        yardCode: yardCode,
        startDate: startDate?.toIso8601String(),
        endDate: endDate?.toIso8601String(),
        filterForUser: filterForUser,
        forcedUpdate: false,
      ),
    );

    if (results.hasErrors()) {
      return null;
    }

    if (results.data == null) {
      return null;
    }

    return JobForms.fromJson(results.data!.jobFormsForYard.toJson());
  }

  @override
  Future<PaginatedResult<List<ScheduledJobForm>?>> getAssignedJobs({
    required String yardCode,
    DateTime? startDate,
    DateTime? endDate,
    bool? filterForUser,
    List<String>? searchTerms,
    String? assetCode,
    String? jobId,
    String? after,
  }) async {
    final results = await documentNodeQueryGetAssignedJobs.execute(
      httpClient,
      Query$GetAssignedJobs.fromJson,
      variables: Variables$Query$GetAssignedJobs(
        yardCode: yardCode,
        startDate: startDate?.toIso8601String(),
        endDate: endDate?.toIso8601String(),
        filterForUser: filterForUser,
        assetCode: assetCode,
        jobId: jobId,
        first: InformJobs.preference?.pageSize ?? 20,
        after: after,
      ),
    );

    if (results.hasErrors()) {
      return Future.error(Exception(results.errors?.first.message));
    }

    if (results.data == null) {
      return Future.error(Exception(results.errors?.first.message));
    }
    if (results.data?.jobFormsForYard.filteredForUser?.nodes?.isEmpty ?? true) {
      return PaginatedResult(nextPageToken: '', items: [], hasNextPage: false);
    }
    final filterForUserForms =
        results.data!.jobFormsForYard.filteredForUser!.nodes!
            .map(
              (e) => ScheduledJobForm(
                job: WorkOrderInfo.fromJson(e!.job!.toJson()),
                scheduledItemId: e.scheduledItemId,
                template: FormTemplate.fromJson(e.template!.toJson()),
              ),
            )
            .toList();
    final nextPageToken =
        results.data?.jobFormsForYard.filteredForUser?.pageInfo.endCursor;
    final hasNextPage =
        results.data?.jobFormsForYard.filteredForUser?.pageInfo.hasNextPage;
    return PaginatedResult(
      items: filterForUserForms,
      hasNextPage: hasNextPage!,
      nextPageToken: nextPageToken,
    );
  }

  @override
  Future<PaginatedResult<List<FormInstance>?>> getInProgressJobs({
    required String yardCode,
    DateTime? startDate,
    DateTime? endDate,
    bool? filterForUser,
    List<String>? searchTerms,
    String? assetCode,
    String? jobId,
    String? after,
  }) async {
    final results = await documentNodeQueryGetInProgressJobs.execute(
      httpClient,
      Query$GetInProgressJobs.fromJson,
      variables: Variables$Query$GetInProgressJobs(
        yardCode: yardCode,
        startDate: startDate?.toIso8601String(),
        endDate: endDate?.toIso8601String(),
        filterForUser: filterForUser,
        assetCode: assetCode,
        jobId: jobId,
        firstIn: InformJobs.preference?.pageSize ?? 20,
        afterIn: after,
      ),
    );

    if (results.hasErrors()) {
      return Future.error(Exception(results.errors?.first.message));
    }

    if (results.data == null) {
      return Future.error(Exception(results.errors?.first.message));
    }
    if (results.data?.jobFormsForYard.inProgress?.nodes?.isEmpty ?? true) {
      return PaginatedResult(nextPageToken: '', items: [], hasNextPage: false);
    }
    final filterForUserForms = results.data!.jobFormsForYard.inProgress!.nodes!
        .map(
          (e) => FormInstance.fromJson(e!.toJson()),
        )
        .toList();
    final nextPageToken =
        results.data?.jobFormsForYard.inProgress?.pageInfo.endCursor;
    final hasNextPage =
        results.data?.jobFormsForYard.inProgress?.pageInfo.hasNextPage;
    return PaginatedResult(
      items: filterForUserForms,
      hasNextPage: hasNextPage!,
      nextPageToken: nextPageToken,
    );
  }

  @override
  Future<JobForms?> getUnassignedJobs({
    required String yardCode,
    DateTime? startDate,
    DateTime? endDate,
    bool? filterForUser,
    List<String>? searchTerms,
    String? assetCode,
  }) async {
    final results = await documentNodeQueryGetScheduledJobFormsForYard.execute(
      httpClient,
      Query$GetScheduledJobFormsForYard.fromJson,
      variables: Variables$Query$GetScheduledJobFormsForYard(
        yardCode: yardCode,
        startDate: startDate?.toIso8601String(),
        endDate: endDate?.toIso8601String(),
        filterForUser: filterForUser,
        assetCode: assetCode,
      ),
    );

    if (results.hasErrors()) {
      return null;
    }

    if (results.data == null) {
      return null;
    }

    final jobForms = JobForms.fromJson(results.data!.jobFormsForYard.toJson());

    return jobForms;
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
  Future<bool> resetInProgressForm(String formInstanceUuid) async {
    try {
      final appversion = await PackageInfo.fromPlatform();
      final response = await httpClient.post(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path:
              '${FormAppApiPath.resetForm}/$formInstanceUuid/${appversion.version} (${appversion.buildNumber})',
        ),
      );

      if (response.statusCode == 200) {
        final apiResponse = jsonDecode(response.body) as Map<String, dynamic>;
        if (apiResponse['errorLevel'] == 'Error') {
          // final errorMessage = apiResponse['errorDetails'];
          return false;
        }
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> delete(String workOrderId) async {
    try {
      final response = await httpClient.delete(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: '${FormAppApiPath.deleteWorkOrder}/$workOrderId',
        ),
      );

      if (response.statusCode == 200) {
        final apiResponse = jsonDecode(response.body) as Map<String, dynamic>;
        if (apiResponse['errorLevel'] == 'Error') {
          // final errorMessage = apiResponse['errorDetails'];
          return false;
        }
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> canStartJob(String workOrderId) async {
    final result = await documentNodeQueryCanStartJob.execute(
      httpClient,
      Query$CanStartJob.fromJson,
      variables: Variables$Query$CanStartJob(workOrderId: workOrderId),
    );

    if (result.hasErrors() || result.data == null) return false;

    return result.data!.canStartJob.value;
  }
}
