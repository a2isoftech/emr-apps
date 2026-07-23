import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class StockTakeConfigDataSource
    extends EmrQueryGraphQLDataSource<StockTakeConfig> {
  StockTakeConfigDataSource({required this.referenceDataService});

  final ReferenceDataService referenceDataService;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();

    final response = await referenceDataService.getStockTakeConfigurations(
      queryScope.query,
      before,
      after,
      first,
      last,
    );

    final stocktakeConfigs = response.data!.$1;
    final meta = response.data!.$2;

    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    data.value = stocktakeConfigs;

    loading.value = false;
  }
}
