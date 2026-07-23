import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';

class SitesDataSource extends EmrQueryGraphQLDataSource<Site> {
  SitesDataSource({required this.doorAccessService});
  final DoorAccessService doorAccessService;

  @override
  bool get supportsFacets => false;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();
    try {
      StaticData.ignoreCache = true;
      final paginatedResponse = await doorAccessService.sitesService.getSites(
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
