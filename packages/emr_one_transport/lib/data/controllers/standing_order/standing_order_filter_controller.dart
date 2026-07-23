import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/standing_order/standing_order_data_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/date_range_value.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/standing_order/standing_order_filter.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/shared_preferences_service.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class StandingOrderFilterController extends EmrFilterController {
  StandingOrderFilterController(
    this._sharedPrefs, {
    required this.dataController,
  }) : super(
         filterContentBuilder: (context, filter, controller) {
           switch (filter.key) {
             case kDateRange:
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
             case kStatus:
               return EmrFilterAutoComplete<ListDetails, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   return dataController.allStatuses
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
           }

           throw Exception(
             'filterContentBuilder should return a Widget for ${filter.key}',
           );
         },
         displayMode: EmrFilterDisplayMode.popover,
       );

  final StandingOrderDataController dataController;
  static const kDateRange = 'DateRange';
  static const kJobType = 'JobType';
  static const kStatus = 'Status';
  static const kContainerType = 'ContainerType';
  static const kStartLocation = 'StartLocation';
  static const kEndLocation = 'EndLocation';
  static const kActionLocation = 'ActionLocation';
  static const kYards = 'Yards';

  List<ListDetails> deleteReasons = [];
  late StandingOrderFilter appliedFilters;
  final SharedPreferencesService _sharedPrefs;

  ValueNotifier<JobListSearchView> searchView = ValueNotifier(
    JobListSearchView.listView,
  );

  void initialize(DateFormat dateFormat) {
    fetchFilterValues();
    bindSavedFiltersForUser(dateFormat);
  }

  Future<void> fetchFilterValues() async {
    await dataController.getFilterValues();
    deleteReasons = dataController.allDeleteReasons;
  }

  Future<void> bindSavedFiltersForUser(DateFormat dateFormat) async {
    filters.addListener(onFilterChanged);
    appliedFilters = await _sharedPrefs.getStandingOrderFilters();
    preAppliedFilters(appliedFilters, dateFormat);
  }

  StandingOrderFilter getAppliedFilterValues() {
    DateRangeValue? dateRangeFilterValue;
    var yardCodes = <String>[];
    var jobtypes = <String>[];
    var statuses = <String>[];
    var containertypes = <String>[];
    var startLocations = <String>[];
    var endLocations = <String>[];
    var actionLocations = <String>[];

    final dateRangeFilter = tryGetFilter<EmrDateRangeValue>(
      key: StandingOrderFilterController.kDateRange,
    );
    if (dateRangeFilter != null) {
      dateRangeFilterValue = DateRangeValue(
        startDate: dateRangeFilter.value!.startDate,
        endDate: dateRangeFilter.value!.endDate,
      );
    }

    final yardFilter = tryGetFilter<List<String>>(
      key: StandingOrderFilterController.kYards,
    );
    if (yardFilter != null) {
      yardCodes = yardFilter.value!;
    }

    final jobtypesFilter = tryGetFilter<List<String>>(
      key: StandingOrderFilterController.kJobType,
    );
    if (jobtypesFilter != null) {
      jobtypes = jobtypesFilter.value!;
    }

    final statusFilter = tryGetFilter<List<String>>(
      key: StandingOrderFilterController.kStatus,
    );
    if (statusFilter != null) {
      statuses = statusFilter.value!;
    }

    final containertypesFilter = tryGetFilter<List<String>>(
      key: StandingOrderFilterController.kContainerType,
    );
    if (containertypesFilter != null) {
      containertypes = containertypesFilter.value!;
    }

    final startLocnFilter = tryGetFilter<List<String>>(
      key: StandingOrderFilterController.kStartLocation,
    );
    if (startLocnFilter != null) {
      startLocations = startLocnFilter.value!;
    }

    final endLocnFilter = tryGetFilter<List<String>>(
      key: StandingOrderFilterController.kEndLocation,
    );
    if (endLocnFilter != null) {
      endLocations = endLocnFilter.value!;
    }

    final actionLocnFilter = tryGetFilter<List<String>>(
      key: StandingOrderFilterController.kActionLocation,
    );
    if (actionLocnFilter != null) {
      actionLocations = actionLocnFilter.value!;
    }

    return StandingOrderFilter(
      dateRange: dateRangeFilterValue,
      yardCodes: yardCodes,
      status: statuses,
      jobTypes: jobtypes,
      containerTpes: containertypes,
      startLocations: startLocations,
      endLocation: endLocations,
      actionLocations: actionLocations,
    );
  }

  void preAppliedFilters(StandingOrderFilter filter, DateFormat dateFormat) {
    filters.value = _buildPreAppliedFilters(filter, dateFormat);
  }

  List<EmrFilterModel<dynamic>> _buildPreAppliedFilters(
    StandingOrderFilter preAppliedFilters,
    DateFormat dateFormat,
  ) {
    final filterControls = <EmrFilterModel<dynamic>>[];
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
    if (preAppliedFilters.status != null &&
        preAppliedFilters.status!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: kStatus,
          name: StringConstants.jobStatusDisplay,
          value: preAppliedFilters.status,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.status!,
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
    return filterControls;
  }

  Future<void> onFilterChanged() async {
    appliedFilters = getAppliedFilterValues();
    await _sharedPrefs.setStandingOrderFilters(appliedFilters);
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kJobType))
        EmrFilterModel<List<String>>(
          key: kJobType,
          name: StringConstants.jobTypeDisplay,
        ),
      if (!containsFilter(key: kStatus))
        EmrFilterModel<List<String>>(
          key: kStatus,
          name: StringConstants.status,
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
      if (!containsFilter(key: kDateRange))
        EmrFilterModel<EmrDateRangeValue>(
          key: kDateRange,
          name: StringConstants.pickADateRangeDisplay,
        ),
    ];
  }
}
