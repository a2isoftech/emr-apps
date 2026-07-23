import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';

class AccessCredentialsDataSourrce
    extends EmrQueryGraphQLDataSource<AccessCredential> {
  AccessCredentialsDataSourrce({required this.doorAccessService});
  final DoorAccessService doorAccessService;

  @override
  bool get supportsFacets => false;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();
    try {
      final paginatedResponse = await doorAccessService.accessControllersService
          .searchAccessCredentials(
            after: after,
            before: before,
            first: first,
            last: last,
            input: getSearchInput(),
          );
      recordCount = paginatedResponse.totalCount;
      pageInfo = paginatedResponse.pageInfo;
      data.value = paginatedResponse.data;
    } finally {
      loading.value = false;
    }
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();

  Input$SearchAccessCredentialsInput getSearchInput() {
    return Input$SearchAccessCredentialsInput(
      query: queryScope.query.replaceAll('+', ''),
      groupIds:
          _getStringFilterList(AccessCredentialsFilterController.kGroup) ?? [],
      accessControllerIds:
          _getStringFilterList(
            AccessCredentialsFilterController.kAccessController,
          ) ??
          [],
    );
  }
}
