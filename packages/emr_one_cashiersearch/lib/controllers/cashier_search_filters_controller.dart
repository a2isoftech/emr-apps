import 'package:collection/collection.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/constants/ticket_constants.dart';
import 'package:emr_one_cashiersearch/extensions/string_extension.dart';
import 'package:emr_one_cashiersearch/models/favourite_search_parameter.dart';
import 'package:emr_one_cashiersearch/models/filter_item_model.dart';
import 'package:emr_one_cashiersearch/services/cashier_search_service.dart';
import 'package:emr_one_cashiersearch/services/search_suggestions_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class CashierSearchFiltersController extends EmrFilterController {
  CashierSearchFiltersController({
    required this.ticketService,
    required this.userInfoService,
    required this.searchSuggestionService,
  }) : super(
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
                 multi: true,
               );
             case kTicketStatus:
               return EmrFilterDropdown<String, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) {
                   final suggestions = <String>[];
                   if (pattern.isEmpty) {
                     suggestions.add(TicketConstants.readyToPayTicketStatus);
                     suggestions.add(TicketStatus.paid.name.capitalize());
                   } else {
                     if (TicketConstants.readyToPayTicketStatus
                         .capitalize()
                         .contains(pattern.capitalize())) {
                       suggestions.add(
                         TicketConstants.readyToPayTicketStatus.capitalize(),
                       );
                     }
                     if (TicketStatus.paid.name.capitalize().contains(
                       pattern.capitalize(),
                     )) {
                       suggestions.add(TicketStatus.paid.name.capitalize());
                     }
                   }
                   return Future.value(suggestions);
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => suggestion,
                 getValue: (suggestion) =>
                     suggestion == TicketConstants.readyToPayTicketStatus
                     ? TicketStatus.active.name.capitalize()
                     : suggestion,
               );
             case kPayAtEdge:
               return EmrFilterDropdown<String, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) => Future.value(['TRUE', 'FALSE']),
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => suggestion,
                 getValue: (suggestion) => suggestion,
               );
             case kTicketType:
               return EmrFilterDropdown<String, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) {
                   final suggestions = <String>[];

                   suggestions.add(Enum$TicketType.INWARDS.name);

                   return Future.value(suggestions);
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => suggestion,
                 getValue: (suggestion) => suggestion,
               );
             case kTicketAccountType:
               return EmrFilterDropdown<String, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) {
                   final suggestions = <String>[];

                   suggestions.add(Enum$AccountType.RETAIL.name);

                   return Future.value(suggestions);
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => suggestion,
                 getValue: (suggestion) => suggestion,
               );

             case kTicketCategory:
               return EmrFilterDropdown<String, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) {
                   final suggestions = <String>[];

                   suggestions.add(Enum$TicketCategory.NORMAL.name);
                   suggestions.add('INTERDEPOT');
                   suggestions.add(
                     Enum$TicketCategory.MERCHANT_TRUCK_TRADE.name,
                   );
                   suggestions.add(Enum$TicketCategory.TRUE_TRUCK_TRADE.name);
                   suggestions.add(
                     Enum$TicketCategory.INTER_YARD_TRANSFER.name,
                   );

                   return Future.value(suggestions);
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => suggestion,
                 getValue: (suggestion) => suggestion,
               );

             case kVehicleNumber:
               return EmrFilterAutoComplete<String, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   if (pattern.isNotEmpty) {
                     final dbs = Debounceable<List<String>>();
                     final sugs = await dbs.call(
                       () => ticketService.searchSuggestions(
                         pattern.toUpperCase(),
                         Enum$TicketSearchPropertyType.VEHICLE_NUMBER,
                       ),
                     );
                     return Future.value(sugs);
                   }
                   return [];
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => suggestion,
                 getValue: (suggestion) => suggestion,
                 multi: true,
               );

             case kPartyAccountNumber:
               return EmrFilterAutoComplete<FilterItem, FilterItem>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   final accountNameFilter =
                       filterController.filters.value.firstWhereOrNull(
                             (f) => f.key == kPartyAccountNumber,
                           )
                           as EmrFilterModel<List<FilterItem>>?;
                   final matchedResult = accountNameFilter?.value
                       ?.firstWhereOrNull((account) => account.key == pattern);
                   if (matchedResult != null) {
                     return [matchedResult];
                   } else if (pattern.isNotEmpty) {
                     final dbs = Debounceable<List<FilterItem>>();
                     final sugs = await dbs.call(() async {
                       final res = await searchSuggestionService
                           .searchSuggestionAccountsByNumber(pattern);
                       return res
                           .map((e) => FilterItem(key: e.$1, value: e.$2))
                           .toList();
                     });
                     return Future.value(sugs);
                   }
                   return [];
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => suggestion.value,
                 getValue: (suggestion) => suggestion,
                 multi: true,
               );
             case kContractNumber:
               return EmrFilterAutoComplete<FilterItem, FilterItem>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   final accountNameFilter =
                       filterController.filters.value.firstWhereOrNull(
                             (f) => f.key == kContractNumber,
                           )
                           as EmrFilterModel<List<FilterItem>>?;
                   final matchedResult = accountNameFilter?.value
                       ?.firstWhereOrNull((account) => account.key == pattern);
                   if (matchedResult != null) {
                     return [matchedResult];
                   } else if (pattern.isNotEmpty) {
                     final dbs = Debounceable<List<FilterItem>>();
                     final sugs = await dbs.call(() async {
                       final res = await searchSuggestionService
                           .searchSuggestionContracts(pattern);
                       final res1 = res
                           .where((r) => r.$2.contains(pattern))
                           .map((e) => FilterItem(key: e.$1, value: e.$2))
                           .toList();
                       final res2 = res
                           .where((r) => r.$3.contains(pattern))
                           .map((e) => FilterItem(key: e.$1, value: e.$3))
                           .toList();
                       return [...res1, ...res2];
                     });
                     return Future.value(sugs);
                   }
                   return [];
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => 'Contract No: ${suggestion.value}',
                 getValue: (suggestion) => suggestion,
                 multi: true,
               );
             case kPartyName:
               return EmrFilterAutoComplete<FilterItem, FilterItem>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   final accountNameFilter =
                       filterController.filters.value.firstWhereOrNull(
                             (f) => f.key == kPartyName,
                           )
                           as EmrFilterModel<List<FilterItem>>?;
                   final matchedResult = accountNameFilter?.value
                       ?.firstWhereOrNull((account) => account.key == pattern);
                   if (matchedResult != null) {
                     return [matchedResult];
                   } else if (pattern.isNotEmpty) {
                     final dbs = Debounceable<List<FilterItem>>();
                     final sugs = await dbs.call(() async {
                       final res = await searchSuggestionService
                           .searchSuggestionAccountsByName(pattern);
                       return res
                           .map((e) => FilterItem(key: e.$1, value: e.$2))
                           .toList();
                     });
                     return Future.value(sugs);
                   }
                   return [];
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => suggestion.value,
                 getValue: (suggestion) => suggestion,
                 multi: true,
               );
             case kTicketNumber:
               return EmrFilterAutoComplete<FilterItem, FilterItem>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   final accountNameFilter =
                       filterController.filters.value.firstWhereOrNull(
                             (f) => f.key == kTicketNumber,
                           )
                           as EmrFilterModel<List<FilterItem>>?;
                   final matchedResult = accountNameFilter?.value
                       ?.firstWhereOrNull((account) => account.key == pattern);
                   if (matchedResult != null) {
                     return [matchedResult];
                   } else if (pattern.isNotEmpty) {
                     final dbs = Debounceable<List<FilterItem>>();
                     final sugs = await dbs.call(() async {
                       final res = await ticketService.searchTicketSuggestions(
                         pattern,
                       );
                       return res
                           .map(
                             (e) =>
                                 FilterItem(key: e.$1, value: e.$2.toString()),
                           )
                           .toList();
                     });
                     return Future.value(sugs);
                   }
                   return [];
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => suggestion.value,
                 getValue: (suggestion) => suggestion,
                 multi: true,
               );
             case kJobNumber:
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
                         Enum$TicketSearchPropertyType.TRANSPORT_JOB_NUMBER,
                       ),
                     );
                     return Future.value(sugs);
                   }
                   return [];
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => suggestion,
                 getValue: (suggestion) => suggestion,
                 multi: true,
               );
             case kHaulierName:
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
                         Enum$TicketSearchPropertyType.HAULIER_NAME,
                       ),
                     );
                     return Future.value(sugs);
                   }
                   return [];
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => suggestion,
                 getValue: (suggestion) => suggestion,
                 multi: true,
               );
             case kLocationName:
               return EmrFilterAutoComplete<String, String>(
                 Key(filter.key),
                 filter,
                 controller,
                 (pattern, filterController) async {
                   if (pattern.isNotEmpty) {
                     final dbs = Debounceable<List<String>>();
                     final sugs = await dbs.call(() {
                       return ticketService.searchSuggestions(
                         pattern,
                         Enum$TicketSearchPropertyType.LOCATION_NAME,
                       );
                     });
                     return Future.value(sugs);
                   }
                   return [];
                 },
                 close: Navigator.of(context).pop,
                 getTitle: (suggestion) => suggestion,
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
             key: CashierSearchFiltersController.kStartDate,
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
             key: CashierSearchFiltersController.kEndDate,
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
           EmrFilterModel<String>(
             key: CashierSearchFiltersController.kTicketStatus,
             name: 'Status',
             enableDelete: false,
             value: TicketStatus.active.name.capitalize(),
             text: TicketConstants.readyToPayTicketStatus,
           ),
           EmrFilterModel<String>(
             key: CashierSearchFiltersController.kTicketType,
             name: CashierSearchFiltersController.kTicketType,
             enableDelete: false,
             value: Enum$TicketType.INWARDS.name.capitalize(),
             text: Enum$TicketType.INWARDS.name.capitalize(),
           ),
         ],
       );

  ValueNotifier<CashierSearchView> searchView = ValueNotifier(
    CashierSearchView.cardView,
  );
  ValueNotifier<bool> isFacetVisible = ValueNotifier(false);

  ValueNotifier<List<FavouriteSearchParameters>> favourites = ValueNotifier([]);
  ValueNotifier<FavouriteSearchParameters?> favouriteSelected = ValueNotifier(
    null,
  );

  final ICashierSearchService ticketService;
  final UserInfoService userInfoService;
  final ISearchSuggestionService searchSuggestionService;

  static const kStartDate = 'StartDate';
  static const kEndDate = 'EndDate';
  static const kYard = 'Yard';
  static const kVehicleNumber = 'VehicleNumber';
  static const kPartyAccountNumber = 'PartyAccountNumber';
  static const kContractNumber = 'ContractNumber';
  static const kPartyName = 'PartyName';
  static const kTicketStatus = 'TicketStatus';
  static const kTicketType = 'TicketType';
  static const kTicketAccountType = 'TicketAccountType';
  static const kTicketCategory = 'TicketCategory';
  static const kTicketNumber = 'TicketNumber';
  static const kJobNumber = 'JobNumber';
  static const kHaulierName = 'HaulierName';
  static const kLocationName = 'LocationName';
  static const kPayAtEdge = 'Pay at Edge';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: CashierSearchFiltersController.kStartDate))
        EmrFilterModel<DateTime>(
          key: CashierSearchFiltersController.kStartDate,
          name: 'StartDate',
        ),
      if (!containsFilter(key: CashierSearchFiltersController.kEndDate))
        EmrFilterModel<DateTime>(
          key: CashierSearchFiltersController.kEndDate,
          name: 'EndDate',
        ),
      if (!containsFilter(key: CashierSearchFiltersController.kYard))
        EmrFilterModel<List<String>>(
          key: CashierSearchFiltersController.kYard,
          name: 'Yard',
        ),
      if (!containsFilter(key: CashierSearchFiltersController.kVehicleNumber))
        EmrFilterModel<List<String>>(
          key: CashierSearchFiltersController.kVehicleNumber,
          name: 'VehicleNumber',
        ),
      if (!containsFilter(key: CashierSearchFiltersController.kTicketNumber))
        EmrFilterModel<List<FilterItem>>(
          key: CashierSearchFiltersController.kTicketNumber,
          name: 'TicketNumber',
        ),
      if (!containsFilter(key: CashierSearchFiltersController.kJobNumber))
        EmrFilterModel<List<String>>(
          key: CashierSearchFiltersController.kJobNumber,
          name: 'JobNumber',
        ),
      if (!containsFilter(
        key: CashierSearchFiltersController.kTicketAccountType,
      ))
        EmrFilterModel<String>(
          key: CashierSearchFiltersController.kTicketAccountType,
          name: 'Account Type',
        ),
      if (!containsFilter(
        key: CashierSearchFiltersController.kPartyAccountNumber,
      ))
        EmrFilterModel<List<FilterItem>>(
          key: CashierSearchFiltersController.kPartyAccountNumber,
          name: 'PartyAccountNo',
        ),
      if (!containsFilter(key: CashierSearchFiltersController.kHaulierName))
        EmrFilterModel<List<String>>(
          key: CashierSearchFiltersController.kHaulierName,
          name: 'HaulierName',
        ),
      if (!containsFilter(key: CashierSearchFiltersController.kLocationName))
        EmrFilterModel<List<String>>(
          key: CashierSearchFiltersController.kLocationName,
          name: 'LocationName',
        ),
      if (!containsFilter(key: CashierSearchFiltersController.kContractNumber))
        EmrFilterModel<List<FilterItem>>(
          key: CashierSearchFiltersController.kContractNumber,
          name: 'ContractNumber',
        ),
      if (!containsFilter(key: CashierSearchFiltersController.kPartyName))
        EmrFilterModel<List<FilterItem>>(
          key: CashierSearchFiltersController.kPartyName,
          name: 'PartyName',
        ),
      if (!containsFilter(key: CashierSearchFiltersController.kTicketStatus))
        EmrFilterModel<String>(
          key: CashierSearchFiltersController.kTicketStatus,
          name: 'Ticket Status',
        ),
      if (!containsFilter(key: CashierSearchFiltersController.kPayAtEdge))
        EmrFilterModel<String>(
          key: CashierSearchFiltersController.kPayAtEdge,
          name: 'Pay at Edge',
        ),
      if (!containsFilter(key: CashierSearchFiltersController.kTicketType))
        EmrFilterModel<String>(
          key: CashierSearchFiltersController.kTicketType,
          name: 'Ticket Type',
        ),
      if (!containsFilter(key: CashierSearchFiltersController.kTicketCategory))
        EmrFilterModel<String>(
          key: CashierSearchFiltersController.kTicketCategory,
          name: 'Ticket Category',
        ),
    ];
  }

  List<EmrFilterModel<dynamic>> getFilter(Input$SearchTicketsInput input) {
    return [
      if (input.epochMin != null)
        EmrFilterModel<DateTime>(
          key: CashierSearchFiltersController.kStartDate,
          name: 'From Date',
          enableDelete: false,
          value: DateTime.fromMillisecondsSinceEpoch(input.epochMin!),
          textBuilder: (context, filterModel) =>
              EmrFilter.defaultDateTimeTextBuilder(
                context,
                filterModel as EmrFilterModel<DateTime>,
                prefix: 'From:',
              ),
        ),
      if (input.epochMax != null)
        EmrFilterModel<DateTime>(
          key: CashierSearchFiltersController.kEndDate,
          name: 'To Date',
          enableDelete: false,
          value: DateTime.fromMillisecondsSinceEpoch(input.epochMax!),
          textBuilder: (context, filterModel) =>
              EmrFilter.defaultDateTimeTextBuilder(
                context,
                filterModel as EmrFilterModel<DateTime>,
                prefix: 'To:',
              ),
        ),
      if (input.yardCodes?.isNotEmpty ?? false)
        EmrFilterModel<List<String>>(
          key: CashierSearchFiltersController.kYard,
          name: 'Yard',
          value: input.yardCodes,
          text: 'Yard: ${input.yardCodes?.join(',')}',
        ),
      if (input.vehicleNoFilter != null && input.vehicleNoFilter!.isNotEmpty)
        EmrFilterModel<List<String>>(
          key: CashierSearchFiltersController.kVehicleNumber,
          name: 'VehicleNumber',
          value: input.vehicleNoFilter,
          text: 'VehicleNumber: ${input.vehicleNoFilter?.join(',')}',
        ),
      if (input.ticketNos != null && input.ticketNos!.isNotEmpty)
        EmrFilterModel<List<int>>(
          key: CashierSearchFiltersController.kTicketNumber,
          name: 'TicketNumber',
          value: input.ticketNos,
          text: 'TicketNo: ${input.ticketNos?.join(',')}',
        ),
      // if (input.transportJobNos != null && input.transportJobNos!.isNotEmpty)
      //   EmrFilterModel<List<String>>(
      //     key: CashierSearchFiltersController.kJobNumber,
      //     name: 'JobNumber',
      //     value: input.yardCodes,
      //     text: 'Yard: ${input.yardCodes?.join(',')}',
      //   ),
      if (input.partyAccountNos != null && input.partyAccountNos!.isNotEmpty)
        EmrFilterModel<List<String>>(
          key: CashierSearchFiltersController.kPartyAccountNumber,
          name: 'PartyAccountNo',
          value: input.partyAccountNos,
          text: 'PartyAccountNo: ${input.partyAccountNos?.join(',')}',
        ),
      if (input.haulierNames != null && input.haulierNames!.isNotEmpty)
        EmrFilterModel<List<String>>(
          key: CashierSearchFiltersController.kHaulierName,
          name: 'HaulierName',
          value: input.haulierNames,
          text: 'HaulierName: ${input.haulierNames?.join(',')}',
        ),
      if (input.locationNames != null && input.locationNames!.isNotEmpty)
        EmrFilterModel<List<String>>(
          key: CashierSearchFiltersController.kLocationName,
          name: 'LocationName',
          value: input.locationNames,
          text: 'LocationName: ${input.locationNames?.join(',')}',
        ),
      if (input.contractIds != null && input.contractIds!.isNotEmpty)
        EmrFilterModel<List<String>>(
          key: CashierSearchFiltersController.kContractNumber,
          name: 'ContractNumber',
          value: input.contractIds,
          text: 'ContractNumber: ${input.contractIds?.join(',')}',
        ),
      if (input.partyNames != null && input.partyNames!.isNotEmpty)
        EmrFilterModel<List<String>>(
          key: CashierSearchFiltersController.kPartyName,
          name: 'PartyName',
          value: input.partyNames,
          text: 'PartyName: ${input.partyNames?.join(',')}',
        ),
      if (input.ticketStatus != null)
        EmrFilterModel<List<String>>(
          key: CashierSearchFiltersController.kTicketStatus,
          name: 'Ticket Status',
          value: input.ticketStatus!.map((x) => x.name.capitalize()).toList(),
          text:
              '''Status: ${input.ticketStatus!.map((x) => x.name.capitalize()).toList().join(',')}''',
        ),
      if (input.paidAtEdge != null)
        EmrFilterModel<String>(
          key: CashierSearchFiltersController.kPayAtEdge,
          name: 'Pay at Edge',
          value: input.paidAtEdge! ? 'TRUE' : 'FALSE',
          text: 'Pay at Edge: ${input.paidAtEdge! ? 'TRUE' : 'FALSE'}',
        ),
      if (input.ticketType != null)
        EmrFilterModel<String>(
          key: CashierSearchFiltersController.kTicketType,
          name: 'Ticket Type',
          value: input.ticketType!.name,
          text: 'Ticket Type: ${input.ticketType!.name}',
        ),
      if (input.ticketCategory != null)
        EmrFilterModel<String>(
          key: CashierSearchFiltersController.kTicketCategory,
          name: 'Ticket Category',
          value: input.ticketCategory!.name,
          text: 'Category: ${input.ticketCategory!.name}',
        ),
    ];
  }
}
