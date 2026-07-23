import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/standing_order/standing_order_filter_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/filters/facet_response_value.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/standing_order/standing_order.dart';
import 'package:emr_one_transport/data/services/standing_order_service.dart';

class StandingOrderDataSource extends EmrQueryDataSource<StandingOrder>
    with EmrQueryDataSourcePager<StandingOrder> {
  StandingOrderDataSource({required this.standingOrderService});

  final StandingOrderService standingOrderService;
  List<StandingOrder> standingOrderdata = [];

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
        sortBy: StringConstants.standingOrderNumber.toLowerCase(),
        sortOrder: StringConstants.desc,
        includeFacets: true,
      );

      sortbycolumn(payload);
      appendFiltersToSearch(payload);

      final result = await standingOrderService.searchStandingOrders(payload);

      var jobsearchcount = 0;
      if (result.data != null && result.isSuccess) {
        standingOrderdata = result.data ?? [];
        jobsearchcount = result.totalItems;
      }

      recordCount = jobsearchcount;
      pageInfo.hasNextPage = pageNumber < (recordCount ~/ pageSize) + 1;
      pageInfo.hasPreviousPage = pageNumber > 1;
      data.value = standingOrderdata;

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

  EmrFacetResultValue _getFacetValue(String key, FacetResponseValue e) =>
      switch (key) {
        StringConstants.jobTypeDisplay => getJobTypeFacetValue(e),
        _ => EmrFacetResultValue(
            text: e.range ?? StringConstants.noData,
            value: e.range ?? StringConstants.noData,
            count: e.count.toInt(),
          )
      };

  String _getFacetTitle(String k) => switch (k) {
        StringConstants.dispatchYardDisplay =>
          StandingOrderFilterController.kYards,
        StringConstants.status => StandingOrderFilterController.kStatus,
        StringConstants.jobTypeDisplay =>
          StandingOrderFilterController.kJobType,
        StringConstants.containerTypeDisplay =>
          StandingOrderFilterController.kContainerType,
        _ => k,
      };

  EmrFacetResultValue getJobTypeFacetValue(FacetResponseValue e) {
    return EmrFacetResultValue(
      text: jobTypeFromApiValue(e.range ?? '').toString(),
      value: e.range ?? StringConstants.noData,
      count: e.count.toInt(),
    );
  }

  void appendFiltersToSearch(PagedFilterRequest model) {
    model.filters = {};
    if (queryScope.filters[StandingOrderFilterController.kDateRange] != null) {
      final rangefilter =
          queryScope.filters[StandingOrderFilterController.kDateRange]
              as EmrDateRangeValue;
      model.filters?[StringConstants.startDate] = [
        rangefilter.startDate.toString(),
      ];
      model.filters?[StringConstants.endDate] = [
        rangefilter.endDate.toString(),
      ];
    }
    if (queryScope.filters[StandingOrderFilterController.kContainerType] !=
        null) {
      final containerTypes =
          queryScope.filters[StandingOrderFilterController.kContainerType]
              as List<String>;
      model.filters![StringConstants.containerTypes] = containerTypes;
    }
    if (queryScope.filters[StandingOrderFilterController.kJobType] != null) {
      final jobTypes = queryScope
          .filters[StandingOrderFilterController.kJobType] as List<String>;
      model.filters![StringConstants.jobTypes] = jobTypes;
    }
    if (queryScope.filters[StandingOrderFilterController.kStatus] != null) {
      final statuses = queryScope.filters[StandingOrderFilterController.kStatus]
          as List<String>;
      model.filters![StringConstants.statuses] = statuses;
    }
    if (queryScope.filters[StandingOrderFilterController.kStartLocation] !=
        null) {
      final startlocationcodes =
          queryScope.filters[StandingOrderFilterController.kStartLocation]
              as List<String>;
      model.filters![StringConstants.startlocationcodes] = startlocationcodes;
    }
    if (queryScope.filters[StandingOrderFilterController.kYards] != null) {
      final dispatchyards = queryScope
          .filters[StandingOrderFilterController.kYards] as List<String>;
      model.filters![StringConstants.dispatchYards] = dispatchyards;
    }
    if (queryScope.filters[StandingOrderFilterController.kEndLocation] !=
        null) {
      final endlocationcodes = queryScope
          .filters[StandingOrderFilterController.kEndLocation] as List<String>;
      model.filters![StringConstants.endlocationcodes] = endlocationcodes;
    }

    if (queryScope.filters[StandingOrderFilterController.kActionLocation] !=
        null) {
      final customerlocationcodes =
          queryScope.filters[StandingOrderFilterController.kActionLocation]
              as List<String>;
      model.filters![StringConstants.customerlocationcodes] =
          customerlocationcodes;
    }
  }

  void sortbycolumn(PagedFilterRequest payload) {
    if (queryScope.sortOrder.isNotEmpty) {
      final sortbycolumn = queryScope.sortOrder.last;
      queryScope.sortOrder = [];
      queryScope.sortOrder.add(sortbycolumn);

      payload.sortBy = sortbycolumn.field;
      payload.sortOrder = sortbycolumn.direction.toString().toLowerCase();
    }
  }
}
