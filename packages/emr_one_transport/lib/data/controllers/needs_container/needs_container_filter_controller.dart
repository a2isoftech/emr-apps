import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/helpers/date_range_filter_helper.dart';
import 'package:flutter/widgets.dart';

class NeedsContainerFilterController extends EmrFilterController {
  NeedsContainerFilterController()
      : super(
          filterContentBuilder: (context, filter, controller) {
            final ctrl = controller as NeedsContainerFilterController;
            switch (filter.key) {
              case kFromTo:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return ctrl.allFromToDateRanges;
                  },
                  close: () {
                    Navigator.of(context).pop();
                  },
                  getTitle: (p0) => p0,
                  getValue: (p0) => p0,
                );
              case kDateRange:
                return EmrFilterDateRangePicker(
                  filterModel: filter as EmrFilterModel<EmrDateRangeValue>,
                  controller: controller,
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
              value: StringConstants.lastthreeMonthJobs,
              enableDelete: false,
            ),
          ],
          displayMode: EmrFilterDisplayMode.popover,
        );

  static const kFromTo = 'FromTo';
  static const kDateRange = 'DateRange';

  final List<String> allFromToDateRanges = [
    StringConstants.yesterdayjobs,
    StringConstants.previousweekJobs,
    StringConstants.lastOneMonthJobs,
    StringConstants.lastthreeMonthJobs,
    StringConstants.lastsixMonthJobs,
    StringConstants.lasttwelweMonthJobs,
    StringConstants.lasteighteenMonthJobs,
  ];

  void initialize() {
    filters.addListener(_ensureDefaultFilter);
  }

  void _ensureDefaultFilter() {
    if (!containsFilter(key: kFromTo) && !containsFilter(key: kDateRange)) {
      filters.removeListener(_ensureDefaultFilter);
      addOrUpdateFilter(
        filter: EmrFilterModel<String>(
          key: kFromTo,
          name: StringConstants.lastthreeMonthJobs,
          enableDelete: false,
        ),
        text: StringConstants.lastthreeMonthJobs,
        value: StringConstants.lastthreeMonthJobs,
      );
      filters.addListener(_ensureDefaultFilter);
    }
  }

  @override
  void addOrUpdateFilter<T>({
    required EmrFilterModel<T> filter,
    required String text,
    required T value,
  }) {
    if (filter.key == kFromTo) {
      filters.value.removeWhere((e) => e.key == kDateRange);
    } else if (filter.key == kDateRange) {
      filters.value.removeWhere((e) => e.key == kFromTo);
    }
    super.addOrUpdateFilter(filter: filter, text: text, value: value);
  }

  List<DateTime> getDateRange() {
    final fromToFilter = tryGetFilter<String>(key: kFromTo);
    if (fromToFilter?.value != null) {
      return DateRangeFilterHelper.getDateRangeForFilter(fromToFilter!.value!);
    }

    final dateRangeFilter = tryGetFilter<EmrDateRangeValue>(key: kDateRange);
    if (dateRangeFilter?.value != null) {
      return [
        dateRangeFilter!.value!.startDate!,
        dateRangeFilter.value!.endDate!,
      ];
    }

    return DateRangeFilterHelper.getDateRangeForFilter(
      StringConstants.lastthreeMonthJobs,
    );
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kFromTo))
        EmrFilterModel<String>(
          key: kFromTo,
          name: StringConstants.pickTimePeriodDisplay,
          enableDelete: false,
        ),
      if (!containsFilter(key: kDateRange))
        EmrFilterModel<EmrDateRangeValue>(
          key: kDateRange,
          name: StringConstants.pickADateRangeDisplay,
          enableDelete: false,
        ),
    ];
  }
}
