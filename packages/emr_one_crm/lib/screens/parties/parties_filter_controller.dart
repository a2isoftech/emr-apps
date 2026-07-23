import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/user_info/managed_buyer.dart';
import 'package:emr_one_crm/temp/account_type_provider.dart';
import 'package:emr_one_crm/temp/managed_buyers_data.dart';
import 'package:emr_sharedtypes/models/account_type.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PartiesFilterController extends EmrFilterController {
  PartiesFilterController(this.httpClient, this.userInfoService, this.appConfig)
    : super(
        filterContentBuilder: (context, filter, controller) {
          // Determine the widget to show for each filter.

          switch (filter.key) {
            case kManagedBuyerKey:
              return EmrFilterAutoComplete<ManagedBuyer, String>(
                const Key(kManagedBuyerKey),
                filter,
                controller,
                (pattern, filterController) async {
                  final suggestions = await ManagedBuyersData.getSuggestions(
                    httpClient,
                    userInfoService,
                    appConfig,
                    pattern,
                  );

                  final searchTerm = pattern.toLowerCase();

                  final filtered = suggestions
                      .where(
                        (buyer) =>
                            buyer.azureId.isNotEmpty &&
                            buyer.username.toLowerCase().contains(searchTerm),
                      )
                      .toList();

                  filtered.sort(
                    (a, b) => a.username.toLowerCase().compareTo(
                      b.username.toLowerCase(),
                    ),
                  );

                  return filtered;
                },
                close: Navigator.of(context).pop,
                getTitle: (suggestion) => suggestion.username,
                getValue: (suggestion) => suggestion.azureId,
              );
            case kAccountType:
              return EmrFilterAutoComplete<AccountType, String>(
                const Key(kAccountType),
                filter,
                controller,
                AccountTypeProvider.getTradeRSearchSuggestions,
                close: Navigator.of(context).pop,
                getTitle: (suggestion) => suggestion.name,
                getValue: (suggestion) => suggestion.code,
                multi: true,
              );
          }

          throw Exception(
            'filterContentBuilder should return a Widget for ${filter.key}',
          );
        },
      );

  final BaseClient httpClient;
  final AppConfig appConfig;
  final UserInfoService userInfoService;

  static const kManagedBuyerKey = 'managedBuyer';
  static const kAccountType = 'accountType';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: PartiesFilterController.kManagedBuyerKey))
        EmrFilterModel<String>(
          key: PartiesFilterController.kManagedBuyerKey,
          name: 'Buyer',
        ),
      if (!containsFilter(key: PartiesFilterController.kAccountType))
        EmrFilterModel<List<String>>(
          key: PartiesFilterController.kAccountType,
          name: 'AccountType',
        ),
    ];
  }
}
