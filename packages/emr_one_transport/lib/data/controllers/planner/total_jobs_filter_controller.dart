import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/planner/planner_data_controller.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:flutter/widgets.dart';

class TotalJobsFilterController extends EmrFilterController {
  TotalJobsFilterController({required this.dataController})
    : super(
        filterContentBuilder: (context, filter, controller) {
          switch (filter.key) {
            case kFromTo:
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
                getValue: (p0) => p0.yardCode.toString(),
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
                        (e) =>
                            (e.description ?? '').toLowerCase().contains(
                              pattern.toLowerCase(),
                            ) ||
                            (e.description ?? '').toLowerCase().contains(
                              pattern,
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
                        (e) =>
                            (e.code ?? '').toLowerCase().contains(
                              pattern.toLowerCase(),
                            ) ||
                            (e.description ?? '').toLowerCase().contains(
                              pattern,
                            ),
                      )
                      .toList();
                },
                close: Navigator.of(context).pop,
                getTitle: (p0) => p0.description ?? '',
                getValue: (p0) => p0.code ?? '',
                multi: true,
              );
            case kPlanType:
              return EmrFilterAutoComplete<ListDetails, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) async {
                  return dataController.allPlanTypes
                      .where(
                        (e) =>
                            (e.code ?? '').toLowerCase().contains(
                              pattern.toLowerCase(),
                            ) ||
                            (e.description ?? '').toLowerCase().contains(
                              pattern,
                            ),
                      )
                      .toList();
                },
                close: Navigator.of(context).pop,
                getTitle: (p0) => p0.description ?? '',
                getValue: (p0) => p0.code ?? '',
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
                getTitle: (p0) => p0.code ?? '',
                getValue: (p0) => p0.code ?? '',
                getSubtitle: (p0) => p0.description ?? '',
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
                getTitle: (p0) => p0.code ?? '',
                getValue: (p0) => p0.code ?? '',
                getSubtitle: (p0) => p0.description ?? '',
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
                getTitle: (p0) => p0.code ?? '',
                getValue: (p0) => p0.code ?? '',
                getSubtitle: (p0) => p0.description ?? '',
                multi: true,
              );
            case kHauliers:
              return EmrFilterAutoComplete<Haulier, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) async {
                  await dataController.getHauliers(pattern);
                  return dataController.allHauliers;
                },
                close: Navigator.of(context).pop,
                getTitle: (p0) => p0.accountNo ?? '',
                getValue: (p0) => p0.accountNo ?? '',
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
          }

          throw Exception(
            'filterContentBuilder should return a Widget for ${filter.key}',
          );
        },
        /*  filters: [
            EmrFilterModel<String>(
              key: kFromTo,
              name: StringConstants.lastThreeMonthPlans,
              enableDelete: false,
              text: StringConstants.lastThreeMonthPlans,
              value: StringConstants.lastThreeMonthPlansValue,
            ),
          ],*/
        displayMode: EmrFilterDisplayMode.popover,
      );

  final PlannerDataController dataController;
  static const kFromTo = 'FromTo';
  static const kStartDate = 'StartDate';
  static const kEndDate = 'EndDate';
  static const kDateRange = 'DateRange';
  static const kJobType = 'JobType';
  static const kContainerType = 'ContainerType';
  static const kStartLocation = 'StartLocation';
  static const kEndLocation = 'EndLocation';
  static const kActionLocation = 'ActionLocation';
  static const kYards = 'Yards';
  static const kPlanType = 'PlanType';
  static const kHauliers = 'Hauliers';
  static const kProductFamily = 'ProductFamily';

  Future<void> fetchFilterValues() async {
    await dataController.getFilterValues();
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kJobType))
        EmrFilterModel<List<String>>(
          key: kJobType,
          name: StringConstants.jobTypeDisplay,
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
      if (!containsFilter(key: kPlanType))
        EmrFilterModel<List<String>>(
          key: kPlanType,
          name: StringConstants.planTypeDisplay,
        ),
      if (!containsFilter(key: kHauliers))
        EmrFilterModel<List<String>>(
          key: kHauliers,
          name: StringConstants.hauliersDisplay,
        ),
      if (!containsFilter(key: kProductFamily))
        EmrFilterModel<List<String>>(
          key: kProductFamily,
          name: StringConstants.productFamilyDisplay,
        ),
    ];
  }
}
