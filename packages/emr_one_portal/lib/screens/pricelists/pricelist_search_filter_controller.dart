import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/screens/pricelists/pricelist_search_data_controller.dart';
import 'package:flutter/material.dart';

class PricelistSearchFilterController extends EmrFilterController {
  PricelistSearchFilterController({required this.dataController})
      : super(
          filters: const [],
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kYard:
                return EmrFilterAutoComplete<Yard, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return pattern.isEmpty
                        ? dataController.yards.toList()
                        : dataController.yards
                            .where((yard) =>
                                yard.yardName.toLowerCase().contains(pattern),)
                            .toList();
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0.yardName,
                  getValue: (p0) => p0.yardCode,
                );
            }
            throw Exception(
              'filterContentBuilder should return a Widget for ${filter.key}',
            );
          },
          displayMode: EmrFilterDisplayMode.popover,
        );

  final PricelistSearchDataController dataController;
  static const kYard = 'Yard';

  void fetchFilterValues() {
    dataController.getFilterValues();
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kYard))
        EmrFilterModel<String>(key: kYard, name: 'Yard Name'),
    ];
  }
}
