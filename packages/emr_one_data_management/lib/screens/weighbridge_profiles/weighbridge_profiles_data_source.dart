import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class WeighbridgeProfilesDataSource
    extends EmrQueryGraphQLDataSource<WeighbridgeProfile> {
  WeighbridgeProfilesDataSource({
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
    final yardCode = getYardCode();

    final response =
        await coreApiService.referenceData.searchWeighbridgeProfiles(
      query: queryScope.query,
      yardCode: yardCode,
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

    final weighbridgeProfiles = response.data!.$1;
    final meta = response.data!.$2;

    // Update the data source with the new data.
    // NOTE: data.value MUST ALWAYS BE SET LAST WHEN USING PAGING.
    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    data.value = weighbridgeProfiles;

    loading.value = false;
  }

  Future<bool> deactivateWeighbridgeProfile(String id) async {
    final response = await coreApiService.referenceData
        .deactivateWeighbridgeProfile(id);
    return response.success;
  }

  String? getYardCode() {
    return _getStringFilterList(WeighbridgesSearchFilterController.kYardCode);
  }

  String? _getStringFilterList(String key) =>
      queryScope.filters[key] as String?;
}
