import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/graphql/fragments/stocktake/stocktake_search_fields.graphql.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/extensions/stocktake_search_extensions.dart';
import 'package:emr_one_stock_take/screens/home/emr_filter_widgets/stock_take_filter_controller.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:flutter/foundation.dart';

class StockTakeDataSource
    extends EmrQueryGraphQLDataSource<Fragment$StocktakeSearchFields> {
  StockTakeDataSource({
    required this.service,
    required this.referenceDataService,
    required this.filterController,
  });

  final StocktakeService service;
  final ReferenceDataService referenceDataService;
  final StockTakeFilterController filterController;

  @override
  bool get supportsFacets => kIsWeb;
  @override
  RowSelectionMode get selectionMode => RowSelectionMode.single;

  @override
  Future<void> refresh() async {
    loading.value = true;
    
    final yardCode = filterController.filters.value.isNotEmpty
        ? filterController.filters.value
                  .firstWhereOrNull(
                    (x) => x.key == StockTakeFilterController.kYards,
                  )
                  ?.value
              as String?
        : null;

    final searchInputs = HelperMethods.getSearchInput(
      queryScope.filters,
      queryScope.query,
      yardCode,
    );
    final order = getSortOrder();

    final (results, meta) = await service.searchStocktakes(
      input: searchInputs,
      order: order,
      before: before,
      after: after,
      first: first,
      last: last,
    );

    final facetResults = {
      for (final v in meta.facets.searchStocktakeFacet)
        v.key: EmrFacetResult(
          name: switch (v.value.name) {
            StockTakeFilterController.kYards => 'by yard',
            StockTakeFilterController.kStatus => 'by status',
            StockTakeFilterController.kProductClasses => 'by product class',
            StockTakeFilterController.kProductFamilies => 'by product family',
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

    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    facets.value = facetResults;
    data.value = results;

    loading.value = false;
  }

  Input$StocktakeSearchInput getSearchInput() {
    EmrDateRangeValue? dateFilter;
    final status = HelperMethods.getStringFilterList(
      queryScope.filters,
      StockTakeFilterController.kStatus,
    )?.map((s) => s.facetTermToEnum$StocktakeStatus()).toList();

    final yardCode = HelperMethods.getStringFilter(
      queryScope.filters,
      StockTakeFilterController.kYards,
    );

    final conductedBy = HelperMethods.getStringFilterList(
      queryScope.filters,
      StockTakeFilterController.kConductedBy,
    );

    if (queryScope.filters[StockTakeFilterController.kDateRange] != null) {
      dateFilter = queryScope.filters[StockTakeFilterController.kDateRange]
              as EmrDateRangeValue;
    }

    return Input$StocktakeSearchInput(
      stocktakeStatuses: status ?? [],
      query: queryScope.query,
      yardCode: yardCode,
      conductedBy: conductedBy ?? [],
      createdBy: [],
      endDate: dateFilter?.endDate,
      startDate: dateFilter?.startDate,
    );
  }

  List<Input$StocktakeSortInput> getSortOrder() {
    const modifiedDate = 'modifiedDate';
    final modifiedDateSortOrder = EmrQueryScopeSortOrder(
      field: modifiedDate,
      direction: EmrQueryScopeSortOrderDirection.desc,
    );
    if (queryScope.sortOrder.isEmpty) {
      queryScope.sortOrder.add(modifiedDateSortOrder);
    } else {
      if (queryScope.sortOrder.length > 1 &&
          queryScope.sortOrder
              .map((toElement) => toElement.field)
              .contains(modifiedDate)) {
        queryScope.sortOrder.removeWhere((x) => x.field == modifiedDate);
      }
    }
    return queryScope.sortOrder.map((e) {
      if (e.field == 'createdDate') {
        return Input$StocktakeSortInput(
          created: Input$CreatedSortInput(
            at: Enum$SortEnumType.fromJson(e.direction.name.toUpperCase()),
          ),
        );
      } else if (e.field == modifiedDate) {
        return Input$StocktakeSortInput(
          modified: Input$ModifiedSortInput(
            at: Enum$SortEnumType.fromJson(e.direction.name.toUpperCase()),
          ),
        );
      }

      return Input$StocktakeSortInput.fromJson(
        jsonDecode('{ "${e.field}": "${e.direction}" }')
            as Map<String, dynamic>,
      );
    }).toList();
  }
}
