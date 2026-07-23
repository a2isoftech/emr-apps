import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_forms_engine/core/models/database/hive_form_instance.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_inform/constants/strings.dart';
import 'package:emr_one_inform/graphql/queries/getJobStatusForCleanup.graphql.dart';
import 'package:emr_one_inform/graphql/schema.graphql.dart';
import 'package:emr_one_inform/models/diagnostic_job_form.dart';
import 'package:emr_one_inform/models/paginated_result.dart';

abstract class IBackgroundProcessor {
  Future<void> uploadSubmittedJobs();
  Future<List<String>> removeCompletedJobs();
}

enum ActionType { submit, remove }

class BackgroundProcessor extends IBackgroundProcessor {
  BackgroundProcessor({
    required this.httpClient,
  });

  final ResilientHttpClient httpClient;

  late List<HiveFormInstance>? localData;
  List<String>? localWorkOrderIds;
  List<String> removedIds = List.empty(growable: true);
  late PaginatedResult<List<DiagnosticJobForm>?> jobsFromServer;
  final pageSize = 200;

  @override
  Future<void> uploadSubmittedJobs() async {
    try {
      await _getJobsFromHive();
      await resetJobs();
      await processJobs(ActionType.submit);
    } finally {}
  }

  @override
  Future<List<String>> removeCompletedJobs() async {
    await _getJobsFromHive();
    await resetJobs();
    await processJobs(ActionType.remove);
    return removedIds;
  }

  Future<void> resetJobs() async {
    jobsFromServer = PaginatedResult(
      items: [],
      hasNextPage: false,
    );
  }

  Future<void> _getJobsFromHive() async {
    localData =
        await FormsEngine.services.get<IDatabaseManager>().getAllInstances();
    localWorkOrderIds = await _getWorkOrderIds();
  }

  Future<List<String>?> _getWorkOrderIds() async {
    if (localData == null || localData!.isEmpty) {
      return null;
    }

    if (_isWoDetailsPresent()) {
      return localData!
          .where(
            (element) =>
                element.workOrderId != null && element.workOrderId!.isNotEmpty,
          )
          .map((e) => e.workOrderId!)
          .toList();
    } else {
      // cant query based on workOrderId. need to fetch
      // data from scheduledItemId
    }
    return null;
  }

  Future<void> _processCompletedJobs() async {
    final serverJobs = await _getJobsFromServer();

    if (serverJobs == null || serverJobs.isEmpty) {
      return;
    }
    final completedJobs = serverJobs
        .where(
          (e) => e.scheduledItemStatus == ScheduledItemStatus.Complete,
        )
        .toList();

    if (completedJobs.isNotEmpty) {
      for (final completed in completedJobs) {
        await FormsEngine.services
            .get<IDatabaseManager>()
            .removeInstance(completed.id!);

        if (localWorkOrderIds != null && localWorkOrderIds!.isNotEmpty) {
          localWorkOrderIds!.remove(completed.workOrderId);
          removedIds.add(completed.workOrderId ?? '-');
        }
      }
    }
  }

  Future<void> _processNonSubmittedJobs() async {
    final serverJobs = await _getJobsFromServer();

    if (serverJobs == null || serverJobs.isEmpty) {
      return;
    }

    final inProgressJobs = serverJobs
        .where(
          (e) =>
              e.scheduledItemStatus == ScheduledItemStatus.NotStarted ||
              e.scheduledItemStatus == ScheduledItemStatus.InProgress ||
              e.scheduledItemStatus == ScheduledItemStatus.Cancelled,
        )
        .toList();

    if (inProgressJobs.isNotEmpty) {
      for (final inprogress in inProgressJobs) {
        final submittedLocally = localData!
            .where(
              (e) =>
                  e.scheduledItemId == inprogress.scheduledItemId &&
                  e.isSubmitted == true,
            )
            .toList();
        if (submittedLocally.isNotEmpty) {
          for (final submit in submittedLocally) {
            await FormsEngine.services
                .get<ISaveFormInstanceService>()
                .upload(instanceId: submit.uuid);
          }
        }
      }
    }
  }

  Future<List<DiagnosticJobForm>?> _getJobsFromServer() async {
    try {
      jobsFromServer = await getallJobs(
        localWorkOrderIds,
        pageSize,
        jobsFromServer.nextPageToken,
      );

      if (jobsFromServer.items != null && jobsFromServer.items!.isNotEmpty) {
        return jobsFromServer.items;
      }
    } catch (e) {
      await resetJobs();
    }
    return null;
  }

  Future<PaginatedResult<List<DiagnosticJobForm>?>> getallJobs(
    List<String>? workOrderIds,
    int? pageSize,
    String? after,
  ) async {
    try {
      final results = await documentNodeQueryGetJobStatusForCLeanUp.execute(
        httpClient,
        Query$GetJobStatusForCLeanUp.fromJson,
        variables: Variables$Query$GetJobStatusForCLeanUp(
          filter: Input$DiagnosticJobFormFilterInput(
            jobIds: workOrderIds,
            stateIds: [1, 2, 3, 4],
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
        return PaginatedResult(
          nextPageToken: '',
          items: [],
          hasNextPage: false,
        );
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
    } catch (e) {
      return PaginatedResult(
        nextPageToken: '',
        items: [],
        hasNextPage: false,
      );
    }
  }

  bool _isWoDetailsPresent() {
    final noWoDetailsCount = localData!
        .where(
          (element) =>
              element.workOrderId == null || element.workOrderId!.isEmpty,
        )
        .length;

    if (noWoDetailsCount > 0) {
      return false;
    }
    return true;
  }

  Future<void> processJobs(ActionType type) async {
    if (localWorkOrderIds == null || localWorkOrderIds!.isEmpty) {
      return;
    }

    try {
      switch (type) {
        case ActionType.submit:
          return await _processNonSubmittedJobs();
        case ActionType.remove:
          return await _processCompletedJobs();
      }
    } catch (e) {
      await resetJobs();
    } finally {
      if (jobsFromServer.hasNextPage) {
        await processJobs(type);
      }
    }
  }
}
