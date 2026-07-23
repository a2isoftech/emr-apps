import 'package:collection/collection.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_cashiersearch/services/cashier_search_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class LockedTicketsSearchFilterController extends EmrFilterController {
  LockedTicketsSearchFilterController({
    required this.userInfoService,
    required this.ticketService,
    this.savedFilters,
  }) : super(
          filters: [],
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kYardCode:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => Future.value(
                    switch (filter.key) {
                      kYardCode => userInfoService.userInfo.depots
                          .map((e) => e.yardCode!)
                          .toSet(),
                      _ => throw Exception(
                          '${context.l10n.noDataSourceFor} ${filter.key}',
                        ),
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
              case kTicketNumber:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    if (pattern.isNotEmpty) {
                      final dbs = Debounceable<List<String>>();
                      final sugs = await dbs.call(
                        () => ticketService.searchSuggestions(
                          pattern,
                          Enum$TicketSearchPropertyType.TICKET_NUMBER,
                        ),
                      );
                      return Future.value(sugs);
                    }
                    return [];
                  },
                  multi: true,
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
            }
            return Container();
          },
        ) {
    addOrUpdateFilter(
        filter: yardFilter, text: yardCodeValue, value: yardCodeValue,);
  }

  final UserInfoService userInfoService;
  final ICashierSearchService ticketService;
  final Map<String, dynamic>? savedFilters;

  static const kYardCode = 'YardCode';
  static const kTicketNumber = 'TicketNumber';
  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kYardCode)) yardFilter,
      if (!containsFilter(key: kTicketNumber)) ticketNumber,
    ];
  }

  EmrFilterModel<String> get yardFilter {
    return EmrFilterModel<String>(
      key: kYardCode,
      name: 'Yard',
      enableDelete: false,
      value: yardCodeValue,
      text: yardCodeValue,
    );
  }

  EmrFilterModel<List<String>> get ticketNumber {
    return EmrFilterModel<List<String>>(
      key: kTicketNumber,
      name: 'TicketNumber',
    );
  }

  String get yardCodeValue =>
      savedFilters?.entries.firstWhereOrNull((x) => x.key == kYardCode)?.value
          as String? ??
      userInfoService.userInfo.defaultYard;
}
