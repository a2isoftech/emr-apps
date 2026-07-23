import 'dart:convert';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/controllers/controllers.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/pricing-admin/admin_pricing_filter_controller.dart';

class AdminPricingDatasource extends EmrQueryGraphQLDataSource<AccountPrice> {
  AdminPricingDatasource({
    required this.coreapiService,
    required this.settingsController,
    required this.userInfoService,
  });

  final CoreApiService coreapiService;
  final SettingsController settingsController;
  final UserInfoService userInfoService;
  late List<String> _publications = [];

  List<String> get getPublications => _publications;

  @override
  bool get supportsFacets => true;

  @override
  Future<void> refresh() async {
    try {
      loading.value = true;

      await onRefresh.call();

      final accountCodes = _getStringFilterList(
        AdminPricingFilterController.kAccountCodeKey,
      );

      final manager = _getStringFilter(
        AdminPricingFilterController.kManagedBuyerKey,
      );

      final publicationName = _getStringFilter(
        AdminPricingFilterController.kPublicationNameKey,
      );

      final productFamilies = _getStringFilterList(
        AdminPricingFilterController.kProductFamilyKey,
      );

      final productCodes = _getStringFilterList(
        AdminPricingFilterController.kProductCodeKey,
      );

      final yardCodes = _getStringFilterList(
        AdminPricingFilterController.kYardCodeKey,
      );

      final expiryDate =
          queryScope.filters[AdminPricingFilterController.kExpiration]
              as DateTime?;

      final tagsReasons = _getStringFilterList(
        AdminPricingFilterController.kTagsKey,
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

      final response = await coreapiService.pricingService.executePricingQuery(
        accountCodes: accountCodes,
        managerNames: manager == null
            ? userInfoService.userInfo.managedBuyers
                  .map((m) => m.username.replaceAll('.', ' '))
                  .toList()
            : [manager],
        productFamilies: productFamilies,
        productCodes: productCodes,
        publicationNames: publicationName == null
            ? const []
            : [publicationName],
        yardCodes: yardCodes,
        tags: tagsReasons,
        searchText: queryScope.query,
        after: after,
        before: before,
        first: first,
        last: last,
        tagExpiryDate: expiryDate,
        order: sorting,
        territoryIds: ['territories/${settingsController.territory}'],
      );

      if (response == null) {
        //early return here, we want to retain the last results
        return;
      }

      recordCount = response.metadata.recordCount;
      pageInfo = response.metadata.pageInfo;
      facets.value = response.metadata.facets;
      data.value = response.accountPrices;

      _publications =
          facets.value['PublicationName']?.values.map((e) => e.text).toList() ??
          [];
    } finally {
      loading.value = false;
    }
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();

  String? _getStringFilter(String key) => queryScope.filters[key] as String?;
}
