import 'dart:convert';

import 'package:emr_one_core/networking/networking.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/graphql/queries/getAllJobsbyJobIds.graphql.dart';
import 'package:emr_one_inform/graphql/queries/getFormTemplateJson.graphql.dart';
import 'package:emr_one_inform/graphql/schema.graphql.dart';
import 'package:emr_one_inform/models/diagnostic_job_form.dart';
import 'package:emr_one_inform/models/paginated_result.dart';

abstract class IDiagnosticService {
  Future<PaginatedResult<List<DiagnosticJobForm>?>> getallJobs(
    DateTime? startDate,
    DateTime? endDate,
    List<String>? jobIds,
    String? assetCode,
    int? pageSize,
    String? after,
  );
  Future<String?> getFormsTemplateJson(String templateId);
  Future<String?> reProcessJobs(List<String>? jobIds);
  Future<String?> updateD365(List<String>? jobIds);
}

class DiagnsoticService implements IDiagnosticService {
  DiagnsoticService({required this.httpClient});

  final ResilientHttpClient httpClient;

  @override
  Future<PaginatedResult<List<DiagnosticJobForm>?>> getallJobs(
    DateTime? startDate,
    DateTime? endDate,
    List<String>? jobIds,
    String? assetCode,
    int? pageSize,
    String? after,
  ) async {
    final results = await documentNodeQueryGetAllJobsbyJobIds.execute(
      httpClient,
      Query$GetAllJobsbyJobIds.fromJson,
      variables: Variables$Query$GetAllJobsbyJobIds(
        filter: Input$DiagnosticJobFormFilterInput(
          startDate: startDate?.toIso8601String(),
          endDate: endDate?.toIso8601String(),
          jobIds: jobIds,
          assetCode: assetCode,
          stateIds: [2, 3, 4],
        ),
        first: pageSize,
        after: after,
      ),
    );

    if (results.hasErrors()) {
      return Future.error(Exception(results.errors?.first.message));
    }

    if (results.data == null) {
      return Future.error(Exception(results.errors?.first.message));
    }
    if (results.data?.jobFormsForDiagnostics!.nodes?.isEmpty ?? true) {
      return PaginatedResult(nextPageToken: '', items: [], hasNextPage: false);
    }
    final jobs = results.data!.jobFormsForDiagnostics!.nodes!
        .map(
          (e) => DiagnosticJobForm.fromJson(e.toJson()),
        )
        .toList();
    final nextPageToken =
        results.data?.jobFormsForDiagnostics?.pageInfo.endCursor;
    final hasNextPage =
        results.data?.jobFormsForDiagnostics?.pageInfo.hasNextPage;
    return PaginatedResult(
      items: jobs,
      hasNextPage: hasNextPage!,
      nextPageToken: nextPageToken,
    );
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
  Future<String?> reProcessJobs(
    List<String>? jobIds,
  ) async {
    try {
      final response = await httpClient.post(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.reProcess,
        ),
        body: json.encode(jobIds),
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
  Future<String?> updateD365(List<String>? jobIds) async {
    try {
      final response = await httpClient.post(
        Uri(
          scheme: httpClient.getUri().scheme,
          host: httpClient.getUri().host,
          port: httpClient.getUri().port,
          path: FormAppApiPath.updated365,
        ),
        body: json.encode(jobIds),
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body) as String?;
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
