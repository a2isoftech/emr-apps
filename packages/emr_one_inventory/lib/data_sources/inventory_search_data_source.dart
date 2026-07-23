import 'dart:convert';

import 'package:emr_core_api/graphql/queries/inventory/search_inventory/search_inventory.graphql.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/controllers/filters/inventory_search_filter_controller.dart';
import 'package:emr_one_inventory/services/inventory_search_service.dart';

class InventorySearchDataSource extends EmrQueryGraphQLDataSource<
    Query$SearchInventory$searchInventory$nodes> {
  InventorySearchDataSource({
    required this.inventorySearchService,
  });

  final InventorySearchService inventorySearchService;

  @override
  bool get supportsFacets => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final searchInput = getSearchInput();

    final order = getSortOrder();

    final (results, meta) = await inventorySearchService.searchInventory(
      searchInventoryInput: searchInput,
      order: order,
      before: before,
      after: after,
      first: first,
      last: last,
    );

    final facetResults = {
      for (final v in meta.facets.searchInventoryFacets)
        v.key: EmrFacetResult(
          name: switch (v.value.name) {
            'YardCode' => 'by yard code',
            'ProductCode' => 'by product',
            'ProductLine' => 'by product line',
            'ProductGroup' => 'by product group',
            _ => ''
          },
          values: v.value.values
                  ?.map(
                    (e) => EmrFacetResultValue(
                      text: e?.range?.toUpperCase() ?? '',
                      value: e?.range ?? '',
                      count: e?.count ?? 0,
                    ),
                  )
                  .toList() ??
              [],
        ),
    };

    // Update the data source with the new data.
    // NOTE: data.value MUST ALWAYS BE SET LAST WHEN USING PAGING.
    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    facets.value = facetResults;
    data.value = results;

    loading.value = false;
  }

  List<Input$InventorySearchResultSortInput> getSortOrder() {
    return queryScope.sortOrder
        .map(
          (e) => Input$InventorySearchResultSortInput.fromJson(
            jsonDecode('{ "${e.field}": "${e.direction}" }')
                as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  Input$SearchInventoryInput getSearchInput() {
    final yardCodes =
        _getStringFilterList(InventorySearchFilterController.kYardCode);
    final productCodes =
        _getStringFilterList(InventorySearchFilterController.kProduct);
    final productLines =
        _getStringFilterList(InventorySearchFilterController.kProductLine);
    final productClasses =
        _getStringFilterList(InventorySearchFilterController.kProductClass);

    return Input$SearchInventoryInput(
      query: queryScope.query.isEmpty ? null : '*${queryScope.query}*',
      yardCodes: yardCodes,
      productCodes: productCodes,
      productLines: productLines,
      productClasses: productClasses,
    );
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();
}
