import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/jobs/joblist_search_data_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/date_range_value.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/jobs/joblist_filter.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/shared_preferences_service.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class JobListSearchFilterController extends EmrFilterController {
  JobListSearchFilterController(
    this._sharedPrefs, {
    required this.dataController,
  }) : super(
         filterContentBuilder: (context, filter, controller) {
           switch (filter.key) {
             case kFromTo:
               final index = controller.filters.value.indexWhere(
                 (e) => e.key == kDateRange,
               );
               if (index >= 0) {
                 controller.removeFilter(index);
               }
               return EmrFilterAutoComplete<String, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   return dataController.allFromToDateRanges;
                 },
                 close: () {
                   Navigator.of(context).pop();
                 },
                 getTitle: (p0) => p0,
                 getValue: (p0) => p0,
               );
             case kDateRange:
               final index = controller.filters.value.indexWhere(
                 (e) => e.key == kFromTo,
               );
               if (index >= 0) {
                 controller.removeFilter(index);
               }
               return EmrFilterDateRangePicker(
                 filterModel: filter as EmrFilterModel<EmrDateRangeValue>,
                 controller: controller,
               );
             case kYards:
               return EmrFilterAutoComplete<DispatchYards, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   return dataController.allYards
                       .where(
                         (e) => (e.yardCode ?? '').toLowerCase().contains(
                           pattern.toLowerCase(),
                         ),
                       )
                       .toList();
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (p0) => '${p0.yardCode}',
                 getValue: (p0) => '${p0.yardCode}',
                 multi: true,
               );
             case kContainerType:
               return EmrFilterAutoComplete<ListDetails, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   return dataController.allContainerTypes
                       .where(
                         (e) => (e.description ?? '').toLowerCase().contains(
                           pattern.toLowerCase(),
                         ),
                       )
                       .toList();
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (p0) => p0.description ?? '',
                 getValue: (p0) => p0.description ?? '',
                 multi: true,
               );
             case kJobType:
               return EmrFilterAutoComplete<ListDetails, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   return dataController.allJobTypes
                       .where(
                         (e) => (e.code ?? '').toLowerCase().contains(
                           pattern.toLowerCase(),
                         ),
                       )
                       .toList();
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (p0) => '${p0.description}',
                 getValue: (p0) => '${p0.code}',
                 multi: true,
               );
             case kJobStatus:
               return EmrFilterAutoComplete<ListDetails, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   return dataController.allJobStatuses
                       .where(
                         (e) => (e.code ?? '').toLowerCase().contains(
                           pattern.toLowerCase(),
                         ),
                       )
                       .toList();
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (p0) => '${p0.description}',
                 getValue: (p0) => '${p0.description}',
                 multi: true,
               );
             case StringConstants.haulier:
               return EmrFilterAutoComplete<Haulier, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   await dataController.getHauliers(pattern);
                   return dataController.allHauliers;
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (p0) => '${p0.accountNo} - ${p0.name}',
                 getValue: (p0) => p0.accountNo ?? '',
                 getSubtitle: StringHelper.getHaulierTypeForDisplay,
                 multi: true,
               );
             case kJobSource:
               return EmrFilterAutoComplete<ListDetails, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   return dataController.allJobSources
                       .where(
                         (e) => (e.code ?? '').toLowerCase().contains(
                           pattern.toLowerCase(),
                         ),
                       )
                       .toList();
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (p0) => '${p0.description}',
                 getValue: (p0) => '${p0.code}',
                 multi: true,
               );
             case kStartLocation:
               return EmrFilterAutoComplete<ListDetails, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   await dataController.searchPartyLocations(
                     pattern,
                     StringConstants.start,
                   );

                   return dataController.allStartLocation;
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (p0) => '${p0.code}',
                 getValue: (p0) => '${p0.code}',
                 getSubtitle: (p0) => '${p0.description}',
                 multi: true,
               );
             case kEndLocation:
               return EmrFilterAutoComplete<ListDetails, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   await dataController.searchPartyLocations(
                     pattern,
                     StringConstants.end,
                   );
                   return dataController.allEndLocation;
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (p0) => '${p0.code}',
                 getValue: (p0) => '${p0.code}',
                 getSubtitle: (p0) => '${p0.description}',
                 multi: true,
               );
             case kActionLocation:
               return EmrFilterAutoComplete<ListDetails, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   await dataController.searchPartyLocations(
                     pattern,
                     StringConstants.action,
                   );
                   return dataController.allActionLocation;
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (p0) => '${p0.code}',
                 getValue: (p0) => '${p0.code}',
                 getSubtitle: (p0) => '${p0.description}',
                 multi: true,
               );
             case kHasJobContainerImages:
               return EmrFilterAutoComplete<ListDetails, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   final filtered = dataController.hasJobContainerImagesOptions
                       .where(
                         (e) => (e.code ?? '').toLowerCase().contains(
                           pattern.toLowerCase(),
                         ),
                       );

                   return filtered.cast<ListDetails>();
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (p0) => '${p0.code}',
                 getValue: (p0) => '${p0.description}',
                 multi: true,
               );
             case kProductFamily:
               return EmrFilterAutoComplete<ListDetails, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   return dataController.allProductFamilies
                       .where(
                         (e) => (e.code ?? '').toLowerCase().contains(
                           pattern.toLowerCase(),
                         ),
                       )
                       .toList();
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (p0) => p0.code ?? '',
                 getValue: (p0) => p0.description ?? '',
                 multi: true,
               );
             case kProducts:
               return EmrFilterAutoComplete<ListDetails, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   await dataController.getProductsBySearchTerm(pattern);
                   return dataController.allProducts;
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (p0) => '${p0.code} - ${p0.description}',
                 getValue: (p0) => p0.code ?? '',
                 multi: true,
               );
           }

           throw Exception(
             'filterContentBuilder should return a Widget for ${filter.key}',
           );
         },
         filters: [
           EmrFilterModel<String>(
             key: kFromTo,
             name: StringConstants.lastthreeMonthJobs,
             text: StringConstants.lastthreeMonthJobs,
             value: 'LastThreeMonths',
           ),
         ],
         displayMode: EmrFilterDisplayMode.popover,
       );

  final JobListSearchDataController dataController;
  static const kFromTo = 'FromTo';
  static const kDateRange = 'DateRange';
  static const kJobType = 'JobType';
  static const kJobStatus = 'JobStatus';
  static const kJobSource = 'JobSource';
  static const kContainerType = 'ContainerType';
  static const kStartLocation = 'StartLocation';
  static const kEndLocation = 'EndLocation';
  static const kActionLocation = 'ActionLocation';
  static const kYards = 'Yards';
  static const kHasJobContainerImages = 'HasJobContainerImages';
  static const kProductFamily = 'ProductFamily';
  static const kProducts = 'Products';

  List<ListDetails> deleteReasons = [];
  late JoblistFilter appliedFilters;
  final SharedPreferencesService _sharedPrefs;

  ValueNotifier<JobListSearchView> searchView = ValueNotifier(
    JobListSearchView.listView,
  );

  void initilize(DateFormat dateFormat) {
    fetchFilterValues();
    bindSavedFiltersForUser(dateFormat);
  }

  Future<void> fetchFilterValues() async {
    await dataController.getFilterValues();
    deleteReasons = dataController.allDeleteReasons;
  }

  Future<void> bindSavedFiltersForUser(DateFormat dateFormat) async {
    filters.addListener(onFilterChanged);
    appliedFilters = await _sharedPrefs.getJobsOverviewFilters();
    if (appliedFilters.dateRange == null && appliedFilters.fromTo == null) {
      final showTimePeriodFilter = filters.value.firstWhere(
        (element) => element.key == kFromTo,
      );
      addOrUpdateFilter(
        filter: showTimePeriodFilter,
        text: StringConstants.lastthreeMonthJobs,
        value: StringConstants.lastthreeMonthJobs,
      );
    } else {
      preAppliedFilters(appliedFilters, dateFormat);
    }
  }

  JoblistFilter getAppliedFilterValues() {
    String? fromToFilterValue;
    DateRangeValue? dateRangeFilterValue;
    var yardCodes = <String>[];
    var jobtypes = <String>[];
    var jobstatuses = <String>[];
    var containertypes = <String>[];
    var startLocations = <String>[];
    var endLocations = <String>[];
    var actionLocations = <String>[];
    var hasJobContainerImages = <String>[];
    var jobSources = <String>[];
    var haulierCodes = <String>[];
    var productFamilies = <String>[];
    var products = <String>[];

    final fromToFilter = tryGetFilter<String>(
      key: JobListSearchFilterController.kFromTo,
    );
    if (fromToFilter != null) {
      fromToFilterValue = fromToFilter.value;
    }

    final dateRangeFilter = tryGetFilter<EmrDateRangeValue>(
      key: JobListSearchFilterController.kDateRange,
    );
    if (dateRangeFilter != null) {
      dateRangeFilterValue = DateRangeValue(
        startDate: dateRangeFilter.value!.startDate,
        endDate: dateRangeFilter.value!.endDate,
      );
    }

    final yardFilter = tryGetFilter<List<String>>(
      key: JobListSearchFilterController.kYards,
    );
    if (yardFilter != null) {
      yardCodes = yardFilter.value!;
    }

    final jobtypesFilter = tryGetFilter<List<String>>(
      key: JobListSearchFilterController.kJobType,
    );
    if (jobtypesFilter != null) {
      jobtypes = jobtypesFilter.value!;
    }

    final jobstatusesFilter = tryGetFilter<List<String>>(
      key: JobListSearchFilterController.kJobStatus,
    );
    if (jobstatusesFilter != null) {
      jobstatuses = jobstatusesFilter.value!;
    }

    final containertypesFilter = tryGetFilter<List<String>>(
      key: JobListSearchFilterController.kContainerType,
    );
    if (containertypesFilter != null) {
      containertypes = containertypesFilter.value!;
    }

    final startLocnFilter = tryGetFilter<List<String>>(
      key: JobListSearchFilterController.kStartLocation,
    );
    if (startLocnFilter != null) {
      startLocations = startLocnFilter.value!;
    }

    final endLocnFilter = tryGetFilter<List<String>>(
      key: JobListSearchFilterController.kEndLocation,
    );
    if (endLocnFilter != null) {
      endLocations = endLocnFilter.value!;
    }

    final actionLocnFilter = tryGetFilter<List<String>>(
      key: JobListSearchFilterController.kActionLocation,
    );
    if (actionLocnFilter != null) {
      actionLocations = actionLocnFilter.value!;
    }

    final hasJobContainerImagesFilter = tryGetFilter<List<String>>(
      key: JobListSearchFilterController.kHasJobContainerImages,
    );
    if (hasJobContainerImagesFilter != null) {
      hasJobContainerImages = hasJobContainerImagesFilter.value!;
    }

    final haulierCodesFilter = tryGetFilter<List<String>>(
      key: StringConstants.haulier,
    );
    if (haulierCodesFilter != null) {
      haulierCodes = haulierCodesFilter.value!;
    }

    final jobsourcesFilter = tryGetFilter<List<String>>(
      key: JobListSearchFilterController.kJobSource,
    );
    if (jobsourcesFilter != null) {
      jobSources = jobsourcesFilter.value!;
    }
    final productFamiliesFilter = tryGetFilter<List<String>>(
      key: JobListSearchFilterController.kProductFamily,
    );

    if (productFamiliesFilter != null) {
      productFamilies = productFamiliesFilter.value!;
    }

    final productsFilter = tryGetFilter<List<String>>(
      key: JobListSearchFilterController.kProducts,
    );
    if (productsFilter != null) {
      products = productsFilter.value!;
    }
    return JoblistFilter(
      fromTo: fromToFilterValue,
      dateRange: dateRangeFilterValue,
      yardCodes: yardCodes,
      jobStatuses: jobstatuses,
      jobTypes: jobtypes,
      containerTpes: containertypes,
      startLocations: startLocations,
      endLocation: endLocations,
      actionLocations: actionLocations,
      hasJobContainerImages: hasJobContainerImages,
      haulierCodes: haulierCodes,
      jobSources: jobSources,
      productFamilies: productFamilies,
      products: products,
    );
  }

  void preAppliedFilters(JoblistFilter filter, DateFormat dateFormat) {
    filters.value = _buildPreAppliedFilters(filter, dateFormat);
  }

  List<EmrFilterModel<dynamic>> _buildPreAppliedFilters(
    JoblistFilter preAppliedFilters,
    DateFormat dateFormat,
  ) {
    final filterControls = <EmrFilterModel<dynamic>>[];
    if (preAppliedFilters.fromTo != null &&
        preAppliedFilters.fromTo!.isNotEmpty) {
      filterControls.insert(
        0,
        EmrFilterModel<String>(
          key: kFromTo,
          name: StringConstants.pickTimePeriodDisplay,
          value: preAppliedFilters.fromTo,
          text: preAppliedFilters.fromTo,
        ),
      );
    }
    if (preAppliedFilters.dateRange != null) {
      final dateRangeVal = EmrDateRangeValue(
        preAppliedFilters.dateRange!.startDate,
        preAppliedFilters.dateRange!.endDate,
      );
      filterControls.insert(
        0,
        EmrFilterModel<EmrDateRangeValue>(
          key: kDateRange,
          name: StringConstants.pickADateRangeDisplay,
          value: dateRangeVal,
          text: StringHelper.getDateRangeFilterText(dateRangeVal, dateFormat),
        ),
      );
    }
    if (preAppliedFilters.yardCodes != null &&
        preAppliedFilters.yardCodes!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: kYards,
          name: StringConstants.yardsDisplay,
          value: preAppliedFilters.yardCodes,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.yardCodes!,
          ),
        ),
      );
    }
    if (preAppliedFilters.jobTypes != null &&
        preAppliedFilters.jobTypes!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: kJobType,
          name: StringConstants.jobTypeDisplay,
          value: preAppliedFilters.jobTypes,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.jobTypes!,
          ),
        ),
      );
    }
    if (preAppliedFilters.jobStatuses != null &&
        preAppliedFilters.jobStatuses!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: kJobStatus,
          name: StringConstants.jobStatusDisplay,
          value: preAppliedFilters.jobStatuses,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.jobStatuses!,
          ),
        ),
      );
    }
    if (preAppliedFilters.containerTpes != null &&
        preAppliedFilters.containerTpes!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: kContainerType,
          name: StringConstants.containerTypeDisplay,
          value: preAppliedFilters.containerTpes,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.containerTpes!,
          ),
        ),
      );
    }
    if (preAppliedFilters.startLocations != null &&
        preAppliedFilters.startLocations!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: kStartLocation,
          name: StringConstants.startLocation,
          value: preAppliedFilters.startLocations,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.startLocations!,
          ),
        ),
      );
    }
    if (preAppliedFilters.endLocation != null &&
        preAppliedFilters.endLocation!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: kEndLocation,
          name: StringConstants.endLocation,
          value: preAppliedFilters.endLocation,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.endLocation!,
          ),
        ),
      );
    }
    if (preAppliedFilters.actionLocations != null &&
        preAppliedFilters.actionLocations!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: kActionLocation,
          name: StringConstants.customerLocation,
          value: preAppliedFilters.actionLocations,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.actionLocations!,
          ),
        ),
      );
    }
    if (preAppliedFilters.haulierCodes != null &&
        preAppliedFilters.haulierCodes!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: StringConstants.haulier,
          name: StringConstants.haulier,
          value: preAppliedFilters.haulierCodes,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.haulierCodes!,
          ),
        ),
      );
    }
    if (preAppliedFilters.jobSources != null &&
        preAppliedFilters.jobSources!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: kJobSource,
          name: StringConstants.jobSourceDisplay,
          value: preAppliedFilters.jobSources,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.jobSources!,
          ),
        ),
      );
    }
    if (preAppliedFilters.productFamilies != null &&
        preAppliedFilters.productFamilies!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: kProductFamily,
          name: StringConstants.productFamilyDisplay,
          value: preAppliedFilters.productFamilies,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.productFamilies!,
          ),
        ),
      );
    }
    if (preAppliedFilters.products != null &&
        preAppliedFilters.products!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: kProducts,
          name: StringConstants.products,
          value: preAppliedFilters.products,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.products!,
          ),
        ),
      );
    }
    return filterControls;
  }

  Future<void> onFilterChanged() async {
    appliedFilters = getAppliedFilterValues();
    await _sharedPrefs.setJobsOverviewFilters(appliedFilters);
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kFromTo))
        EmrFilterModel<String>(
          key: kFromTo,
          name: StringConstants.pickTimePeriodDisplay,
        ),
      if (!containsFilter(key: kJobType))
        EmrFilterModel<List<String>>(
          key: kJobType,
          name: StringConstants.jobTypeDisplay,
        ),
      if (!containsFilter(key: kJobStatus))
        EmrFilterModel<List<String>>(
          key: kJobStatus,
          name: StringConstants.jobStatusDisplay,
        ),
      if (!containsFilter(key: kYards))
        EmrFilterModel<List<String>>(
          key: kYards,
          name: StringConstants.yardsDisplay,
        ),
      if (!containsFilter(key: kContainerType))
        EmrFilterModel<List<String>>(
          key: kContainerType,
          name: StringConstants.containerTypeDisplay,
        ),
      if (!containsFilter(key: kStartLocation))
        EmrFilterModel<List<String>>(
          key: kStartLocation,
          name: StringConstants.startLocation,
        ),
      if (!containsFilter(key: kEndLocation))
        EmrFilterModel<List<String>>(
          key: kEndLocation,
          name: StringConstants.endLocation,
        ),
      if (!containsFilter(key: kActionLocation))
        EmrFilterModel<List<String>>(
          key: kActionLocation,
          name: StringConstants.customerLocation,
        ),
      if (!containsFilter(key: StringConstants.haulier))
        EmrFilterModel<List<String>>(
          key: StringConstants.haulier,
          name: StringConstants.haulier,
        ),
      if (!containsFilter(key: kJobSource))
        EmrFilterModel<List<String>>(
          key: kJobSource,
          name: StringConstants.jobSourceDisplay,
        ),
      if (!containsFilter(key: kHasJobContainerImages))
        EmrFilterModel<List<String>>(
          key: kHasJobContainerImages,
          name: StringConstants.hasJobContainerImagesDisplay,
        ),
      if (!containsFilter(key: kDateRange))
        EmrFilterModel<EmrDateRangeValue>(
          key: kDateRange,
          name: StringConstants.pickADateRangeDisplay,
        ),
      if (!containsFilter(key: kProductFamily))
        EmrFilterModel<List<String>>(
          key: kProductFamily,
          name: StringConstants.productFamilyDisplay,
        ),
      if (!containsFilter(key: kProducts))
        EmrFilterModel<List<String>>(
          key: kProducts,
          name: StringConstants.products,
        ),
    ];
  }
}
