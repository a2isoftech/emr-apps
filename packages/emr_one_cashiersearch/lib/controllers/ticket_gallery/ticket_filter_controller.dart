import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class EdgeTicketsFilterController extends EmrFilterController {
  EdgeTicketsFilterController({
    required this.userInfoService,
    required this.edgeTicketService,
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
              case kProducts:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => Future.value(
                    switch (filter.key) {
                      kDepotNo =>
                        userInfoService.userInfo.yards.map((e) => e.yardCode),
                      kProducts => kTempGradesData,
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
                      kTicketStatus => [
                          'Draft',
                          'Active',
                          'Closed',
                          'Finished',
                        ],
                      kTicketType => ['Inwards', 'Outwards'],
                      kTicketCategory => [
                          'Normal',
                          'Interdepot',
                          'Inter Yard Transfer',
                          'Merchant Truck Trade',
                          'True Truck Trade',
                          'Container',
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
              case kPartyAccountNumber:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) {
                    if (pattern.isNotEmpty) {
                      return edgeTicketService.searchSuggestions(
                        pattern,
                        Enum$TicketSearchPropertyType.PARTY_ACCOUNT_NUMBER,
                      );
                    }
                    return Future.value([]);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                  multi: true,
                );
              case kPartyName:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) {
                    if (pattern.isNotEmpty) {
                      return edgeTicketService.searchSuggestions(
                        pattern,
                        Enum$TicketSearchPropertyType.PARTY_NAME,
                      );
                    }
                    return Future.value([]);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                  multi: true,
                );
              case kContractOrderBookTypeName:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) {
                    if (pattern.isNotEmpty) {
                      return edgeTicketService.searchSuggestions(
                        pattern,
                        Enum$TicketSearchPropertyType
                            .CONTRACT_ORDER_BOOK_TYPE_NAME,
                      );
                    }
                    return Future.value([]);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                  multi: true,
                );
              case kContractNumber:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) {
                    if (pattern.isNotEmpty) {
                      return edgeTicketService.searchSuggestions(
                        pattern,
                        Enum$TicketSearchPropertyType.CONTRACT_NUMBER,
                      );
                    }
                    return Future.value([]);
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
              key: EdgeTicketsFilterController.kStartDate,
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
              key: EdgeTicketsFilterController.kEndDate,
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

  final EdgeTicketsService edgeTicketService;

  static const kStartDate = 'StartDate';

  static const kEndDate = 'EndDate';

  static const kDepotNo = 'Yard';

  static const kProducts = 'Products';

  static const kTicketStatus = 'TicketStatus';

  static const kTicketType = 'TicketType';

  static const kTicketCategory = 'TicketCategory';

  static const kPartyAccountNumber = 'AccountNumber';

  static const kPartyName = 'AccountName';

  static const kContractOrderBookTypeName = 'ContractOrderBookTypeName';

  static const kContractNumber = 'ContractNumber';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kDepotNo))
        EmrFilterModel<List<String>>(key: kDepotNo, name: 'Yard'),
      if (!containsFilter(key: kProducts))
        EmrFilterModel<List<String>>(key: kProducts, name: 'Product'),
      if (!containsFilter(key: kTicketStatus))
        EmrFilterModel<String>(key: kTicketStatus, name: 'Ticket status'),
      if (!containsFilter(key: kTicketType))
        EmrFilterModel<String>(key: kTicketType, name: 'Ticket type'),
      if (!containsFilter(key: kTicketCategory))
        EmrFilterModel<String>(
          key: kTicketCategory,
          name: 'Ticket category',
        ),
      if (!containsFilter(
        key: EdgeTicketsFilterController.kPartyAccountNumber,
      ))
        EmrFilterModel<List<String>>(
          key: EdgeTicketsFilterController.kPartyAccountNumber,
          name: 'Account No',
        ),
      if (!containsFilter(key: EdgeTicketsFilterController.kPartyName))
        EmrFilterModel<List<String>>(
          key: EdgeTicketsFilterController.kPartyName,
          name: 'Account Name',
        ),
      if (!containsFilter(
        key: EdgeTicketsFilterController.kContractOrderBookTypeName,
      ))
        EmrFilterModel<List<String>>(
          key: EdgeTicketsFilterController.kContractOrderBookTypeName,
          name: 'Order Book',
        ),
      if (!containsFilter(
        key: EdgeTicketsFilterController.kContractNumber,
      ))
        EmrFilterModel<List<String>>(
          key: EdgeTicketsFilterController.kContractNumber,
          name: 'Contract No',
        ),
    ];
  }
}
