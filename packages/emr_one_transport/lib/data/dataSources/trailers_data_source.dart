import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/filters/facet_response_value.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/trailers/transport_trailer.dart';
import 'package:emr_one_transport/data/services/trailer_service.dart';

class TrailerDataSource extends EmrQueryDataSource<TransportTrailer>
    with EmrQueryDataSourcePager<TransportTrailer> {
  TrailerDataSource({required this.trailerService});

  final TrailerService trailerService;
  List<TransportTrailer> trailersData = [];

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
        sortBy: StringConstants.assetCode,
        sortOrder: StringConstants.desc,
        includeFacets: true,
      );

      sortByColumn(payload);
      appendFiltersToSearch(payload);

      final result = await trailerService.searchTrailers(payload);

      var trailerSearchcount = 0;
      if (result.data != null && result.isSuccess) {
        trailersData = result.data ?? [];
        trailerSearchcount = result.totalItems;
      }

      recordCount = trailerSearchcount;
      pageInfo.hasNextPage = pageNumber < (recordCount ~/ pageSize) + 1;
      pageInfo.hasPreviousPage = pageNumber > 1;
      data.value = trailersData;

      if (result.facets != null) {
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

  void appendFiltersToSearch(PagedFilterRequest model) {
    model.filters = {};
    if (queryScope.filters[StringConstants.yard] != null) {
      final dispatchYards =
          queryScope.filters[StringConstants.yard] as List<String>;
      model.filters![StringConstants.dispatchYards] = dispatchYards;
    }
    if (queryScope.filters[StringConstants.trailerType] != null) {
      final trailerType =
          queryScope.filters[StringConstants.trailerType] as List<String>;
      model.filters![StringConstants.trailerTypeFilter] = trailerType;
    }
    if (queryScope.filters[StringConstants.status] != null) {
      final statuses =
          queryScope.filters[StringConstants.status] as List<String>;
      model.filters![StringConstants.statusFilter] = statuses;
    }
    if (queryScope.filters[StringConstants.condition] != null) {
      final conditions =
          queryScope.filters[StringConstants.condition] as List<String>;
      model.filters![StringConstants.conditionFilter] = conditions;
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
        StringConstants.yardFacet => StringConstants.yard,
        StringConstants.typeFacet => StringConstants.trailerType,
        StringConstants.statusFacet => StringConstants.status,
        StringConstants.conditionFacet => StringConstants.condition,
        StringConstants.modelFacet => StringConstants.model,
        _ => k,
      };
}
