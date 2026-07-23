import 'package:emr_core_api/graphql/queries/inventory/production/search_products.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/services/production/bom_service.dart';
import 'package:flutter/material.dart';

class BomSearchFilterController extends EmrFilterController {
  BomSearchFilterController({required this.bomService})
    : super(
        filters: [
          EmrFilterModel<String>(
            key: kActive,
            name: kActive,
            enableDelete: false,
            value: 'Active',
            textBuilder: (context, filterModel) {
              final value = (filterModel as EmrFilterModel<String>).value;
              return Text('Show: $value');
            },
          ),
        ],
        filterContentBuilder: (context, filter, controller) {
          switch (filter.key) {
            case kProduct:
              return EmrFilterAutoComplete<String, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) async {
                  final products = await bomService.searchProducts(
                    Variables$Query$SearchProducts(query: pattern),
                  );
                  return products?.nodes
                          ?.map((product) => product.code)
                          .toList() ??
                      [];
                },
                multi: true,
                close: Navigator.of(context).pop,
                getTitle: (suggestion) => suggestion,
                getValue: (suggestion) => suggestion,
              );
            case kActive:
              return EmrFilterAutoComplete<String, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) =>
                    Future.value(['Active', 'Inactive', 'All']),
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

  static const kProduct = 'Products';
  static const kActive = 'Active';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kProduct))
        EmrFilterModel<List<String>>(key: kProduct, name: 'Product'),
      if (!containsFilter(key: kActive))
        EmrFilterModel<String>(key: kActive, name: 'Active'),
    ];
  }
}
