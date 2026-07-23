import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/controllers/filters/yard_search_filter_controller.dart';
import 'package:emr_sharedtypes/models/payment_rules.dart';

class YardPaymentRulesDataSource
    extends EmrQueryGraphQLDataSource<PaymentRules> {
  YardPaymentRulesDataSource({
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
    final yardCodes =
        _getStringFilterList(YardSearchFilterController.kYardCode);

    final territoryCodes =
        _getStringFilterList(YardSearchFilterController.kTerritoryCode);

    final response = await referenceDataService.searchYardPaymentRules(
      query: queryScope.query,
      before: before,
      after: after,
      first: first,
      last: last,
      sortOrder: queryScope.sortOrder,
      yardCodes: yardCodes,
      territoryCodes: territoryCodes,
    );

    if (response.success == false || response.data == null) {
      loading.value = false;
      errorHandler(response.message);
      return;
    }

    final yardPaymentRules = response.data!.$1;
    final meta = response.data!.$2;

    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    data.value = yardPaymentRules;

    loading.value = false;
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();
}
