import 'dart:convert';

import 'package:emr_core_api/services/core_api_service.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/contracts/contracts_filter_controller.dart';
import 'package:emr_sharedtypes/models/contract.dart';

class ContractsDataSource extends EmrQueryGraphQLDataSource<Contract> {
  ContractsDataSource({
    required this.coreapiService,
    required this.settingsController,
    required this.userInfoService,
  });

  final CoreApiService coreapiService;
  final SettingsController settingsController;
  final UserInfoService userInfoService;
  late final List<String> _publications = [];

  List<String> get getPublications => _publications;

  @override
  bool get supportsFacets => true;

  @override
  RowSelectionMode get selectionMode => RowSelectionMode.multiple;

  @override
  Future<void> refresh() async {
    try {
      loading.value = true;

      await onRefresh.call();

      final accountCodes = _getStringFilterList(
        ContractsFilterController.kAccountCodeKey,
      );

      final status = _getStringFilterList(ContractsFilterController.kStatusKey);

      final orderBook = _getStringFilterList(
        ContractsFilterController.kOrderBookKey,
      );

      final deliveryMethod = _getStringFilterList(
        ContractsFilterController.kDeliveryMethodKey,
      );

      final products = _getStringFilterList(
        ContractsFilterController.kProductsKey,
      );

      final pricingBasis = _getStringFilterList(
        ContractsFilterController.kPricingKey,
      );

      if (queryScope.sortOrder.isEmpty) {
        queryScope.sortOrder.add(
          EmrQueryScopeSortOrder(
            field: 'accountCode',
            direction: EmrQueryScopeSortOrderDirection.asc,
          ),
        );
      }

      final sorting = queryScope.sortOrder
          .map(
            (e) =>
                jsonDecode('{ "${e.field}": "${e.direction}" }')
                    as Map<String, dynamic>,
          )
          .toList();

      final response = await coreapiService.contractService
          .executeContractsQuery(
            accountCodes: accountCodes ?? [],
            internalContractReferences: [],
            customerContractReferences: [],
            status: status ?? [],
            products: products ?? [],
            pricingBasis: pricingBasis ?? [],
            contractOrderBookTypeName: orderBook ?? [],
            deliveryMethod: deliveryMethod ?? [],
            searchText: queryScope.query,
            after: after,
            before: before,
            first: first,
            last: last,
            order: sorting,
          );

      if (response == null) {
        return;
      }

      recordCount = response.metadata.recordCount;
      pageInfo = response.metadata.pageInfo;
      facets.value = response.metadata.facets;
      data.value = response.contracts;
    } finally {
      loading.value = false;
    }
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();
}
