import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/screens/temp_grades_data.dart';
import 'package:flutter/material.dart';

class TicketsFilterController extends EmrFilterController {
  TicketsFilterController({
    required this.userInfoService,
  }) : super(
          filterContentBuilder: (context, filter, controller) {
            // Determine the widget to show for each filter.
            switch (filter.key) {
              case kStartDate:
              case kEndDate:
                return EmrFilter.datePicker(
                  context,
                  filter,
                  controller,
                  close: Navigator.of(context).pop,
                );
              case kDepotNo:
              case kGrades:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => Future.value(
                    switch (filter.key) {
                      kDepotNo =>
                        userInfoService.userInfo.depots.map((e) => e.code),
                      kGrades => kTempGradesData,
                      _ => throw Exception('No data source for ${filter.key}'),
                    }
                        .where(
                      (element) => element
                          .contains(RegExp(pattern, caseSensitive: false)),
                    ),
                  ),
                  multi: true,
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
              case kTicketStatus:
              case kTicketType:
              case kTicketCategory:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => Future.value(
                    switch (filter.key) {
                      kTicketStatus => ['Open', 'Closed', 'Finished'],
                      kTicketType => ['Inwards', 'Outwards'],
                      kTicketCategory => [
                          'Normal',
                          'Interdepot',
                          'Inter Yard Transfer',
                          'Merchant Truck Trade',
                          'True Truck Trade',
                        ],
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
          filters: [
            EmrFilterModel<DateTime>(
              key: TicketsFilterController.kStartDate,
              name: 'From Date',
              enableDelete: false,
              value: DateTime.now().add(const Duration(days: -120)),
              textBuilder: (context, filterModel) =>
                  EmrFilter.defaultDateTimeTextBuilder(
                context,
                filterModel as EmrFilterModel<DateTime>,
                prefix: 'From',
              ),
            ),
            EmrFilterModel<DateTime>(
              key: TicketsFilterController.kEndDate,
              name: 'To Date',
              enableDelete: false,
              value: DateTime.now(),
              textBuilder: (context, filterModel) =>
                  EmrFilter.defaultDateTimeTextBuilder(
                context,
                filterModel as EmrFilterModel<DateTime>,
                prefix: 'To',
              ),
            ),
          ],
        );

  final UserInfoService userInfoService;

  static const kStartDate = 'StartDate';

  static const kEndDate = 'EndDate';

  static const kDepotNo = 'DepotNo';

  static const kGrades = 'Grades';

  static const kTicketStatus = 'TicketStatus';

  static const kTicketType = 'TicketType';

  static const kTicketCategory = 'TicketCategory';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kDepotNo))
        EmrFilterModel<List<String>>(key: kDepotNo, name: 'Depot No'),
      if (!containsFilter(key: kGrades))
        EmrFilterModel<List<String>>(key: kGrades, name: 'Grade'),
      if (!containsFilter(key: kTicketStatus))
        EmrFilterModel<String>(key: kTicketStatus, name: 'Ticket status'),
      if (!containsFilter(key: kTicketType))
        EmrFilterModel<String>(key: kTicketType, name: 'Ticket type'),
      if (!containsFilter(key: kTicketCategory))
        EmrFilterModel<String>(
          key: kTicketCategory,
          name: 'Ticket category',
        ),
    ];
  }
}
