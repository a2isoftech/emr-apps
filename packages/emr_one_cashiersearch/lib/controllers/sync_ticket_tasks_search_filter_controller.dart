import 'package:collection/collection.dart';
import 'package:emr_core_api/extensions/build_context_extensions.dart';
import 'package:emr_one_cashiersearch/services/cashier_search_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class SyncTicketTasksSearchFilterController extends EmrFilterController {
  SyncTicketTasksSearchFilterController({
    required this.userInfoService,
    required this.ticketService,
    this.savedFilters,
  }) : super(
          filters: [],
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kStatus:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => Future.value(
                    ['Synced', 'Unsynced', 'All'],
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
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
                  multi: true,
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
              case kTicketNumber:
                final statusValue =
                    savedFilters?[kStatus] as String?;
                final yardCodes = controller.tryGetFilter<List<String>?>(
                  key: kYardCode,);
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    if (pattern.isNotEmpty) {
                      final dbs = Debounceable<List<String>>();
                      final sugs = await dbs.call(
                        () => context.coreApi.ticketService
                            .searchSyncTaskTicketIdSuggestions(
                          pattern,
                          yardCodes: yardCodes?.value,
                          isCompleted: isCompleted(statusValue),
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
      filter: statusFilter,
      text: statusValue,
      value: statusValue,
    );
    
    if(yardCodeValue.isNotEmpty)
    {
      addOrUpdateFilter(
          filter: yardFilter,
          text: yardCodeValue.length > 1
            ? '${yardCodeValue[0]} (+${yardCodeValue.length-1})'
            : yardCodeValue[0],
          value: yardCodeValue,);
    }
    
    if(ticketIdValue.isNotEmpty)
    {
      addOrUpdateFilter(
          filter: ticketNumber,
          text: ticketIdValue.length > 1
            ? '${ticketIdValue[0]} (+${ticketIdValue.length-1})'
            : ticketIdValue[0],
          value: ticketIdValue,);
    }
  }

  final UserInfoService userInfoService;
  final ICashierSearchService ticketService;
  final Map<String, dynamic>? savedFilters;

  static const kStatus = 'Status';
  static const kYardCode = 'YardCodes';
  static const kTicketNumber = 'TicketIds';
  static const _defaultStatus = 'Unsynced';

  static bool? isCompleted(String? statusValue) => statusValue == 'Synced'
      ? true
      : statusValue == 'Unsynced'
          ? false
          : null;

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kStatus)) statusFilter,
      if (!containsFilter(key: kYardCode)) yardFilter,
      if (!containsFilter(key: kTicketNumber)) ticketNumber,
    ];
  }

  EmrFilterModel<String> get statusFilter {
    return EmrFilterModel<String>(
      key: kStatus,
      name: 'Status',
      enableDelete: false,
      value: statusValue,
      text: statusValue,
    );
  }

  EmrFilterModel<List<String>> get yardFilter {
    return EmrFilterModel<List<String>>(
      key: kYardCode,
      name: 'Yard',
      value: yardCodeValue,
    );
  }

  EmrFilterModel<List<String>> get ticketNumber {
    return EmrFilterModel<List<String>>(
      key: kTicketNumber,
      name: 'Ticket Id',
      value: ticketIdValue,
    );
  }

  String get statusValue =>
      savedFilters?.entries.firstWhereOrNull((x) => x.key == kStatus)?.value
          as String? ??
      _defaultStatus;

  List<String> get yardCodeValue =>
    List<String>.from(
      (savedFilters?.entries
              .firstWhereOrNull((x) => x.key == kYardCode)
              ?.value as Iterable?)
          ?? const [],);

  List<String> get ticketIdValue =>
    List<String>.from(
      (savedFilters?.entries
              .firstWhereOrNull((x) => x.key == kTicketNumber)
              ?.value as Iterable?) 
          ?? const [],);
}
