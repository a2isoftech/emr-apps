import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/territory.dart';
import 'package:flutter/material.dart';

class YardSearchFilterController extends EmrFilterController {
  YardSearchFilterController({
    required this.referenceDataService,
  }) : super(
          filters: [],
          filterContentBuilder: (context, filter, controller) {
            return switch (filter.key) {
              kYardCode => EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final yards = await referenceDataService.yards(pattern);
                    return yards.map((e) => e.yardCode).toSet();
                  },
                  multi: true,
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                ),
              kTerritoryCode => EmrFilterAutoComplete<Territory, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final territories =
                        await referenceDataService.territories(pattern);
                    return territories;
                  },
                  multi: true,
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) =>
                      '${suggestion.code} - ${suggestion.name}',
                  getValue: (suggestion) => suggestion.code,
                ),
              _ => Container(),
            };
          },
        );

  final ReferenceDataService referenceDataService;

  static const kYardCode = 'YardCode';
  static const kTerritoryCode = 'TerritoryCode';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kYardCode))
        EmrFilterModel<List<String>>(key: kYardCode, name: 'Yard code'),
      if (!containsFilter(key: kTerritoryCode))
        EmrFilterModel<List<String>>(
          key: kTerritoryCode,
          name: 'Territory code',
        ),
    ];
  }
}
