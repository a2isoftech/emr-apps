import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';

class DoorDataSource extends EmrQueryGraphQLDataSource<DoorSearchResult> {
  DoorDataSource({required this.doorAccessService});
  final DoorAccessService doorAccessService;

  void Function(List<DoorSearchResult>)? onDataFetched;

  @override
  bool get supportsFacets => false;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();
    try {
      final paginatedResponse = await doorAccessService.accessControllersService
          .searchDoors(
            after: after,
            before: before,
            first: first,
            last: last,
            input: getSearchInput(),
          );
      recordCount = paginatedResponse.totalCount;
      pageInfo = paginatedResponse.pageInfo;
      data.value = paginatedResponse.data;
      if (onDataFetched != null) {
        onDataFetched!.call(paginatedResponse.data);
      }
    } finally {
      loading.value = false;
    }
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();

  Input$SearchDoorInput getSearchInput() {
    return Input$SearchDoorInput(
      query: queryScope.query.replaceAll('+', ''),
      siteIds: _getStringFilterList(DoorsFilterController.kSite) ?? [],
      accessControllerIds:
          _getStringFilterList(DoorsFilterController.kAccessController) ?? [],
    );
  }
}
