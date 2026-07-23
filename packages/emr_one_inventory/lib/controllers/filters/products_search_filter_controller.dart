import 'package:emr_core_api/graphql/queries/inventory/production/search_products.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/services/production/bom_service.dart';
import 'package:flutter/material.dart';

class ProductsSearchFilterController extends EmrFilterController {
  ProductsSearchFilterController({required this.bomService})
    : super(
        filterContentBuilder: (context, filter, controller) {
          switch (filter.key) {
            case kProductLine:
            case kProductClass:
            case kProductFamily:
              return EmrFilterAutoComplete<String, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) async {
                  final response = await bomService.searchProducts(
                    Variables$Query$SearchProducts(
                      query: pattern,
                      productClasses:
                          filterController
                              .tryGetFilter<List<String>>(key: kProductClass)
                              ?.value ??
                          [],
                      productFamilies:
                          filterController
                              .tryGetFilter<List<String>>(key: kProductFamily)
                              ?.value ??
                          [],
                      productLines:
                          filterController
                              .tryGetFilter<List<String>>(key: kProductLine)
                              ?.value ??
                          [],
                    ),
                  );
                  switch (filter.key) {
                    case kProductLine:
                      return response?.nodes
                              ?.map((x) => x.classification.line)
                              .toSet() ??
                          [];
                    case kProductClass:
                      return response?.nodes
                              ?.map((x) => x.classification.$class)
                              .toSet() ??
                          [];
                    case kProductFamily:
                      return response?.nodes
                              ?.map((x) => x.classification.family)
                              .toSet() ??
                          [];
                  }

                  return [];
                },
                multi: true,
                close: Navigator.of(context).pop,
                getTitle: (suggestion) => suggestion,
                getValue: (suggestion) => suggestion,
              );
          }
          throw Exception(
            'filterContentBuilder should return a Widget for ${filter.key}',
          );
        },
      );

  final BomService bomService;

  static const kProductLine = 'ProductLine';
  static const kProductClass = 'ProductClass';
  static const kProductFamily = 'ProductFamily';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kProductLine))
        EmrFilterModel<List<String>>(key: kProductLine, name: 'Product Line'),
      if (!containsFilter(key: kProductClass))
        EmrFilterModel<List<String>>(key: kProductClass, name: 'Product Class'),
      if (!containsFilter(key: kProductFamily))
        EmrFilterModel<List<String>>(
          key: kProductFamily,
          name: 'Product Family',
        ),
    ];
  }
}
