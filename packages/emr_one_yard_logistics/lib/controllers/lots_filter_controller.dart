import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/data/lots_data.dart';
import 'package:emr_one_yard_logistics/data/lots_data_constants.dart';
import 'package:emr_one_yard_logistics/models/lot_type.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:flutter/material.dart';

class LotsFilterValue<T> {
  LotsFilterValue({required this.label, required this.value});

  final String label;
  final T value;
}

class LotsFilterController extends EmrFilterController {
  LotsFilterController({
    required this.userInfoService,
    required this.ylService,
  }) : super(
          filterContentBuilder: (context, filter, controller) =>
              switch (filter.key) {
            LotsDataConstants.kYardFacet =>
              EmrFilterAutoComplete<String, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) => Future.value(
                  userInfoService.userInfo.depots
                      .map((e) => e.yardCode!)
                      .toSet()
                      .where(
                        (element) => element.contains(
                          RegExp(
                            pattern,
                            caseSensitive: false,
                          ),
                        ),
                      ),
                ),
                multi: true,
                close: Navigator.of(context).pop,
                getTitle: (suggestion) => suggestion,
                getValue: (suggestion) => suggestion,
              ),
            LotsDataConstants.kDateRange => EmrFilterDateRangePicker(
                filterModel: filter as EmrFilterModel<EmrDateRangeValue>,
                controller: controller,
              ),
            LotsDataConstants.kOuterCasingFacet =>
              EmrFilterAutoComplete<LotsFilterValue<String>, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) async {
                  final lotComp =
                      await ylService.fetchLotCompositionsFromCache();

                  return lotComp
                      .map(
                        (e) => LotsFilterValue(
                          label: '${e.outerValue} '
                              '(${e.outerValueAcronym})',
                          value: e.outerValue,
                        ),
                      )
                      .toSet()
                      .where(
                        (element) => element.value.contains(
                          RegExp(
                            pattern,
                            caseSensitive: false,
                          ),
                        ),
                      );
                },
                multi: true,
                close: Navigator.of(context).pop,
                getTitle: (suggestion) => suggestion.label,
                getValue: (suggestion) => suggestion.value,
              ),
            LotsDataConstants.kInnerCompositionFacet =>
              EmrFilterAutoComplete<LotsFilterValue<String>, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) async {
                  final lotComp =
                      await ylService.fetchLotCompositionsFromCache();

                  return {
                    for (final e in lotComp.expand((x) => x.innerCompositions))
                      (e.value, e.acronym): e,
                  }
                      .values
                      .where((x) => x.value != YlConstants.noInner)
                      .map(
                        (e) => LotsFilterValue(
                          label: '${e.value} '
                              '(${e.acronym})',
                          value: e.value,
                        ),
                      )
                      .where(
                        (element) => element.value.contains(
                          RegExp(
                            pattern,
                            caseSensitive: false,
                          ),
                        ),
                      );
                },
                multi: true,
                close: Navigator.of(context).pop,
                getTitle: (suggestion) => suggestion.label,
                getValue: (suggestion) => suggestion.value,
              ),
            LotsDataConstants.kTypeFacet =>
              EmrFilterAutoComplete<String, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) => Future.value(
                  LotType.values.map((e) => e.name.toUpperCase()).toSet().where(
                        (element) => element.contains(
                          RegExp(
                            pattern,
                            caseSensitive: false,
                          ),
                        ),
                      ),
                ),
                multi: true,
                close: Navigator.of(context).pop,
                getTitle: (suggestion) => suggestion,
                getValue: (suggestion) => suggestion,
              ),
            _ => throw Exception('Unknown filter key: ${filter.key}'),
          },
          filters: [],
        );

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: LotsDataConstants.kOuterCasingFacet))
        EmrFilterModel<List<String>>(
          key: LotsDataConstants.kOuterCasingFacet,
          name: 'Outer Casing',
        ),
      if (!containsFilter(key: LotsDataConstants.kInnerCompositionFacet))
        EmrFilterModel<List<String>>(
          key: LotsDataConstants.kInnerCompositionFacet,
          name: 'Inner Composition',
        ),
      if (!containsFilter(key: LotsDataConstants.kDateRange))
        EmrFilterModel<EmrDateRangeValue>(
          key: LotsDataConstants.kDateRange,
          name: 'Date Range',
        ),
      if (!containsFilter(key: LotsDataConstants.kYardFacet))
        EmrFilterModel<List<String>>(
          key: LotsDataConstants.kYardFacet,
          name: 'Yard',
        ),
      if (!containsFilter(key: LotsDataConstants.kTypeFacet))
        EmrFilterModel<List<String>>(
          key: LotsDataConstants.kTypeFacet,
          name: 'Type',
        ),
    ];
  }

  final UserInfoService userInfoService;
  final YardLogisticsService ylService;
}
