import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';

class UsersDataSource extends EmrQueryGraphQLDataSource<DoorAccessUser> {
  UsersDataSource({required this.doorAccessService});
  final DoorAccessService doorAccessService;

  @override
  bool get supportsFacets => false;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();
    try {
      final paginatedResponse = await doorAccessService.usersService.getUsers(
        after: after,
        before: before,
        first: first,
        last: last,
        userIds: StaticData.userIds,
      );
      StaticData.userIds = null;
      recordCount = paginatedResponse.totalCount;
      pageInfo = paginatedResponse.pageInfo;
      data.value = paginatedResponse.data;
    } finally {
      loading.value = false;
    }
  }
}
