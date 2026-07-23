import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/services/user_roles/user_system_roles_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/userRoles/system_role.dart';

class SystemRolesDataSource extends EmrQueryGraphQLDataSource<SystemRole> {
  SystemRolesDataSource({required this.userAccessService});

  final UserAccessService userAccessService;

  @override
  bool get autoPopulate => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final response = await userAccessService.searchSystemRoles(
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

    final systemRoles = response.data!.$1;
    final meta = response.data!.$2;
    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    data.value = systemRoles;
    loading.value = false;
  }

  Future<List<SystemRole>> searchSystemRoles(
    String query, {
    bool? active,
  }) async {
    final response = await userAccessService.searchSystemRoles(
      query: query,
      active: active,
      before: before,
      after: after,
      first: first,
      last: last,
    );

    if (response.success) {
      return response.data!.$1;
    }

    return [];
  }
}
