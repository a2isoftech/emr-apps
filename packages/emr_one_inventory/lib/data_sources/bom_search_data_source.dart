import 'package:emr_core_api/graphql/queries/inventory/production/search_boms.graphql.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/controllers/filters/bom_search_filter_controller.dart';
import 'package:emr_one_inventory/services/production/bom_service.dart';
import 'package:flutter/foundation.dart';

class BomSearchDataSource
    extends EmrQueryGraphQLDataSource<Query$SearchBoms$searchBoms$nodes> {
  BomSearchDataSource({required this.bomService});

  final BomService bomService;

  @override
  bool get supportsFacets => kIsWeb;

  @override
  bool get autoPopulate => true;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();

    final searchInput = _getSearchInput();
    final (results, meta) = await bomService.searchBoms(
      searchBomInput: searchInput,
      pageSize: pageSize,
      before: before,
      after: after,
      first: first,
      last: last,
    );

    final facetsResult = {
      for (final v in meta.facets.searchBomFacet)
        v.key: EmrFacetResult(
          name: switch (v.value.name) {
            BomSearchFilterController.kProduct => 'by product',
            _ => '',
          },
          values:
              v.value.values
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

    recordCount = results?.totalCount ?? 0;
    pageInfo = meta.pageInfo;

    data.value = results?.nodes ?? [];
    facets.value = facetsResult;
    loading.value = false;
  }

  Input$SearchBomInput _getSearchInput() {
    final filters = queryScope.filters;
    final productCodes =
        (filters[BomSearchFilterController.kProduct] as List<String>?)
            ?.whereType<String>()
            .toList() ??
        [];

    final viewMode = _getViewMode(
      filters[BomSearchFilterController.kActive] as String?,
    );

    return Input$SearchBomInput(
      query: queryScope.query.isNotEmpty ? queryScope.query : '',
      productCodes: productCodes,
      viewMode: viewMode,
    );
  }

  Enum$ViewMode _getViewMode(String? option) {
    switch (option) {
      case 'Inactive':
        return Enum$ViewMode.INACTIVE;
      case 'All':
        return Enum$ViewMode.ALL;
      case 'Active':
      default:
        return Enum$ViewMode.ACTIVE;
    }
  }
}
