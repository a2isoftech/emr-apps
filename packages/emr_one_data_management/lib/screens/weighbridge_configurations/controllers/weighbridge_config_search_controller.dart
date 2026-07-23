import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/models/filter_item.dart';
import 'package:flutter/material.dart';

class WeighbridgeConfigSearchFilterContoller extends EmrFilterController {
  WeighbridgeConfigSearchFilterContoller({
    required this.userInfoService,
    this.savedFilters,
  }): super(
    filters: [],
    filterContentBuilder: (context, filter, controller) {
      switch (filter.key) {
        case kYardCode:
          return EmrFilterAutoComplete<FilterItem, FilterItem>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final yardFilter =
                        filterController.filters.value.firstWhereOrNull(
                      (f) => f.key == kYardCode,
                    ) as EmrFilterModel<FilterItem?>?;
                    if(yardFilter?.key == pattern) {
                      return [yardFilter!.value!];
                    }
                    if (pattern.isNotEmpty) {
                      final data = userInfoService.userInfo.depots
                          .map((e) => FilterItem(key: 'yards/${e.yardCode}', value: e.yardCode!))
                          .where((element) => element.value
                              .toLowerCase()
                              .contains(pattern.toLowerCase()),)
                          .toSet();
                      return Future.value(data);
                    }
                    return [];
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion.value,
                  getValue: (suggestion) => suggestion,
                );
      }
      return Container();
    },
  ){
    addOrUpdateFilter(
      filter: yardFilter,
      text: yardCodeValue.value,
      value: yardCodeValue,
    );
  }

  final UserInfoService userInfoService;
  final Map<String, dynamic>? savedFilters;

  static const kYardCode = 'YardCode';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kYardCode)) yardFilter,
    ];
  }

  EmrFilterModel<FilterItem> get yardFilter {
    return EmrFilterModel<FilterItem>(
      key: kYardCode,
      name: 'Yard',
      value: yardCodeValue,
      text: yardCodeValue.value,
    );
  }

  FilterItem get yardCodeValue {
    final filter = 
    savedFilters?.entries.firstWhereOrNull((x) => x.key == kYardCode)?.value
        as Map<String, dynamic>?;
    if (filter != null) {
      return FilterItem.fromJson(filter);
    }
    return
    FilterItem(key: 'yards/${userInfoService.userInfo.defaultYard}',
      value: userInfoService.userInfo.defaultYard,);
  }
}
