import 'package:emr_one_inform/models/form_models.dart';
import 'package:emr_one_inform/models/paginated_result.dart';

abstract class IJobSearchService {
  Future<JobForms?> getJobsForDepot({
    required String yardCode,
    DateTime? startDate,
    DateTime? endDate,
    bool? filterForUser,
    List<String>? searchTerms,
  });

  Future<PaginatedResult<List<ScheduledJobForm>?>> getAssignedJobs({
    required String yardCode,
    DateTime? startDate,
    DateTime? endDate,
    bool? filterForUser,
    List<String>? searchTerms,
    String? assetCode,
    String? jobId,
    String? after,
  });

  Future<PaginatedResult<List<FormInstance>?>> getInProgressJobs({
    required String yardCode,
    DateTime? startDate,
    DateTime? endDate,
    bool? filterForUser,
    List<String>? searchTerms,
    String? assetCode,
    String? jobId,
    String? after,
  });

  Future<JobForms?> getUnassignedJobs({
    required String yardCode,
    DateTime? startDate,
    DateTime? endDate,
    bool? filterForUser,
    List<String>? searchTerms,
  });

  Future<bool> assignWorkOrderToUser(
    AssignWorkOrderToUserRequest assignWorkOrderToUserRequest,
  );

  Future<bool> reAssignWorkOrderToUserAndResetJob(
    AssignWorkOrderToUserRequest reAssignWorkOrderToUserAndResetJobRequest,
  );

  Future<bool> resetInProgressForm(String formInstanceUuid);

  Future<bool> delete(String workOrderId);

  Future<bool> canStartJob(String workOrderId);
}
