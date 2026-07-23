import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class AccountsSearchDataSource extends EmrQueryGraphQLDataSource<Account> {
  AccountsSearchDataSource({
    required this.coreApiService,
    required this.settingsService,
  });
  final CoreApiService coreApiService;
  final SettingsService settingsService;

  @override
  bool get supportsFacets => true;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();

    try {
      final (results, meta) = await coreApiService.accountService
          .searchAccountsWithFacets(
            after: after,
            before: before,
            first: first,
            last: last,
            input: await getAccountSearchInput(),
            sortBy: [await getAccountSortInput()],
            defaultTerritory: await settingsService.territoryCode(),
          );

      final facetResults = {
        for (final (key, facetSection) in _mapApiFacets(meta.facets))
          key: facetSection,
      };
      recordCount = meta.recordCount;
      pageInfo = meta.pageInfo;
      facets.value = facetResults;
      data.value = results;
    } finally {
      loading.value = false;
    }
  }

  List<String>? _getStringFilterList(String key) {
    final value = queryScope.filters[key] as List<String>?;
    if (value == null) return null;

    return value.map((str) => str == 'EMPTY_STRING' ? '' : str).toList();
  }

  Future<Input$AccountsSearchInput> getAccountSearchInput() async {
    return Input$AccountsSearchInput(
      query: queryScope.query.replaceAll('+', ''),
      accountManagers: _getStringFilterList(
        AccountsSearchFilterController.kAccountManager,
      ),
      accountTypes: _getStringFilterList(
        AccountsSearchFilterController.kAccountType,
      ),
      accountStatuses:
          (queryScope.filters[AccountsSearchFilterController.kAccountStatus]
                  as List<String>?)
              ?.map((e) {
                try {
                  final value = Enum$AccountStatus.values.byName(
                    e.toUpperCase(),
                  );
                  return value;
                } catch (_) {
                  return null;
                }
              })
              .whereType<Enum$AccountStatus>()
              .toList(),
      territories: [await settingsService.territoryCode()],
      primaryManagerOnly: true,
    );
  }

  Future<Input$AccountSortInput> getAccountSortInput() async {
    if (queryScope.sortOrder.isEmpty) {
      return Input$AccountSortInput.fromJson({'code': 'ASC'});
    }

    return queryScope.sortOrder
        .map(
          (e) => Input$AccountSortInput.fromJson({
            e.field: e.direction.toString(),
          }),
        )
        .last;
  }

  static Iterable<(String, EmrFacetResult)> _mapApiFacets(List<Facet> facets) =>
      facets.map(_mapApiFacet);

  static (String, EmrFacetResult) _mapApiFacet(Facet apiFacet) {
    final facetSection = EmrFacetResult(
      name: switch (apiFacet.value!.name) {
        'Status' => 'by status',
        'Type' => 'by type',
        'PrimaryManagerName' => 'by manager',
        _ => '',
      },
      values:
          apiFacet.value!.values
              ?.map(
                (f) => EmrFacetResultValue(
                  text: f.range?.toUpperCase() ?? '',
                  value: f.range ?? '',
                  count: f.count ?? 0,
                ),
              )
              .toList() ??
          const [],
    );

    final key = switch (apiFacet.value!.name) {
      'Status' => 'AccountStatuses',
      'Type' => 'AccountTypes',
      'PrimaryManagerName' => 'AccountManagers',
      _ => throw ArgumentError.value(
        apiFacet.value!.name,
        'apiFacet.value.name',
      ),
    };

    return (key, facetSection);
  }

  List<EmrFilterModel<dynamic>> getFilter(AccountSearchInput input) {
    return [
      if (input.accountManagerFilter != null)
        EmrFilterModel<List<String>>(
          key: AccountsSearchFilterController.kAccountManager,
          name: 'Account Manager',
          value: input.accountManagerFilter,
          text: 'Account Manager: ${input.accountManagerFilter?.join(',')}',
        ),
      if (input.accountStatusFilter != null)
        EmrFilterModel<List<String>>(
          key: AccountsSearchFilterController.kAccountStatus,
          name: 'Account Status',
          value: input.accountStatusFilter,
          text: 'Account Status: ${input.accountStatusFilter?.join(',')}',
        ),
      if (input.accountStatusFilter != null)
        EmrFilterModel<List<String>>(
          key: AccountsSearchFilterController.kAccountType,
          name: 'Account Type',
          value: input.accountTypeFilter,
          text: 'Account Type: ${input.accountTypeFilter?.join(',')}',
        ),
    ];
  }
}
