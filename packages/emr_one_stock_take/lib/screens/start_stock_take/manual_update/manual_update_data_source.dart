import 'dart:math';

import 'package:emr_one_core/data/emr_query_graphql_data_source.dart';
import 'package:emr_one_core/data/emr_query_graphql_page_info.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/models/models.dart';
import 'package:emr_one_stock_take/screens/review_stocktake/review_location_filter_controller.dart';

class ManualUpdateDataSource
    extends EmrQueryGraphQLDataSource<EditableStockLocations> {
  ManualUpdateDataSource({
    required List<EditableStockLocations> allLocations,
  }) : _allLocations = allLocations;

  final List<EditableStockLocations> _allLocations;

  @override
  bool get supportsFacets => false;

  @override
  bool get autoPopulate => true;

  @override
  bool get supportsPaging => false;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();

    final filtered = _applyLocalFilter(_allLocations);
    final paged = _applyLocalPaging(filtered);

    recordCount = filtered.length;
    pageInfo = EmrQueryGraphQLPageInfo(
      hasPreviousPage: _offset > 0,
      hasNextPage: _offset + paged.length < filtered.length,
      startCursor: '$_offset',
      endCursor: '${_offset + paged.length}',
    );
    data.value = paged;
    loading.value = false;
  }

  List<EditableStockLocations> _applyLocalFilter(
    List<EditableStockLocations> list,
  ) {
    final locationCodes = HelperMethods.getStringFilterList(
          queryScope.filters,
          ReviewLocationFilterController.kLocationCode,
        ) ??
        [];
    final productClasses = HelperMethods.getStringFilterList(
          queryScope.filters,
          ReviewLocationFilterController.kProductClass,
        ) ??
        [];
    final productCodes = HelperMethods.getStringFilterList(
          queryScope.filters,
          ReviewLocationFilterController.kProductCode,
        ) ??
        [];
    final productLines = HelperMethods.getStringFilterList(
          queryScope.filters,
          ReviewLocationFilterController.kProductLine,
        ) ??
        [];
    final searchQuery = queryScope.query.toLowerCase();

    return list.where((loc) {
      final matchesCode =
          locationCodes.isEmpty || locationCodes.contains(loc.locationCode);
      final matchesClass =
          productClasses.isEmpty || productClasses.contains(loc.productClass);
      final matchesLine =
          productLines.isEmpty || productLines.contains(loc.productLine);
      final matchesProduct =
          productCodes.isEmpty || productCodes.contains(loc.productCode);
      final matchesQuery = searchQuery.isEmpty ||
          loc.locationCode.toLowerCase().contains(searchQuery) ||
          loc.productCode.toLowerCase().contains(searchQuery) ||
          loc.description.toLowerCase().contains(searchQuery);

      return matchesCode &&
          matchesClass &&
          matchesLine &&
          matchesProduct &&
          matchesQuery;
    }).toList();
  }

  List<EditableStockLocations> _applyLocalPaging(
    List<EditableStockLocations> list,
  ) {
    final limit = first ?? last ?? 20;
    final start = _offset;

    return list.skip(start).take(limit).toList();
  }

  int get _offset {
    if (after != null) return int.tryParse(after!) ?? 0;
    if (before != null && last != null) {
      final beforeOffset = int.tryParse(before!) ?? 0;
      return max(0, beforeOffset - last!);
    }
    return 0;
  }
}
