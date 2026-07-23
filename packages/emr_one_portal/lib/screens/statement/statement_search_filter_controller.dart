import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class StatementSearchFilterController extends EmrFilterController {
  StatementSearchFilterController({required this.dataController})
      : super(
          filters: const [],
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kCompanyName:
                return EmrFilterAutoComplete<Company, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return dataController.companies.toList();
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0.name ?? '',
                  getValue: (p0) => '${p0.companyCode}',
                  multi: true,
                );
            }
            throw Exception(
              'filterContentBuilder should return a Widget for ${filter.key}',
            );
          },
          displayMode: EmrFilterDisplayMode.popover,
        );

  final StatementSearchDataController dataController;
  static const kCompanyName = 'companyName';

  void fetchFilterValues() {
    dataController.getFilterValues();
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kCompanyName))
        EmrFilterModel<List<String>>(key: kCompanyName, name: 'Company Name'),
    ];
  }
}
