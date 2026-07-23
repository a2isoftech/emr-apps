import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class TestCustomFilterController extends EmrFilterController {
  TestCustomFilterController(
    List<EmrFilterModel<dynamic>>? filters, {
    bool dataError = false,
    super.displayMode = EmrFilterDisplayMode.modal,
  }) : super(
          filters: filters,
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kTicketNumber:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final data = ['123435', '45657'].where(
                      (element) => element.contains(pattern),
                    );

                    return Future.value(data);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => 'Ticket Number: $suggestion',
                  getValue: (suggestion) => suggestion,
                  multi: true,
                );
              case kyards:
                return EmrFilterAutoComplete<Yard, Yard>(
                  const Key(kyards),
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
                  getValue: (suggestion) => suggestion,
                  multi: true,
                );
            }
            throw Exception(
              'filterContentBuilder should return a Widget for ${filter.key}',
            );
          },
        );

  static const kyards = 'yards';
  static const kTicketNumber = 'ticketNumber';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    final filters = <EmrFilterModel<dynamic>>[
      EmrFilterModel<List<Yard>>(
        key: TestCustomFilterController.kyards,
        name: 'Yards',
        jsonConverter: (json) => (json as List)
            .map((e) => Yard.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      EmrFilterModel<List<String>>(
        key: TestCustomFilterController.kTicketNumber,
        name: 'Ticket number',
      ),
    ];

    return filters;
  }
}
