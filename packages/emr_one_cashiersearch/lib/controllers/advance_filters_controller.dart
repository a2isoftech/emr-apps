import 'package:collection/collection.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/extensions/string_extension.dart';
import 'package:emr_one_cashiersearch/extensions/user_info_extensions.dart';
import 'package:emr_one_cashiersearch/models/filter_item_model.dart';
import 'package:emr_one_cashiersearch/services/advances_payment_service.dart';
import 'package:emr_one_cashiersearch/services/search_suggestions_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class AdvanceFiltersController extends EmrFilterController {
  AdvanceFiltersController({
    required this.advancePaymentService,
    required this.searchSuggestionService,
    required this.userInfoService,
  }) : super(
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kPartyAccountNumber:
                return EmrFilterAutoComplete<FilterItem, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final accountNumberFilter =
                        filterController.filters.value.firstWhereOrNull(
                      (f) => f.key == kPartyAccountNumber,
                    ) as EmrFilterModel<List<FilterItem>>?;
                    final matchedResult =
                        accountNumberFilter?.value?.firstWhereOrNull(
                      (account) => account.key == pattern,
                    );
                    if (matchedResult != null) {
                      return [matchedResult];
                    } else if (pattern.isNotEmpty) {
                      return (await searchSuggestionService
                              .searchSuggestionAccountsByNumber(pattern))
                          .map(
                            (tuple) => FilterItem(
                              key: tuple.$1,
                              value: tuple.$2,
                            ),
                          )
                          .toList();
                    }
                    return [];
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (account) => account.value,
                  getValue: (account) => account.key,
                  multi: true,
                );
              case kPartyAccountName:
                return EmrFilterAutoComplete<FilterItem, FilterItem>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final accountNameFilter =
                        filterController.filters.value.firstWhereOrNull(
                      (f) => f.key == kPartyAccountName,
                    ) as EmrFilterModel<List<FilterItem>>?;
                    final matchedResult =
                        accountNameFilter?.value?.firstWhereOrNull(
                      (account) => account.key == pattern,
                    );
                    if (matchedResult != null) {
                      return [matchedResult];
                    } else if (pattern.isNotEmpty) {
                      return (await searchSuggestionService
                              .searchSuggestionAccountsByName(pattern))
                          .map(
                            (tuple) => FilterItem(
                              key: tuple.$1,
                              value: tuple.$2,
                            ),
                          )
                          .toList();
                    }
                    return [];
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (account) => account.value,
                  getValue: (account) => account,
                  multi: true,
                );
              case kCompanyName:
                return EmrFilterAutoComplete<FilterItem, FilterItem>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final companiesFilter =
                        filterController.filters.value.firstWhereOrNull(
                      (f) => f.key == kCompanyName,
                    ) as EmrFilterModel<List<FilterItem>>?;
                    final matchedResult =
                        companiesFilter?.value?.firstWhereOrNull(
                      (company) => company.key == pattern,
                    );
                    if (matchedResult != null) {
                      return [matchedResult];
                    } else if (pattern.isNotEmpty) {
                      return (await searchSuggestionService
                              .searchSuggestionCompanies(query: pattern))
                          .map(
                            (tuple) => FilterItem(
                              key: tuple.$1,
                              value: tuple.$2,
                            ),
                          )
                          .toList();
                    }
                    return [];
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (company) => company.value,
                  getValue: (company) => company,
                  multi: true,
                );
              case kHandlingYard:
                return EmrFilterAutoComplete<FilterItem, FilterItem>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final yardsFilter =
                        filterController.filters.value.firstWhereOrNull(
                      (f) => f.key == kHandlingYard,
                    ) as EmrFilterModel<List<FilterItem>>?;
                    final matchedResult = yardsFilter?.value?.firstWhereOrNull(
                      (yard) => yard.key == pattern,
                    );
                    if (matchedResult != null) {
                      return [matchedResult];
                    } else if (pattern.isNotEmpty) {
                      return userInfoService.userInfo.yards
                          .where(
                            (u) => u.yardCode
                                .toLowerCase()
                                .contains(pattern.toLowerCase()),
                          )
                          .map(
                            (yard) => FilterItem(
                              key: 'yards/${yard.yardCode}',
                              value: yard.yardCode,
                            ),
                          )
                          .toList();
                    }
                    return [];
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (yard) => yard.value,
                  getValue: (yard) => yard,
                  multi: true,
                );
              case kPayableYard:
                return EmrFilterAutoComplete<FilterItem, FilterItem>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final yardsFilter =
                        filterController.filters.value.firstWhereOrNull(
                      (f) => f.key == kHandlingYard,
                    ) as EmrFilterModel<List<FilterItem>>?;
                    final matchedResult = yardsFilter?.value?.firstWhereOrNull(
                      (yard) => yard.key == pattern,
                    );
                    if (matchedResult != null) {
                      return [matchedResult];
                    } else if (pattern.isNotEmpty) {
                      return userInfoService.userInfo.yards
                          .where(
                            (u) => u.yardCode
                                .toLowerCase()
                                .contains(pattern.toLowerCase()),
                          )
                          .map(
                            (yard) => FilterItem(
                              key: 'yards/${yard.yardCode}',
                              value: yard.yardCode,
                            ),
                          )
                          .toList();
                    }
                    return [];
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (yard) => yard.value,
                  getValue: (yard) => yard,
                  multi: true,
                );
              case kCurrency:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return [];
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
              case kReason:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final suggestions = <String>[];

                    suggestions.add(Enum$AdvanceReason.COMMODITY.name);
                    suggestions.add(Enum$AdvanceReason.CONTRACT.name);
                    suggestions.add(Enum$AdvanceReason.COST.name);
                    suggestions.add(Enum$AdvanceReason.HAULAGE.name);
                    suggestions.add(Enum$AdvanceReason.PRE_INVOICE.name);
                    return Future.value(suggestions);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                  multi: true,
                );
              case kPayByDate:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return [];
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                  multi: true,
                );
              case kArrangedBy:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return [];
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                  multi: true,
                );
              case kTicketNumber:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return [];
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                  multi: true,
                );
              case kStatus:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) {
                    return Future.value(
                      AdvanceStatus.values
                          .map((status) => status.name.capitalize())
                          .where(
                            (statusName) => statusName
                                .toLowerCase()
                                .contains(pattern.toLowerCase()),
                          ),
                    );
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
            EmrFilterModel<List<String>>(
              key: AdvanceFiltersController.kStatus,
              name: 'Status',
              value: [AdvanceStatus.draft.name.toCapitalized()],
              text: AdvanceStatus.draft.name.toCapitalized(),
            ),
          ],
        );

  ValueNotifier<AdvanceSearchView> searchView =
      ValueNotifier(AdvanceSearchView.cardView);

  final IAdvancesPaymentService advancePaymentService;
  final ISearchSuggestionService searchSuggestionService;

  static const kPartyAccountNumber = 'PartyAccountNumber';
  static const kPartyAccountName = 'PartyAccountName';
  static const kCompanyName = 'CompanyName';
  static const kHandlingYard = 'HandlingYard';
  static const kPayableYard = 'PayableYard';
  static const kCurrency = 'Currency';
  static const kReason = 'Reason';
  static const kPayByDate = 'PayByDate';
  static const kArrangedBy = 'ArrangedBy';
  static const kTicketNumber = 'TicketNumber';
  static const kStatus = 'Status';

  final UserInfoService userInfoService;

  EmrFilterModel<List<FilterItem>> get payableYardFilter {
    return EmrFilterModel<List<FilterItem>>(
      key: AdvanceFiltersController.kPayableYard,
      name: 'Payable Yard',
      value: payableYardCodeValue,
      text: payableYardCodeValue.map((yardItem) => yardItem.value).join(', '),
      enableDelete: false,
    );
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: AdvanceFiltersController.kPartyAccountNumber))
        EmrFilterModel<List<String>>(
          key: AdvanceFiltersController.kPartyAccountNumber,
          name: 'Account Number',
        ),
      if (!containsFilter(key: AdvanceFiltersController.kPartyAccountName))
        EmrFilterModel<List<FilterItem>>(
          key: AdvanceFiltersController.kPartyAccountName,
          name: 'Account Name',
        ),
      if (!containsFilter(key: AdvanceFiltersController.kCompanyName))
        EmrFilterModel<List<FilterItem>>(
          key: AdvanceFiltersController.kCompanyName,
          name: 'Company Name',
        ),
      if (!containsFilter(key: AdvanceFiltersController.kHandlingYard))
        EmrFilterModel<List<FilterItem>>(
          key: AdvanceFiltersController.kHandlingYard,
          name: 'Handling Yard',
        ),
      if (!containsFilter(key: AdvanceFiltersController.kPayableYard))
        payableYardFilter,
      if (!containsFilter(key: AdvanceFiltersController.kCurrency))
        EmrFilterModel<List<String>>(
          key: AdvanceFiltersController.kCurrency,
          name: 'Currency',
        ),
      if (!containsFilter(key: AdvanceFiltersController.kReason))
        EmrFilterModel<List<String>>(
          key: AdvanceFiltersController.kReason,
          name: 'Reason',
        ),
      if (!containsFilter(key: AdvanceFiltersController.kPayByDate))
        EmrFilterModel<List<String>>(
          key: AdvanceFiltersController.kPayByDate,
          name: 'Pay By Date',
        ),
      if (!containsFilter(key: AdvanceFiltersController.kArrangedBy))
        EmrFilterModel<List<String>>(
          key: AdvanceFiltersController.kArrangedBy,
          name: 'Arranged By',
        ),
      if (!containsFilter(key: AdvanceFiltersController.kTicketNumber))
        EmrFilterModel<List<String>>(
          key: AdvanceFiltersController.kTicketNumber,
          name: 'Ticket Number',
        ),
      if (!containsFilter(key: AdvanceFiltersController.kStatus))
        EmrFilterModel<List<String>>(
          key: AdvanceFiltersController.kStatus,
          name: 'Status',
        ),
    ];
  }

  List<FilterItem> get payableYardCodeValue {
    final defaultYardCode = userInfoService.userInfo.getDefaultYard();
    return [
      FilterItem(
        key: 'yards/$defaultYardCode',
        value: defaultYardCode,
      ),
    ];
  }
}
