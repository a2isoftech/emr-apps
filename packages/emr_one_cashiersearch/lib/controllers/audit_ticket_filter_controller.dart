import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

class AuditTicketFilterController extends EmrFilterController {
  AuditTicketFilterController({required this.userInfoService})
    : super(
        filterContentBuilder: (context, filter, controller) {
          switch (filter.key) {
            case kStartDate:
            case kEndDate:
              return EmrFilter.datePicker(
                context,
                filter,
                controller,
                close: Navigator.of(context).pop,
              );
            case kYard:
              return EmrFilterAutoComplete<String, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) => Future.value(
                  userInfoService.userInfo.yards
                      .map((e) => e.yardCode)
                      .where(
                        (element) => element.contains(
                          RegExp(pattern, caseSensitive: false),
                        ),
                      ),
                ),
                close: Navigator.of(context).pop,
                getTitle: (suggestion) => suggestion,
                getValue: (suggestion) => suggestion,
              );
            case kTicketStatus:
              return EmrFilterAutoComplete<String, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) {
                  final suggestions = <String>[];
                  if (pattern.isEmpty) {
                    suggestions.add(TicketStatus.draft.name.capitalize());
                    suggestions.add(TicketStatus.active.name.capitalize());
                    suggestions.add(
                      TicketStatus.paymentInitiated.name.capitalize(),
                    );
                    suggestions.add(TicketStatus.paid.name.capitalize());
                  } else {
                    if (TicketStatus.draft.name.capitalize().contains(
                      pattern.capitalize(),
                    )) {
                      suggestions.add(TicketStatus.draft.name.capitalize());
                    }
                    if (TicketStatus.active.name.capitalize().contains(
                      pattern.capitalize(),
                    )) {
                      suggestions.add(TicketStatus.active.name.capitalize());
                    }
                    if (TicketStatus.paid.name.capitalize().contains(
                      pattern.capitalize(),
                    )) {
                      suggestions.add(TicketStatus.paid.name.capitalize());
                    }
                    if (TicketStatus.paymentInitiated.name
                        .capitalize()
                        .contains(pattern.capitalize())) {
                      suggestions.add(
                        TicketStatus.paymentInitiated.name.capitalize(),
                      );
                    }
                  }
                  return Future.value(suggestions);
                },
                close: Navigator.of(context).pop,
                getTitle: (suggestion) => suggestion.capitalize(),
                getValue: (suggestion) => suggestion,
                multi: true,
              );
          }
          throw Exception(
            'filterContentBuilder should return a Widget for ${filter.key}',
          );
        },
        filters: [
          EmrFilterModel<DateTime>(
            key: AuditTicketFilterController.kStartDate,
            name: 'From Date',
            enableDelete: false,
            value: DateTime.now().dateOnly,
            textBuilder: (context, filterModel) =>
                EmrFilter.defaultDateTimeTextBuilder(
                  context,
                  filterModel as EmrFilterModel<DateTime>,
                  prefix: '${context.l10n.from}:',
                ),
          ),
          EmrFilterModel<DateTime>(
            key: AuditTicketFilterController.kEndDate,
            name: 'To Date',
            enableDelete: false,
            value: DateTime.now().dateOnly,
            textBuilder: (context, filterModel) =>
                EmrFilter.defaultDateTimeTextBuilder(
                  context,
                  filterModel as EmrFilterModel<DateTime>,
                  prefix: '${context.l10n.to}:',
                ),
          ),
          EmrFilterModel<List<String>>(
            key: AuditTicketFilterController.kTicketStatus,
            name: 'Status',
            enableDelete: false,
            value: [TicketStatus.paid.name],
            text: TicketStatus.paid.name.capitalize(),
          ),
        ],
      );

  final UserInfoService userInfoService;
  static const kTicketStatus = 'TicketStatus';
  static const kStartDate = 'StartDate';
  static const kEndDate = 'EndDate';
  static const kYard = 'Yard';
  ValueNotifier<CashierSearchView> searchView = ValueNotifier(
    CashierSearchView.listView,
  );
  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: AuditTicketFilterController.kStartDate))
        EmrFilterModel<DateTime>(
          key: AuditTicketFilterController.kStartDate,
          name: 'StartDate',
        ),
      if (!containsFilter(key: AuditTicketFilterController.kEndDate))
        EmrFilterModel<DateTime>(
          key: AuditTicketFilterController.kEndDate,
          name: 'EndDate',
        ),
      if (!containsFilter(key: AuditTicketFilterController.kYard))
        EmrFilterModel<String>(
          key: AuditTicketFilterController.kYard,
          name: 'Yard',
        ),
      if (!containsFilter(key: AuditTicketFilterController.kTicketStatus))
        EmrFilterModel<List<String>>(
          key: AuditTicketFilterController.kTicketStatus,
          name: 'Ticket Status',
        ),
    ];
  }
}
