import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class TerritoriesDataSource extends EmrQueryGraphQLDataSource<Territory> {
  TerritoriesDataSource({
    required this.referenceDataService,
    required this.errorHandler,
  });

  final ReferenceDataService referenceDataService;
  final void Function(String) errorHandler;

  @override
  bool get autoPopulate => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final response = await referenceDataService.searchTerritories(
      query: queryScope.query,
      before: before,
      after: after,
      first: first,
      last: last,
      sortOrder: queryScope.sortOrder,
    );

    if (response.success == false || response.data == null) {
      loading.value = false;
      errorHandler(response.message);
      return;
    }

    final territories = response.data!.$1;
    final meta = response.data!.$2;

    // Update the data source with the new data.
    // NOTE: data.value MUST ALWAYS BE SET LAST WHEN USING PAGING.
    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    data.value = territories;

    loading.value = false;
  }
}
