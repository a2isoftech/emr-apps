import 'package:emr_core_api/graphql/queries/reference_data/get_products.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/services/inventory_search_service.dart';
import 'package:flutter/material.dart';

class InventorySearchFilterController extends EmrFilterController {
  InventorySearchFilterController({
    required this.userInfoService,
    required this.inventorySearchService,
  }) : super(
          filters: [],
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kYardCode:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => Future.value(
                    switch (filter.key) {
                      kYardCode => userInfoService.userInfo.depots
                          .map((e) => e.yardCode!)
                          .toSet(),
                      _ => throw Exception('No data source for ${filter.key}'),
                    }
                        .where(
                      (element) => element
                          .contains(RegExp(pattern, caseSensitive: false)),
                    ),
                  ),
                  multi: true,
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
              case kProduct:
                return EmrFilterAutoComplete<Query$GetProducts$products$nodes,
                    String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) {
                    return inventorySearchService.getProducts(
                      pattern,
                    );
                  },
                  multi: true,
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) =>
                      '${suggestion.code} - ${suggestion.description}',
                  getValue: (suggestion) => suggestion.code,
                );
              case kProductLine:
              case kProductClass:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => switch (filter.key) {
                    kProductLine =>
                      inventorySearchService.getProductTypes(pattern),
                    kProductClass =>
                      inventorySearchService.getProductGroups(pattern),
                    _ => throw Exception('Invalid filter ${filter.key}'),
                  },
                  multi: true,
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
            }
            return Container();
          },
        );

  final UserInfoService userInfoService;
  final InventorySearchService inventorySearchService;

  static const kYardCode = 'YardCode';
  static const kProduct = 'ProductCode';
  static const kProductLine = 'ProductLine';
  static const kProductClass = 'ProductClass';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kYardCode))
        EmrFilterModel<List<String>>(key: kYardCode, name: 'Yard code'),
      if (!containsFilter(key: kProduct))
        EmrFilterModel<List<String>>(key: kProduct, name: 'Product'),
      if (!containsFilter(key: kProductLine))
        EmrFilterModel<List<String>>(key: kProductLine, name: 'ProductLine'),
      if (!containsFilter(key: kProductClass))
        EmrFilterModel<List<String>>(key: kProductClass, name: 'ProductClass'),
    ];
  }
}
