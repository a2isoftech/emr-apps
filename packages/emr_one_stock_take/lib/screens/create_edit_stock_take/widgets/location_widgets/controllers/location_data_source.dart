import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/extensions/location_extensions.dart';
import 'package:emr_one_stock_take/models/stocktake_location.dart';
import 'package:emr_one_stock_take/screens/screens.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:flutter/foundation.dart';

class LocationDataSource extends EmrQueryGraphQLDataSource<StocktakeLocation> {
  LocationDataSource({
    required this.service,
    required this.yardCode,
    required this.filterController,
  });

  final StocktakeService service;
  final String yardCode;
  final LocationFilterController filterController;

  final ValueNotifier<List<StocktakeLocation>> allSelectedLocations =
      ValueNotifier([]);

  @override
  bool get supportsFacets => false;

  @override
  RowSelectionMode get selectionMode => RowSelectionMode.multiple;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();

    final productFamilies = filterController.filters.value.isNotEmpty
        ? filterController.filters.value
                  .firstWhereOrNull(
                    (x) => x.key == LocationFilterController.kProductFamily,
                  )
                  ?.value
              as List<String>?
        : null;

    final input = Variables$Query$SearchInventoryLocations(
      input: getFilterInputs(productFamilies: productFamilies),
      before: before,
      after: after,
      first: first,
      last: last,
    );
    final response = await service.searchLocations(input);
    if (response != null) {
      recordCount = response.totalCount;
      pageInfo = EmrQueryGraphQLPageInfo(
        hasPreviousPage: response.pageInfo.hasPreviousPage,
        hasNextPage: response.pageInfo.hasNextPage,
        startCursor: response.pageInfo.startCursor,
        endCursor: response.pageInfo.endCursor,
      );
      data.value =
          response.nodes?.map((s) => s.toStocktakeLocation()).toList() ?? [];
      selection.value = [...allSelectedLocations.value];
      loading.value = false;
    }
  }

  Input$SearchInventoryLocationsInput getFilterInputs({
    String? query,
    List<String>? productFamilies,
  }) {
    final locationCodes = HelperMethods.getStringFilterList(
      queryScope.filters,
      LocationFilterController.kLocationCode,
    );
    final productClasses = HelperMethods.getStringFilterList(
      queryScope.filters,
      LocationFilterController.kProductClass,
    );
    final productCodes = HelperMethods.getStringFilterList(
      queryScope.filters,
      LocationFilterController.kProductCode,
    );
    final productLines = HelperMethods.getStringFilterList(
      queryScope.filters,
      LocationFilterController.kProductLine,
    );

    return Input$SearchInventoryLocationsInput(
      yardCode: yardCode,
      active: true,
      locationCodes: locationCodes,
      productClasses: productClasses,
      productCodes: productCodes,
      productLines: productLines,
      productFamilies: productFamilies,
      query: query ?? queryScope.query,
      type: Enum$InventoryLocationType.WEIGHTED,
    );
  }
}
