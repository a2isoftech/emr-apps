import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/planner/planner_filter_controller.dart';
import 'package:emr_one_transport/data/helpers/date_range_filter_helper.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/filters/facet_response_value.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/plans/plan_response.dart';
import 'package:emr_one_transport/data/planner/plan_service.dart';
import 'package:flutter/material.dart';

class PlanListDataSource extends EmrQueryDataSource<PlanResponse>
    with EmrQueryDataSourcePager<PlanResponse> {
  PlanListDataSource({required this.planService});

  final PlanService planService;
  List<PlanResponse> planList = [];
  ValueNotifier<(Map<String, int>, int)> jobStatuses = ValueNotifier((
    <String, int>{},
    0,
  ));

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
        sortBy: StringConstants.planNumberSortType,
        sortOrder: StringConstants.desc,
        includeFacets: true,
      );

      sortByColumn(payload);
      appendFiltersToSearch(payload);

      final result = await planService.getPlans(payload);

      var planCount = 0;
      if (result.data != null && result.isSuccess) {
        planList = result.data ?? [];
        planCount = result.totalItems;
      }

      recordCount = planCount;
      pageInfo.hasNextPage = pageNumber < (recordCount ~/ pageSize) + 1;
      pageInfo.hasPreviousPage = pageNumber > 1;
      data.value = planList;

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
                  .map((e) => _getFacetValue(k, e))
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
        StringConstants.plantypeDisplay => getPlanTypeFacetValue(e),
        _ => EmrFacetResultValue(
          text: e.range ?? StringConstants.noData,
          value: e.range ?? StringConstants.noData,
          count: e.count.toInt(),
        ),
      };

  String _getFacetTitle(String k) => switch (k) {
    StringConstants.planningYard => PlannerFilterController.kYards,
    StringConstants.jobTypeDisplay => PlannerFilterController.kJobType,
    StringConstants.containerTypeDisplay =>
      PlannerFilterController.kContainerType,
    StringConstants.plantypeDisplay => PlannerFilterController.kPlanType,
    StringConstants.productFamilyDisplay =>
      PlannerFilterController.kProductFamily,
    _ => k,
  };

  EmrFacetResultValue getJobTypeFacetValue(FacetResponseValue e) {
    return EmrFacetResultValue(
      text: jobTypeFromApiValue(e.range ?? '').toString(),
      value: e.range ?? StringConstants.noData,
      count: e.count.toInt(),
    );
  }

  EmrFacetResultValue getPlanTypeFacetValue(FacetResponseValue e) {
    return EmrFacetResultValue(
      text: displayFlowType(e.range ?? ''),
      value: e.range ?? StringConstants.noData,
      count: e.count.toInt(),
    );
  }

  void appendFiltersToSearch(PagedFilterRequest model) {
    model.filters = {};
    if (queryScope.filters[PlannerFilterController.kFromTo] != null) {
      var dateranges = <DateTime>[];
      final dateRangevalue =
          queryScope.filters[PlannerFilterController.kFromTo] as String;
      dateranges = DateRangeFilterHelper.getDateRangeForFilter(dateRangevalue);

      model.filters![StringConstants.startDate] = [dateranges[0].toString()];
      model.filters![StringConstants.endDate] = [dateranges[1].toString()];
    }
    if (queryScope.filters[PlannerFilterController.kDateRange] != null) {
      final rangefilter =
          queryScope.filters[PlannerFilterController.kDateRange]
              as EmrDateRangeValue;
      model.filters![StringConstants.startDate] = [
        rangefilter.startDate.toString(),
      ];
      model.filters![StringConstants.endDate] = [
        rangefilter.endDate.toString(),
      ];
    }
    if (queryScope.filters[PlannerFilterController.kContainerType] != null) {
      final containerTypes =
          queryScope.filters[PlannerFilterController.kContainerType]
              as List<String>;
      model.filters![StringConstants.containerTypes] = containerTypes;
    }
    if (queryScope.filters[PlannerFilterController.kJobType] != null) {
      final jobTypes =
          queryScope.filters[PlannerFilterController.kJobType] as List<String>;
      model.filters![StringConstants.jobTypes] = jobTypes;
    }
    if (queryScope.filters[PlannerFilterController.kPlanType] != null) {
      final planType =
          queryScope.filters[PlannerFilterController.kPlanType] as List<String>;
      model.filters![StringConstants.planTypes] = planType;
    }
    if (queryScope.filters[PlannerFilterController.kYards] != null) {
      final dispatchyards =
          queryScope.filters[PlannerFilterController.kYards] as List<String>;
      model.filters![StringConstants.dispatchYards] = dispatchyards;
    }
    if (queryScope.filters[PlannerFilterController.kStartLocation] != null) {
      final startlocationcodes =
          queryScope.filters[PlannerFilterController.kStartLocation]
              as List<String>;
      model.filters![StringConstants.startlocationcodes] = startlocationcodes;
    }

    if (queryScope.filters[PlannerFilterController.kEndLocation] != null) {
      final endlocationcodes =
          queryScope.filters[PlannerFilterController.kEndLocation]
              as List<String>;
      model.filters![StringConstants.endlocationcodes] = endlocationcodes;
    }

    if (queryScope.filters[PlannerFilterController.kActionLocation] != null) {
      final customerlocationcodes =
          queryScope.filters[PlannerFilterController.kActionLocation]
              as List<String>;
      model.filters![StringConstants.customerlocationcodes] =
          customerlocationcodes;
    }
    if (queryScope.filters[PlannerFilterController.kHauliers] != null) {
      final hauliers =
          queryScope.filters[PlannerFilterController.kHauliers] as List<String>;
      model.filters![StringConstants.hauliers] = hauliers;
    }
    if (queryScope.filters[PlannerFilterController.kProductFamily] != null) {
      final productFamily =
          queryScope.filters[PlannerFilterController.kProductFamily]
              as List<String>;
      model.filters![StringConstants.productFamilyFilter] = productFamily;
    }
    if (queryScope.filters[PlannerFilterController.kProducts] != null) {
      final products =
          queryScope.filters[PlannerFilterController.kProducts] as List<String>;
      model.filters![StringConstants.products] = products;
    }
    if (queryScope.filters[PlannerFilterController.kJobStatuses] != null) {
      final jobStatus =
          queryScope.filters[PlannerFilterController.kJobStatuses]
              as List<String>;
      model.filters![StringConstants.jobStatuses] = jobStatus;
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

  Future<void> exportPlan() async {
    try {
      loading.value = true;

      final payload = PagedFilterRequest(
        pageNumber,
        pageSize,
        searchTerm: queryScope.query.isNotEmpty
            ? '${queryScope.query}*'
            : queryScope.query,
        sortBy: StringConstants.planNumberSortType,
        sortOrder: StringConstants.desc,
        includeFacets: false,
      );

      sortByColumn(payload);
      appendFiltersToSearch(payload);

      await planService.exportPlans(payload);
    } finally {
      loading.value = false;
    }
  }
}
