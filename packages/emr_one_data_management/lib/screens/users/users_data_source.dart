import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/models/userRoles/job_role.dart';

class UsersDataSource extends EmrQueryGraphQLDataSource<User> {
  UsersDataSource({
    required this.coreApiService,
  });

  final CoreApiService coreApiService;

  @override
  bool get autoPopulate => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final response = await coreApiService.userAccess.searchUsers(
      query: queryScope.query,
      before: before,
      after: after,
      first: first,
      last: last,
      sortOrder: queryScope.sortOrder,
    );

    if (response.success == false || response.data == null) {
      loading.value = false;
      return;
    }

    final users = response.data!.$1;
    final meta = response.data!.$2;

    // Update the data source with the new data.
    // NOTE: data.value MUST ALWAYS BE SET LAST WHEN USING PAGING.
    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    data.value = users;

    loading.value = false;
  }

  Future<List<JobRole>> searchJobRoles(
    String query,
    Future<ApiResponse<(List<JobRole>, EmrQueryGraphQLMetadata<dynamic>)>>
        Function({
      String? query,
      bool? active,
      String? before,
      String? after,
      int? first,
      int? last,
    }) searchJobRoles, {
    bool? active,
  }) async {
    final response = await searchJobRoles(
      query: query,
      active: active,
      before: before,
      after: after,
      first: first,
      last: last,
    );
    if (response.success == false || response.data == null) {
      return [];
    }
    return response.data!.$1;
  }
}
