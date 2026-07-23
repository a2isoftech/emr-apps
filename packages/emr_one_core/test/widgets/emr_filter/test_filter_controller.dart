import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class TestFilterController extends EmrFilterController {
  TestFilterController(
    List<EmrFilterModel<dynamic>>? filters, {
    bool dataError = false,
    this.allowAddDateFilter = true,
    super.displayMode = EmrFilterDisplayMode.modal,
  }) : super(
          filters: filters,
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kYardCode:
                return EmrFilterAutoComplete<Yard, String>(
                  const Key(kYardCode),
                  filter,
                  controller,
                  (pattern, filterController) {
                    if (dataError) {
                      throw Exception('Test error');
                    }

                    final data = [
                      Yard(
                        yardCode: 'Y001',
                        name: 'Yard one',
                        shortName: 'Y1',
                      ),
                      Yard(
                        yardCode: 'Y002',
                        name: 'Yard two',
                        shortName: 'Y2',
                      ),
                      Yard(
                        yardCode: 'Y003',
                        name: 'Yard three',
                        shortName: 'Y3',
                      ),
                    ].where(
                      (element) =>
                          element.yardCode.contains(pattern) ||
                          element.name.contains(pattern),
                    );

                    return Future.value(data);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion.name,
                  getSubtitle: (suggestion) => suggestion.name,
                  getValue: (suggestion) => suggestion.yardCode,
                );
              default:
                return Builder(
                  builder: (context) {
                    return EmrFilter.datePicker(
                      context,
                      filter,
                      controller,
                      close: Navigator.of(context).pop,
                    );
                  },
                );
            }
          },
        );

  static const kYardCode = 'yardCode';
  static const kDate = 'date';

  final bool allowAddDateFilter;

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    final filters = [
      EmrFilterModel<String>(
        key: TestFilterController.kYardCode,
        name: 'Yard',
      ),
      if (allowAddDateFilter)
        EmrFilterModel<DateTime>(
          key: TestFilterController.kDate,
          name: 'Date',
        ),
    ];

    return filters;
  }
}
