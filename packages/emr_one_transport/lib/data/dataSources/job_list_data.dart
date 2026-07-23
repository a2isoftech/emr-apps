import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/jobs/joblist_search_filter_controller.dart';
import 'package:emr_one_transport/data/helpers/date_range_filter_helper.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/filters/facet_response_value.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';

class JobListsDataSource extends EmrQueryDataSource<JobList>
    with EmrQueryDataSourcePager<JobList> {
  JobListsDataSource({required this.jobListService});

  final JobListService jobListService;
  List<JobList> joblistdata = [];

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
        sortBy: StringConstants.jobNumber,
        sortOrder: StringConstants.desc,
        includeFacets: true,
      );

      sortbycolumn(payload);
      appendFiltersToSearch(payload);

      final result = await jobListService.searchJobs(payload);

      var jobsearchcount = 0;
      if (result.data != null && result.isSuccess) {
        joblistdata = result.data ?? [];
        jobsearchcount = result.totalItems;
      }

      recordCount = jobsearchcount;
      pageInfo.hasNextPage = pageNumber < (recordCount ~/ pageSize) + 1;
      pageInfo.hasPreviousPage = pageNumber > 1;
      data.value = joblistdata;

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
        StringConstants.hasJobContainerImagesDisplay =>
          getHasJobContainerImagesFacetValue(e),
        _ => EmrFacetResultValue(
          text: e.range ?? StringConstants.noData,
          value: e.range ?? StringConstants.noData,
          count: e.count.toInt(),
        ),
      };

  String _getFacetTitle(String k) => switch (k) {
    StringConstants.dispatchYardDisplay => JobListSearchFilterController.kYards,
    StringConstants.jobStatusDisplay =>
      JobListSearchFilterController.kJobStatus,
    StringConstants.jobTypeDisplay => JobListSearchFilterController.kJobType,
    StringConstants.containerTypeDisplay =>
      JobListSearchFilterController.kContainerType,
    StringConstants.jobSourceDisplay =>
      JobListSearchFilterController.kJobSource,
    StringConstants.hasJobContainerImagesDisplay =>
      JobListSearchFilterController.kHasJobContainerImages,
    StringConstants.productFamilyDisplay =>
      JobListSearchFilterController.kProductFamily,
    _ => k,
  };

  EmrFacetResultValue getJobTypeFacetValue(FacetResponseValue e) {
    return EmrFacetResultValue(
      text: jobTypeFromApiValue(e.range ?? '').toString(),
      value: e.range ?? StringConstants.noData,
      count: e.count.toInt(),
    );
  }

  EmrFacetResultValue getHasJobContainerImagesFacetValue(FacetResponseValue e) {
    return EmrFacetResultValue(
      text: e.range != null
          ? getValueForHasJobContainerImageFilter(e.range!)
          : '',
      value: e.range ?? StringConstants.noData,
      count: e.count.toInt(),
    );
  }

  String getValueForHasJobContainerImageFilter(String value) {
    return value == StringConstants.falseString
        ? StringConstants.no
        : StringConstants.yes;
  }

  void appendFiltersToSearch(PagedFilterRequest model) {
    model.filters = {};
    if (queryScope.filters[JobListSearchFilterController.kFromTo] != null) {
      var dateranges = <DateTime>[];
      final dateRangevalue =
          queryScope.filters[JobListSearchFilterController.kFromTo] as String;
      dateranges = DateRangeFilterHelper.getDateRangeForFilter(dateRangevalue);

      model.filters?[StringConstants.startDate] = [dateranges[0].toString()];
      model.filters?[StringConstants.endDate] = [dateranges[1].toString()];
    }
    if (queryScope.filters[JobListSearchFilterController.kDateRange] != null) {
      final rangefilter =
          queryScope.filters[JobListSearchFilterController.kDateRange]
              as EmrDateRangeValue;
      model.filters?[StringConstants.startDate] = [
        rangefilter.startDate.toString(),
      ];
      model.filters?[StringConstants.endDate] = [
        rangefilter.endDate.toString(),
      ];
    }
    if (queryScope.filters[JobListSearchFilterController.kContainerType] !=
        null) {
      final containerTypes =
          queryScope.filters[JobListSearchFilterController.kContainerType]
              as List<String>;
      model.filters![StringConstants.containerTypes] = containerTypes;
    }
    if (queryScope.filters[JobListSearchFilterController.kJobType] != null) {
      final jobTypes =
          queryScope.filters[JobListSearchFilterController.kJobType]
              as List<String>;
      model.filters![StringConstants.jobTypes] = jobTypes;
    }
    if (queryScope.filters[JobListSearchFilterController.kJobStatus] != null) {
      final jobStatuses =
          queryScope.filters[JobListSearchFilterController.kJobStatus]
              as List<String>;
      model.filters![StringConstants.jobStatuses] = jobStatuses;
    }
    if (queryScope.filters[JobListSearchFilterController.kYards] != null) {
      final dispatchyards =
          queryScope.filters[JobListSearchFilterController.kYards]
              as List<String>;
      model.filters![StringConstants.dispatchYards] = dispatchyards;
    }
    if (queryScope.filters[JobListSearchFilterController.kStartLocation] !=
        null) {
      final startlocationcodes =
          queryScope.filters[JobListSearchFilterController.kStartLocation]
              as List<String>;
      model.filters![StringConstants.startlocationcodes] = startlocationcodes;
    }

    if (queryScope.filters[JobListSearchFilterController.kEndLocation] !=
        null) {
      final endlocationcodes =
          queryScope.filters[JobListSearchFilterController.kEndLocation]
              as List<String>;
      model.filters![StringConstants.endlocationcodes] = endlocationcodes;
    }

    if (queryScope.filters[JobListSearchFilterController.kActionLocation] !=
        null) {
      final customerlocationcodes =
          queryScope.filters[JobListSearchFilterController.kActionLocation]
              as List<String>;
      model.filters![StringConstants.customerlocationcodes] =
          customerlocationcodes;
    }

    if (queryScope.filters[JobListSearchFilterController.kJobSource] != null) {
      final sources =
          queryScope.filters[JobListSearchFilterController.kJobSource]
              as List<String>;
      model.filters![StringConstants.jobSourcesFilter] = sources;
    }

    if (queryScope.filters[StringConstants.haulier] != null) {
      final hauliers =
          queryScope.filters[StringConstants.haulier] as List<String>;
      model.filters![StringConstants.haulierCodeFilter] = hauliers;
    }

    if (queryScope.filters[JobListSearchFilterController
            .kHasJobContainerImages] !=
        null) {
      final selectedOptions =
          queryScope.filters[JobListSearchFilterController
                  .kHasJobContainerImages]
              as List<String>;
      model.filters![StringConstants.hasJobContainerImagesFilter] =
          selectedOptions;
    }

    if (queryScope.filters[JobListSearchFilterController.kProductFamily] !=
        null) {
      final productFamily =
          queryScope.filters[JobListSearchFilterController.kProductFamily]
              as List<String>;
      model.filters![StringConstants.productFamilyFilter] = productFamily;
    }
    if (queryScope.filters[JobListSearchFilterController.kProducts] != null) {
      final products =
          queryScope.filters[JobListSearchFilterController.kProducts]
              as List<String>;
      model.filters![StringConstants.products] = products;
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
