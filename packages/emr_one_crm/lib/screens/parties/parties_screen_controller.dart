import 'dart:async';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:emr_one_crm/screens/parties/parties_filter_controller.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PartiesScreenController {
  PartiesScreenController({
    required this.client,
    required this.appConfig,
    required this.userInfoService,
    required this.settingsController,
    required this.coreApiService,
  }) {
    filterController.filters.addListener(searchChanged);

    searchChanged();
  }

  final BaseClient client;
  final AppConfig appConfig;
  final UserInfoService userInfoService;
  final CoreApiService coreApiService;
  late final SettingsController settingsController;
  final ValueNotifier<List<Account>> _data = ValueNotifier([]);

  late final PartiesFilterController filterController =
      PartiesFilterController(client, userInfoService, appConfig);
  late EmrGridController<Account> gridController =
      EmrGridController(data: _data);

  final _debounceableSearch = Debounceable<PaginatedResult<List<Account>>>();

  ValueNotifier<bool> busy =
      ValueNotifier(true); // Show the spinner when the page loads.
  ValueNotifier<bool> isLoadingNextPage = ValueNotifier(false);

  String query = '';

  String? nextToken;

  void dispose() {
    filterController.filters.removeListener(searchChanged);

    _debounceableSearch.dispose();
  }

  Future<PaginatedResult<List<Account>>?> searchChanged({
    bool forceLoad = false,
    bool setBusy = true,
    bool loadNext = false,
  }) =>
      _debounceableSearch.call(
        () async {
          // When setBusy == false we're doing a "pull to refresh", so we don't
          // set busy.value = true, otherwise we would show the
          // `CircularProgressIndicator` rather than the `RefreshIndicator`.
          if (setBusy) {
            busy.value = true;
          }

          if (loadNext) {
            isLoadingNextPage.value = true;
          }

          EmrLogger.event(
            EmrOneCoreTelemetry.kCommonPartySearch,
            params: {
              'query': query,
            },
          );

          final buyingManagerFilter = filterController.tryGetFilter<String>(
            key: PartiesFilterController.kManagedBuyerKey,
          );
          final accountTypeFilter = filterController.tryGetFilter<List<String>>(
            key: PartiesFilterController.kAccountType,
          );
          var accountSubTypes = <Enum$AccountSubType>[];
          if (accountTypeFilter != null &&
              accountTypeFilter.key == PartiesFilterController.kAccountType &&
              accountTypeFilter.text == 'Sales') {
            accountSubTypes = [Enum$AccountSubType.CUSTOMER];
          }

          final accountTypeFilterValue =
              (accountTypeFilter != null && accountTypeFilter.value != null)
                  ? EmrFilterModel<List<String>>(
                      key: accountTypeFilter.key,
                      name: accountTypeFilter.name,
                      text: accountTypeFilter.text,
                      value: accountTypeFilter.value!
                          .map(
                        (type) => type.toLowerCase() == 'taxregistered'
                            ? 'LAccount'
                            : type,
                      )
                          .where((type) {
                        return !AccountTypeConstants.excludedAccountTypeNames
                            .contains(type.toLowerCase());
                      }).toList(),
                    )
                  : null;

          final buyiingManagerFilterValue = (buyingManagerFilter != null &&
                  buyingManagerFilter.value != null &&
                  buyingManagerFilter.value!.isNotEmpty)
              ? EmrFilterModel<String>(
                  key: buyingManagerFilter.key,
                  name: buyingManagerFilter.name,
                  text: buyingManagerFilter.text,
                  value: buyingManagerFilter.value,
                )
              : null;

          return coreApiService.accountService.searchAccountsWithFilters(
            null,
            accountManagerFilter: buyiingManagerFilterValue,
            accountTypeFilter: accountTypeFilterValue,
            forceLoad: forceLoad,
            nextPageToken: loadNext ? nextToken : null,
            selectedTerritory: settingsController.territory,
            accountSubTypes: accountSubTypes,
            onlyMyAccounts: buyingManagerFilter?.value == null,
            nameCodeQuery: query.isNotEmpty ? query : null,
            includeBusinessDetail: false,
          );
        },
        onDebounced: () {
          busy.value = false;
          isLoadingNextPage.value = false;
        },
        then: (values) {
          nextToken = values.nextPageToken;
          if (loadNext) {
            _data.value.addAll(values.items);
          } else {
            _data.value = values.items;
          }
          busy.value = false;
          isLoadingNextPage.value = false;
        },
      );
}
