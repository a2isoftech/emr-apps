import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';

class GroupsDataSource extends EmrQueryGraphQLDataSource<AdGroup> {
  GroupsDataSource({required this.doorAccessService});
  final DoorAccessService doorAccessService;

  @override
  bool get supportsFacets => false;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();
    try {
      StaticData.ignoreCache = true;
      final paginatedResponse = await doorAccessService.groupsService.getGroups(
        after: after,
        before: before,
        first: first,
        last: last,
      );
      recordCount = paginatedResponse.totalCount;
      pageInfo = paginatedResponse.pageInfo;
      data.value = paginatedResponse.data;
    } finally {
      loading.value = false;
    }
  }
}
