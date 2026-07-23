import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class WeighbridgeGroupsDataSource
    extends EmrQueryGraphQLDataSource<WeighbridgeGroup> {
  WeighbridgeGroupsDataSource({
    required this.coreApiService,
    required this.handleErrors,
  });

  final CoreApiService coreApiService;
  final void Function(String) handleErrors;
  @override
  bool get autoPopulate => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final response = await coreApiService.referenceData.searchWeighbridgeGroups(
      query: queryScope.query,
      before: before,
      after: after,
      first: first,
      last: last,
    );

    if (response.success == false || response.data == null) {
      loading.value = false;

      if (response.message.isNotEmpty) {
        handleErrors(response.message);
      }

      return;
    }

    final weighbridgeGroups = response.data!.$1;
    final meta = response.data!.$2;

    // Update the data source with the new data.
    // NOTE: data.value MUST ALWAYS BE SET LAST WHEN USING PAGING.
    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    data.value = weighbridgeGroups;

    loading.value = false;
  }
}
