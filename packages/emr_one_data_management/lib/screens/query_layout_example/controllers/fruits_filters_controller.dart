import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/query_layout_example/models/fruits_sample_data.dart';
import 'package:flutter/widgets.dart';

class FruitsFiltersController extends EmrFilterController {
  FruitsFiltersController()
      : super(
          filterContentBuilder: (context, filter, controller) {
            // Determine the widget to show for each filter.
            switch (filter.key) {
              case kFruitColour:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => Future.value(
                    switch (filter.key) {
                      kFruitColour => kSampleFruits
                          .map((fruit) => fruit.color)
                          .toSet()
                          .toList(),
                      _ => throw Exception('No data source for ${filter.key}'),
                    }
                        .where(
                      (element) => element
                          .contains(RegExp(pattern, caseSensitive: false)),
                    ),
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
            }

            throw Exception(
              'filterContentBuilder should return a Widget for ${filter.key}',
            );
          },
          filters: [],
        );
  static const kFruitColour = 'FruitColour';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kFruitColour))
        EmrFilterModel<String>(key: kFruitColour, name: 'Fruit colour'),
    ];
  }
}
