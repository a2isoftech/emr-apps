import 'dart:convert';

import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/controllers/filters/elv_inventory_search_filter_controller.dart';
import 'package:emr_one_inventory/extensions/beam_search_extensions.dart';
import 'package:emr_one_inventory/extensions/elv_inventory_search_extensions.dart';
import 'package:emr_one_inventory/models/elv_inventory_item.dart';
import 'package:emr_one_inventory/services/elv_inventory_search_service.dart';

class ElvInventorySearchDataSource
    extends EmrQueryGraphQLDataSource<ElvInventoryItem> {
  ElvInventorySearchDataSource({
    required this.elvInventorySearchService,
  });

  final ElvInventorySearchService elvInventorySearchService;

  @override
  bool get supportsFacets => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final searchInput = getSearchInput();

    final order = getSortOrder();

    final (results, meta) = await elvInventorySearchService.searchElvInventory(
      searchElvInventoryInput: searchInput,
      order: order,
      before: before,
      after: after,
      first: first,
      last: last,
    );

    final facetResults = {
      for (final v in meta.facets.searchELVInventoryFacet)
        v.key: EmrFacetResult(
          name: switch (v.value.name) {
            'YardCode' => 'by yard code',
            'LocationCode' => 'by location code',
            'ProductLine' => 'by product line',
            'ItemStatus' => 'by inventory status',
            'VehicleStatus' => 'by vehicle status',
            'PartStatus' => 'by part status',
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

  List<Input$ELVInventory_SearchResultSortInput> getSortOrder() {
    return queryScope.sortOrder
        .map(
          (e) => Input$ELVInventory_SearchResultSortInput.fromJson(
            jsonDecode('{ "${e.field}": "${e.direction}" }')
                as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  Input$SearchELVInventoryInput getSearchInput() {
    final yardCodes =
        _getStringFilterList(ElvInventorySearchFilterController.kYardCode);
    final locationCodes =
        _getStringFilterList(ElvInventorySearchFilterController.kLocationCode);
    final productLines =
        _getStringFilterList(ElvInventorySearchFilterController.kProductLine);
    final itemStatus =
        _getStringFilter(ElvInventorySearchFilterController.kItemStatus)
            ?.replaceAll(' ', '')
            .facetTermToEnum$ItemStatus();
    final vehicleStatuses =
        _getStringFilterList(ElvInventorySearchFilterController.kVehicleStatus)
            ?.map((e) => e.replaceAll(' ', '').facetTermToEnum$VehicleStatus())
            .toList();
    final partStatuses =
        _getStringFilterList(ElvInventorySearchFilterController.kPartStatus)
            ?.map((e) => e.replaceAll(' ', '').facetTermToEnum$PartStatus())
            .toList();

    return Input$SearchELVInventoryInput(
      query: queryScope.query.isEmpty ? null : '*${queryScope.query}*',
      yardCodes: yardCodes,
      locationCodes: locationCodes,
      productLines: productLines,
      itemStatus: itemStatus,
      vehicleStatuses: vehicleStatuses,
      partStatuses: partStatuses,
    );
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();

  String? _getStringFilter(String key) => queryScope.filters[key] as String?;
}
