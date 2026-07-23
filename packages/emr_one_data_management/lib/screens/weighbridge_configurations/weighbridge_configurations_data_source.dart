import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/data/emr_query_graphql_data_source.dart';
import 'package:emr_one_data_management/models/filter_item.dart';
import 'package:emr_one_data_management/screens/weighbridge_configurations/controllers/weighbridge_config_search_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class WeighbridgeConfigurationsDataSource 
      extends EmrQueryGraphQLDataSource<WeighbridgeConfiguration>{

  WeighbridgeConfigurationsDataSource({
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

    final response =
        await coreApiService.referenceData.searchWeighbridgeConfigurations(
      query: queryScope.query,
      yardId: _getYardId(),
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

    final weighbridgeConfigurations = response.data!.$1;
    final meta = response.data!.$2;

    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    data.value = weighbridgeConfigurations;

    loading.value = false;
  }

  String? _getYardId() =>
      (queryScope
      .filters[WeighbridgeConfigSearchFilterContoller.kYardCode] 
      as FilterItem?)?.key;
}
