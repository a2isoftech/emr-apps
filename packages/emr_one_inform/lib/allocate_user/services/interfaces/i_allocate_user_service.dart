import 'package:emr_one_inform/allocate_user/models/allocate_user_job.dart';
import 'package:emr_one_inform/models/assign_work_order_to_user_request.dart';
import 'package:emr_one_inform/models/paginated_result.dart';
import 'package:emr_one_inform/models/schedule_task_models.dart';
import 'package:emr_one_inform/models/unallocate_user_team_from_job.dart';
import 'package:emr_one_inform/screens/team/team_model.dart';

abstract class IAllocateUserService {
  Future<PaginatedResult<List<AllocateUserJob>>?> getJobs(
    String yardCode,
    DateTime? startDate,
    DateTime? endDate,
    String? assetCode,
    String? jobId,
    int first,
    String? after,
    {bool isInProgress = true,}
  );

  Future<List<User>> getUsers(String searchPattern);
  Future<List<Team>> getTeams(String searchPattern);

  Future<bool> assignWorkOrderToUser(
    AssignWorkOrderToUserRequest assignWorkOrderToUserRequest,
  );

  Future<bool> reAssignWorkOrderToUserAndResetJob(
    AssignWorkOrderToUserRequest reAssignWorkOrderToUserAndResetJobRequest,
  );

  Future<bool> unallocateUserTeamFromJob(
    UnassignUserTeamFromWorkOrderRequest unassignUserTeamFromWorkOrderRequest,
  );
}
