import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/filters/facet_response_value.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/trucks/transport_truck.dart';
import 'package:emr_one_transport/data/services/truck_service.dart';

class TruckDataSource extends EmrQueryDataSource<TransportTruck>
    with EmrQueryDataSourcePager<TransportTruck> {
  TruckDataSource({required this.truckService});

  final TruckService truckService;
  List<TransportTruck> trucksData = [];
  late bool isInternal = true;

  @override
  bool get supportsPaging => true;

  @override
  bool get supportsFacets => true;

  @override
  Future<void> moveToStart() async {
    pageNumber = 1;
    await refresh();
  }

  @override
  Future<void> moveToPrevious() async {
    if (pageNumber > 1) {
      pageNumber--;
      await refresh();
    }
  }

  @override
  Future<void> moveToNext() async {
    pageNumber++;
    await refresh();
  }

  @override
  Future<void> moveToEnd() async {
    pageNumber = (recordCount ~/ pageSize) + 1;
    await refresh();
  }

  @override
  Future<void> pageSizeChange(int newPageSize) {
    pageSize = newPageSize;
    pageNumber = 1;
    return refresh();
  }

  @override
  Future<void> refresh() async {
    loading.value = true;

    try {
      final payload = PagedFilterRequest(
        pageNumber,
        pageSize,
        searchTerm: queryScope.query.isNotEmpty
            ? '${queryScope.query}*'
            : queryScope.query,
        sortBy: StringConstants.vrm.toLowerCase(),
        sortOrder: StringConstants.asc,
        includeFacets: true,
        filters: {
          StringConstants.hauliertype: [
            (isInternal ? HaulierType.internal : HaulierType.managed)
                .toString(),
          ],
        },
      );

      sortByColumn(payload);
      appendFiltersToSearch(payload);
      final result = await truckService.searchTrucks(payload);
      var trucksSearchcount = 0;
      if (result.data != null && result.isSuccess) {
        trucksData = result.data ?? [];
        trucksSearchcount = result.totalItems;
      }

      recordCount = trucksSearchcount;
      pageInfo.hasNextPage = pageNumber < (recordCount ~/ pageSize) + 1;
      pageInfo.hasPreviousPage = pageNumber > 1;
      data.value = trucksData;

      if (result.facets != null) {
        result.facets?.removeWhere(
          (k, v) =>
              !isInternal &&
              (k == StringConstants.dispatchYardFacet ||
                  k == StringConstants.conditionFacet),
        );

        facets.value = result.facets!.map(
          (k, v) => MapEntry(
            _getFacetTitle(k),
            EmrFacetResult(
              name: 'BY $k',
              values: v.values
                  .where(
                    (x) => x.range != 'NULL_VALUE' && x.range != 'EMPTY_STRING',
                  )
                  .map(
                    (e) => _getFacetValue(k, e),
                  )
                  .toList(),
            ),
          ),
        );
      }

      await onRefresh.call();
    } finally {
      loading.value = false;
    }
  }

  EmrFacetResultValue _getFacetValue(String key, FacetResponseValue e) {
    return EmrFacetResultValue(
      text: e.range ?? StringConstants.noData,
      value: e.range ?? StringConstants.noData,
      count: e.count.toInt(),
    );
  }

  void regeneratePayload({required bool isInternalTruck}) {
    if (isInternal != isInternalTruck) {
      isInternal = isInternalTruck;
    }
  }

  void appendFiltersToSearch(PagedFilterRequest model) {
    if (queryScope.filters[StringConstants.yard] != null) {
      final dispatchYards =
          queryScope.filters[StringConstants.yard] as List<String>;
      model.filters![StringConstants.dispatchYards] = dispatchYards;
    }
    if (queryScope.filters[StringConstants.truckTypeFilter] != null) {
      final truckType =
          queryScope.filters[StringConstants.truckTypeFilter] as List<String>;
      model.filters![StringConstants.truckType] = truckType;
    }
    if (queryScope.filters[StringConstants.status] != null) {
      final statuses =
          queryScope.filters[StringConstants.status] as List<String>;
      model.filters![StringConstants.lifeCycleStatus] = statuses;
    }
    if (queryScope.filters[StringConstants.condition] != null) {
      final conditions =
          queryScope.filters[StringConstants.condition] as List<String>;
      model.filters![StringConstants.conditionFilter] = conditions;
    }
    if (queryScope.filters[StringConstants.haulier] != null) {
      final hauliers =
          queryScope.filters[StringConstants.haulier] as List<String>;
      model.filters![StringConstants.haulierCodeFilter] = hauliers;
    }
  }

  void sortByColumn(PagedFilterRequest payload) {
    if (queryScope.sortOrder.isNotEmpty) {
      final sortByColumn = queryScope.sortOrder.last;
      queryScope.sortOrder = [];
      queryScope.sortOrder.add(sortByColumn);

      payload.sortBy = sortByColumn.field;
      payload.sortOrder = sortByColumn.direction.toString().toLowerCase();
    }
  }

  String _getFacetTitle(String k) => switch (k) {
        StringConstants.dispatchYardFacet => StringConstants.yard,
        StringConstants.typeFacet => StringConstants.truckTypeFilter,
        StringConstants.statusFacet => StringConstants.status,
        StringConstants.conditionFacet => StringConstants.condition,
        _ => k,
      };
}
