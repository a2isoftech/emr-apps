import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_stock_take/constants/helper_methods.dart';
import 'package:emr_one_stock_take/models/select_option.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:flutter/material.dart';

class StockTakeFilterController extends EmrFilterController {
  StockTakeFilterController({
    required this.userInfoService,
    required this.stocktakeService, 
    required String defaultYard,
  }) : super(
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kYards:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => Future.value(
                    userInfoService.userInfo.yards.map((e) => e.yardCode).where(
                          (element) => element
                              .contains(RegExp(pattern, caseSensitive: false)),
                        ),
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
              case kStatus:
                return EmrFilterAutoComplete<Enum$StocktakeStatus, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => Future.value(
                    Enum$StocktakeStatus.values
                        .where(
                          (v) => v != Enum$StocktakeStatus.$unknown,
                        )
                        .where(
                          (element) => element.name
                              .contains(RegExp(pattern, caseSensitive: false)),
                        ),
                  ),
                  close: Navigator.of(context).pop,
                  multi: true,
                  getTitle: (suggestion) =>
                      HelperMethods.toStatusString(context, suggestion),
                  getValue: (suggestion) => suggestion.name,
                );
              case kConductedBy:
                return searchUsers(
                  context,
                  filter,
                  controller,
                  stocktakeService,
                  (pattern, filterController) async {
                    return stocktakeService.searchUsersForFilter(
                      conductedBy: pattern,
                    );
                  },
                );
              case kOriginator:
                return searchUsers(
                  context,
                  filter,
                  controller,
                  stocktakeService,
                  (pattern, filterController) async {
                    return stocktakeService.searchUsersForFilter(
                      createdBy: pattern,
                    );
                  },
                );
              case kDateRange:
                return EmrFilterDateRangePicker(
                  filterModel: filter as EmrFilterModel<EmrDateRangeValue>,
                  controller: controller,
                );
              case kProductFamilies:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return stocktakeService.searchProductFamilies(
                      query: pattern,
                    );
                  },
                  multi: true,
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
              case kProductClasses:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return stocktakeService.searchProductClasses(
                      query: pattern,
                    );
                  },
                  multi: true,
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );

              default:
                throw UnimplementedError();
            }
          },
          filters: [
            EmrFilterModel<String>(
              key: kYards,
              name: kYards,
              text: defaultYard,
              value: defaultYard
            )
          ]
        );

  static EmrFilterAutoComplete<SelectOption, String> searchUsers(
    BuildContext context,
    EmrFilterModel<dynamic> filter,
    EmrFilterController controller,
    StocktakeService stocktakeService,
    Future<List<SelectOption>> Function(
      String pattern,
      dynamic filterController,
    ) suggestionCallback,
  ) {
    return EmrFilterAutoComplete<SelectOption, String>(
      Key(filter.key),
      filter,
      controller,
      suggestionCallback,
      multi: true,
      close: Navigator.of(context).pop,
      getTitle: (suggestion) => suggestion.name,
      getValue: (suggestion) => suggestion.key,
    );
  }

  final UserInfoService userInfoService;
  final StocktakeService stocktakeService;
  static const kYards = 'YardCode';
  static const kConductedBy = 'ConductedBy';
  static const kStatus = 'Status';
  static const kDateRange = 'DateRange';
  static const kProductClasses = 'ProductClasses';
  static const kOriginator = 'Originator';
  static const kProductFamilies = 'ProductFamilies';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kYards))
        EmrFilterModel<String>(
          key: kYards,
          name: 'Yard',
        ),
      if (!containsFilter(key: kConductedBy))
        EmrFilterModel<List<String>>(
          key: kConductedBy,
          name: 'Conducted By',
          textBuilder: (context, filterModel) {
            return Text('Conducted By: ${filterModel.text}');
          },
        ),
      if (!containsFilter(key: kStatus))
        EmrFilterModel<List<String>>(
          key: kStatus,
          name: 'Status',
        ),
      if (!containsFilter(key: kDateRange))
        EmrFilterModel<EmrDateRangeValue>(
          key: kDateRange,
          name: 'Date Range',
        ),
      if (!containsFilter(key: kProductClasses))
        EmrFilterModel<List<String>>(
          key: kProductClasses,
          name: 'Product Class',
        ),
      if (!containsFilter(key: kProductFamilies))
        EmrFilterModel<List<String>>(
          key: kProductFamilies,
          name: 'Product Family',
        ),
      if (!containsFilter(key: kOriginator))
        EmrFilterModel<List<String>>(
          key: kOriginator,
          name: 'Originator',
        ),
    ];
  }
}
