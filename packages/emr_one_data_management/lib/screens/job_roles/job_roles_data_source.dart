import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/services/user_roles/user_job_roles_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/userRoles/job_role.dart';

class JobRolesDataSource extends EmrQueryGraphQLDataSource<JobRole> {
  JobRolesDataSource({required this.userAccessService});

  final UserAccessService userAccessService;

  @override
  bool get autoPopulate => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final response = await userAccessService.searchJobRoles(
      query: queryScope.query,
      before: before,
      after: after,
      first: first,
      last: last,
      sortOrder: queryScope.sortOrder, 
    );

    if (!response.success || response.data == null) {
      loading.value = false;
      return;
    }

    final jobRoles = response.data!.$1;
    final meta = response.data!.$2;
    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    data.value = jobRoles;
    loading.value = false;
  }
}
