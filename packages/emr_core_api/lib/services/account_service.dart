import 'dart:async';

import 'package:collection/collection.dart';
import 'package:decimal/decimal.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/graphql/mutations/account/replace_account_prepaycard.graphql.dart';
import 'package:emr_core_api/graphql/queries/account/account_search_facet.graphql.dart';
import 'package:emr_core_api/models/search_account_result.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/graphql/schema.graphql.dart' as shared;
import 'package:emr_sharedtypes/models/teams/account_team.dart';
import 'package:emr_sharedtypes/pricing/publication.dart';

class AccountService {
  AccountService({
    required this.httpClient,
    this.defaultCacheTtl = const Duration(
      minutes: EmrCoreApiConstants.cacheDurationInMin,
    ),
  }) {
    SharedPrefsCacheProvider.createFromDefaultInstance().then((value) {
      emrCacheProvider = value;
    });
  }

  final CoreApiClient httpClient;
  final Duration defaultCacheTtl;

  EmrCacheProvider? emrCacheProvider;

  String source = 'AccountService';

  Future<List<Address>> getUKAddresses(String postCode) async {
    return (await getAddresses(
      Enum$CountryId.UK.toString(),
      postCode,
    )).map((a) => a.address).toList();
  }

  Future<List<Address>> getUSAddresses(String zipCode) async {
    return (await getAddresses(
      Enum$CountryId.US.toString(),
      zipCode,
    )).map((a) => a.address).toList();
  }

  Future<List<AddressLookupResult>> getAddresses(
    String countryId,
    String searchText,
  ) async {
    final sanitizedCountryId = countryId == 'UK' ? 'GB' : countryId;
    final response = await documentNodeQueryGetAddresses.execute(
      httpClient,
      Query$GetAddresses.fromJson,
      variables: Variables$Query$GetAddresses(
        countryId:
            EnumService.stringToEnum(
              sanitizedCountryId,
              Enum$CountryId.values,
            ) ??
            Enum$CountryId.NONE,
        searchText: searchText,
      ),
    );
    if (response.data != null) {
      return response.data!.lookupAddress
          .map(
            (e) => AddressLookupResult(
              id: e.id,
              address: Address(
                address1: e.address1,
                address2: e.address2,
                address3: e.address3,
                address4: e.address4,
                address5: e.address5,
                address6: e.address6,
                postCode: e.postCode,
              ),
            ),
          )
          .toList();
    }
    return [];
  }

  Future<Address> getAddressDetails(String addressId) async {
    final response = await documentNodeQueryGetAddressDetails.execute(
      httpClient,
      Query$GetAddressDetails.fromJson,
      variables: Variables$Query$GetAddressDetails(addressId: addressId),
    );

    return Address(
      address1: response.data?.lookupAddressDetails.address1,
      address2: response.data?.lookupAddressDetails.address2,
      address3: response.data?.lookupAddressDetails.address3,
      address4: response.data?.lookupAddressDetails.address4,
      address5: response.data?.lookupAddressDetails.address5,
      address6: response.data?.lookupAddressDetails.address6,
      geoLocation: response.data?.lookupAddressDetails.latitude != null &&
              response.data?.lookupAddressDetails.longitude != null
          ? LatLong(
              Decimal.parse(
                response.data!.lookupAddressDetails.latitude.toString(),
              ),
              Decimal.parse(
                response.data!.lookupAddressDetails.longitude.toString(),
              ),
            )
          : null,
      postCode: response.data?.lookupAddressDetails.postCode,
    );
  }

  Future<SearchAccountResult> searchAccounts({
    required String query,
    List<String>? territories,
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = const Duration(
      minutes: EmrCoreApiConstants.cacheDurationInMin,
    ),
    List<String>? accountTypes,
    List<Enum$AccountSubType>? accountSubTypes,
    String? endCursor,
    int? first,
  }) async {
    final input = Input$AccountsSearchInput(
      query: query,
      territories: territories,
      accountTypes: accountTypes,
      accountSubTypes: accountSubTypes,
    );

    final response = await documentNodeQueryAccountSearch.execute(
      httpClient,
      Query$AccountSearch.fromJson,
      variables: Variables$Query$AccountSearch(
        input: input,
        after: endCursor,
        first: first,
      ),
      cacheProvider: cacheProvider ?? emrCacheProvider,
      cacheTtl: cacheTtl,
    );

    final accounts =
        response.data?.searchAccounts?.nodes?.map((e) {
          final addressMap = <String, Address>{};
          if (e.accountAddresses != null) {
            for (final address in e.accountAddresses!) {
              if (address != null && address.key != null) {
                addressMap[address.key!] = Address(
                  address1: address.address1 ?? '',
                  address2: address.address2 ?? '',
                  address3: address.address3 ?? '',
                  address4: address.address4 ?? '',
                  address5: address.address5 ?? '',
                  address6: address.address6 ?? '',
                  postCode: address.postCode ?? '',
                  addressKey: address.key ?? '',
                );
              }
            }
          }

          return Account(
            e.id,
            e.code,
            e.name,
            '',
            null,
            null,
            addressMap.values.toList(),
            '',
            e.accountContacts?.map((contact) {
                  return Contact(
                    id: contact?.key,
                    contactTypes: contact?.value.contactTypes
                        .map(_mapContactType)
                        .toList(),
                    title: contact?.value.title,
                    firstName: contact?.value.firstName,
                    lastName: contact?.value.lastName,
                    proofOfAddress: null,
                    proofOfIdentification: null,
                    contactPreferences: ContactPreference(
                      mobile: ContactMethod(
                        contact?.value.contactPreferences.mobile.value ?? '',
                        enabled:
                            contact?.value.contactPreferences.mobile.enabled ??
                            false,
                      ),
                      phone: ContactMethod(
                        contact?.value.contactPreferences.phone.value ?? '',
                        enabled:
                            contact?.value.contactPreferences.phone.enabled ??
                            false,
                      ),
                      email: ContactMethod(
                        contact?.value.contactPreferences.email.value ?? '',
                        enabled:
                            contact?.value.contactPreferences.email.enabled ??
                            false,
                      ),
                    ),
                  );
                }).toList() ??
                [],
            BusinessDetail.empty(),
            e.locations
                .map(
                  (location) => Location(
                    location.code,
                    location.name,
                    addressMap[location.addressKey.replaceAll(
                          RegExp('-'),
                          '',
                        )] ??
                        Address.empty(),
                    null,
                    null,
                    null,
                  ),
                )
                .toList(),
            AccountManager(
              '',
              '',
              0,
              e.primaryManager.name ?? '',
              '',
              '',
              '',
              [],
            ),
            e.managers
                .map(
                  (manager) => AccountManager(
                    '',
                    '',
                    0,
                    manager.value.first.name ?? '',
                    manager.value.first.userInfo?.emailAddress ?? '',
                    '',
                    '',
                    [],
                  ),
                )
                .toList(),
            '',
            '',
            '',
            [],
            null,
            [],
            [],
            [],
            null,
            null,
            null,
            '',
            '',
            null,
            null,
            '',
            null,
            accountType: e.type.toAccountType(),
          );
        }).toList() ??
        const [];
    final pageInfoResponse = response.data?.searchAccounts?.pageInfo;
    final pageInfo = EmrQueryGraphQLPageInfo(
      hasPreviousPage: pageInfoResponse?.hasPreviousPage ?? false,
      hasNextPage: pageInfoResponse?.hasNextPage ?? false,
      startCursor: pageInfoResponse?.startCursor,
      endCursor: pageInfoResponse?.endCursor,
    );
    return SearchAccountResult(accounts: accounts, pageInfo: pageInfo);
  }

  Future<SearchAccountResult> searchAccountsByAccountCode({
    List<String>? territories,
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = const Duration(
      minutes: EmrCoreApiConstants.cacheDurationInMin,
    ),
    List<String>? accountTypes,
    int? first,
    String? code,
  }) async {
    final input = Input$AccountsSearchInput(
      territories: territories,
      accountTypes: accountTypes,
    );

    final response = await documentNodeQueryAccountSearch.execute(
      httpClient,
      Query$AccountSearch.fromJson,
      variables: Variables$Query$AccountSearch(
        input: input,
        first: first,
        where: Input$AccountFilterInput(
          code: Input$StringOperationFilterInput(eq: code),
        ),
      ),
      cacheProvider: cacheProvider ?? emrCacheProvider,
      cacheTtl: cacheTtl,
    );

    final accounts =
        response.data?.searchAccounts?.nodes?.map((e) {
          final addressMap = <String, Address>{};
          if (e.accountAddresses != null) {
            for (final address in e.accountAddresses!) {
              if (address != null && address.key != null) {
                addressMap[address.key!] = Address(
                  address1: address.address1 ?? '',
                  address2: address.address2 ?? '',
                  address3: address.address3 ?? '',
                  address4: address.address4 ?? '',
                  address5: address.address5 ?? '',
                  address6: address.address6 ?? '',
                  postCode: address.postCode ?? '',
                  addressKey: address.key ?? '',
                );
              }
            }
          }

          return Account(
            e.id,
            e.code,
            e.name,
            '',
            null,
            null,
            addressMap.values.toList(),
            '',
            e.accountContacts?.map((contact) {
                  return Contact(
                    id: contact?.key,
                    contactTypes: contact?.value.contactTypes
                        .map(_mapContactType)
                        .toList(),
                    title: null,
                    firstName: contact?.value.firstName,
                    lastName: contact?.value.lastName,
                    proofOfAddress: null,
                    proofOfIdentification: null,
                    contactPreferences: ContactPreference(
                      mobile: ContactMethod(
                        contact?.value.contactPreferences.mobile.value ?? '',
                        enabled:
                            contact?.value.contactPreferences.mobile.enabled ??
                            false,
                      ),
                      phone: ContactMethod(
                        contact?.value.contactPreferences.phone.value ?? '',
                        enabled:
                            contact?.value.contactPreferences.phone.enabled ??
                            false,
                      ),
                      email: ContactMethod(
                        contact?.value.contactPreferences.email.value ?? '',
                        enabled:
                            contact?.value.contactPreferences.email.enabled ??
                            false,
                      ),
                    ),
                  );
                }).toList() ??
                [],
            BusinessDetail.empty(),
            e.locations
                .map(
                  (location) => Location(
                    location.code,
                    location.name,
                    addressMap[location.addressKey.replaceAll(
                          RegExp('-'),
                          '',
                        )] ??
                        Address.empty(),
                    null,
                    null,
                    null,
                  ),
                )
                .toList(),
            AccountManager(
              '',
              '',
              0,
              e.primaryManager.name ?? '',
              '',
              '',
              '',
              [],
            ),
            [],
            '',
            '',
            '',
            [],
            null,
            [],
            [],
            [],
            null,
            null,
            null,
            '',
            '',
            null,
            null,
            '',
            null,
            accountType: e.type.toAccountType(),
          );
        }).toList() ??
        const [];
    final pageInfoResponse = response.data?.searchAccounts?.pageInfo;
    final pageInfo = EmrQueryGraphQLPageInfo(
      hasPreviousPage: pageInfoResponse?.hasPreviousPage ?? false,
      hasNextPage: pageInfoResponse?.hasNextPage ?? false,
      startCursor: pageInfoResponse?.startCursor,
      endCursor: pageInfoResponse?.endCursor,
    );
    return SearchAccountResult(accounts: accounts, pageInfo: pageInfo);
  }

  Future<List<Account>> searchAccountsByContactInfo({
    required String contactInfoQuery,
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = const Duration(
      minutes: EmrCoreApiConstants.cacheDurationInMin,
    ),
  }) async {
    final response = await documentNodeQueryAccountSearchSimple.execute(
      httpClient,
      Query$AccountSearchSimple.fromJson,
      variables: Variables$Query$AccountSearchSimple(
        input: Input$AccountsSearchInput(contactInfoQuery: contactInfoQuery),
      ),
      cacheProvider: cacheProvider ?? emrCacheProvider,
      cacheTtl: cacheTtl,
    );

    return response.data?.searchAccounts?.nodes
            ?.map((a) => Account.simple('', a.code, a.name))
            .toList() ??
        const [];
  }

  Future<PaginatedResult<List<Account>>> searchAccountsWithFilters(
    String? query, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = const Duration(
      minutes: EmrCoreApiConstants.cacheDurationInMin,
    ),
    bool forceLoad = false,
    EmrFilterModel<String>? accountManagerFilter,
    EmrFilterModel<List<String>>? accountTypeFilter,
    bool loadAllParties = false,
    String? selectedTerritory,
    List<Enum$AccountSubType>? accountSubTypes,
    String? nextPageToken,
    bool onlyMyAccounts = false,
    String? nameCodeQuery,
    bool primaryManagerOnly = false,
    bool includeBusinessDetail = true,
  }) async {
    final partyList = <Account>[];
    var npt = nextPageToken;

    cacheProvider ??= emrCacheProvider;

    var hasNextPage = true;

    while (hasNextPage) {
      final response = await documentNodeQueryAccountSearchSimple.execute(
        httpClient,
        Query$AccountSearchSimple.fromJson,
        variables: {
          'first': 50,
          'after': npt,
          'input': Input$AccountsSearchInput(
            accountTypes: accountTypeFilter?.value?.isEmpty ?? true
                ? []
                : _getAccountTypes(accountTypeFilter?.value ?? []),
            accountManagers: accountManagerFilter?.value?.isEmpty ?? true
                ? []
                : [accountManagerFilter!.value!],
            ignoreDefaultTerritory: true,
            territories: selectedTerritory == null ? [] : [selectedTerritory],
            accountSubTypes: accountSubTypes,
            query: query,
            onlyMyAccounts: onlyMyAccounts,
            nameCodeQuery: nameCodeQuery,
            primaryManagerOnly: primaryManagerOnly,
          ),
          'order': [
            Input$AccountSortInput.fromJson({'code': 'ASC'}),
            Input$AccountSortInput.fromJson({'name': 'ASC'}),
          ],
          'includeBusinessDetail': includeBusinessDetail,
        },
        cacheProvider: cacheProvider,
        cacheTtl: cacheTtl,
        forceLoad: forceLoad,
      );

      if (!response.hasErrors() &&
          (response.data?.searchAccounts?.nodes?.isNotEmpty ?? false)) {
        partyList.addAll(
          response.data!.searchAccounts!.nodes!.map(
            (e) => Account.simple(e.id, e.code, e.name),
          ),
        );

        npt = response.data?.searchAccounts?.pageInfo.endCursor;

        if (loadAllParties) {
          hasNextPage =
              response.data?.searchAccounts?.pageInfo.hasNextPage ?? false;
        } else {
          hasNextPage = false;
        }
      } else {
        hasNextPage = false;
      }
    }

    return PaginatedResult(npt, partyList);
  }

  Future<PaginatedResult<List<Account>>> searchAccountsByManagers(
    String? query, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = const Duration(minutes: 5),
    bool forceLoad = false,
    List<String>? accountManagerFilter,
    List<String>? territories,
    bool loadAllParties = false,
    String? nextPageToken,
    bool primaryManagerOnly = false,
  }) async {
    final partyList = <Account>[];
    var npt = nextPageToken;

    cacheProvider ??= emrCacheProvider;

    var hasNextPage = true;

    while (hasNextPage) {
      final response = await documentNodeQueryAccountSearchSimple.execute(
        httpClient,
        Query$AccountSearchSimple.fromJson,
        variables: {
          'first': 50,
          'after': npt,
          'input': Input$AccountsSearchInput(
            accountManagers: accountManagerFilter,
            ignoreDefaultTerritory: false,
            query: query,
            territories: territories,
            primaryManagerOnly: primaryManagerOnly,
          ),
          'order': [
            Input$AccountSortInput.fromJson({'code': 'ASC'}),
            Input$AccountSortInput.fromJson({'name': 'ASC'}),
          ],
        },
        cacheProvider: cacheProvider,
        cacheTtl: cacheTtl,
        forceLoad: forceLoad,
      );

      if (response.errors?.isNotEmpty ?? false) {
        EmrLogger.event(
          'Failed to get accounts by managers',
          params: {
            'query': query ?? '',
            'accountManagerFilter': accountManagerFilter?.join(',') ?? '',
            for (final (index, error) in response.errors!.indexed)
              '$index': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return PaginatedResult(npt, partyList);
      }

      if (response.data?.searchAccounts?.nodes?.isNotEmpty ?? false) {
        partyList.addAll(
          response.data!.searchAccounts!.nodes!.map(
            (e) => Account.simple('accounts/${e.code}', e.code, e.name),
          ),
        );

        npt = response.data?.searchAccounts?.pageInfo.endCursor;

        if (loadAllParties) {
          hasNextPage =
              response.data?.searchAccounts?.pageInfo.hasNextPage ?? false;
        } else {
          hasNextPage = false;
        }
      } else {
        hasNextPage = false;
      }
    }

    return PaginatedResult(npt, partyList);
  }

  Future<(List<Account>, EmrQueryGraphQLMetadata<List<Facet>>)>
  searchAccountsWithFacets({
    required Input$AccountsSearchInput input,
    String? after,
    String? before,
    int? first,
    int? last,
    List<Input$AccountSortInput>? sortBy,
    String? defaultTerritory,
  }) async {
    final facets = await getSearchAccountsFacet(
      input: input,
      after: after,
      before: before,
      first: first,
      last: last,
    );

    final response = await documentNodeQueryAccountSearch.execute(
      httpClient,
      Query$AccountSearch.fromJson,
      variables: Variables$Query$AccountSearch(
        input: input,
        before: before,
        after: after,
        first: first,
        last: last,
        order: sortBy,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    final accounts =
        response.data?.searchAccounts?.nodes?.map((e) {
          final addressMap = <String, Address>{};
          if (e.accountAddresses != null) {
            for (final address in e.accountAddresses!) {
              if (address != null && address.key != null) {
                addressMap[address.key!] = Address(
                  address1: address.address1 ?? '',
                  address2: address.address2 ?? '',
                  address3: address.address3 ?? '',
                  address4: address.address4 ?? '',
                  address5: address.address5 ?? '',
                  address6: address.address6 ?? '',
                  postCode: address.postCode ?? '',
                  addressKey: address.key ?? '',
                );
              }
            }
          }

          return Account(
            e.id,
            e.code,
            e.name,
            e.industryGroup,
            null,
            null,
            addressMap.values.toList(),
            '',
            e.accountContacts?.map((contact) {
                  return Contact(
                    id: null,
                    contactTypes: contact?.value.contactTypes
                        .map(_mapContactType)
                        .toList(),
                    title: null,
                    firstName: contact?.value.firstName,
                    lastName: contact?.value.lastName,
                    proofOfAddress: null,
                    proofOfIdentification: null,
                    contactPreferences: ContactPreference(
                      mobile: ContactMethod(
                        contact?.value.contactPreferences.mobile.value ?? '',
                        enabled:
                            contact?.value.contactPreferences.mobile.enabled ??
                            false,
                      ),
                      phone: ContactMethod(
                        contact?.value.contactPreferences.phone.value ?? '',
                        enabled:
                            contact?.value.contactPreferences.phone.enabled ??
                            false,
                      ),
                      email: ContactMethod(
                        contact?.value.contactPreferences.email.value ?? '',
                        enabled:
                            contact?.value.contactPreferences.email.enabled ??
                            false,
                      ),
                    ),
                  );
                }).toList() ??
                [],
            BusinessDetail.empty(),
            e.locations
                .map(
                  (location) => Location(
                    location.code,
                    location.name,
                    addressMap[location.addressKey.replaceAll(
                          RegExp('-'),
                          '',
                        )] ??
                        Address.empty(),
                    null,
                    null,
                    null,
                  ),
                )
                .toList(),
            AccountManager(
              '',
              '',
              0,
              e.primaryManager.name ?? '',
              '',
              '',
              '',
              [],
            ),
            [],
            '',
            '',
            '',
            [],
            null,
            [],
            [],
            [],
            null,
            null,
            null,
            '',
            '',
            null,
            null,
            '',
            null,
            accountType: e.type.toAccountType(),
            accountStatus: e.accountStatus.toJson(),
          );
        }).toList() ??
        const [];
    final pageInfoResponse = response.data?.searchAccounts?.pageInfo;
    final totalCount = response.data?.searchAccounts?.totalCount;
    final pageInfo = EmrQueryGraphQLPageInfo(
      hasPreviousPage: pageInfoResponse?.hasPreviousPage ?? false,
      hasNextPage: pageInfoResponse?.hasNextPage ?? false,
      startCursor: pageInfoResponse?.startCursor,
      endCursor: pageInfoResponse?.endCursor,
    );

    return (
      accounts,
      EmrQueryGraphQLMetadata<List<Facet>>(
        facets,
        totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage: pageInfo.hasPreviousPage,
          hasNextPage: pageInfo.hasNextPage,
          startCursor: pageInfo.startCursor,
          endCursor: pageInfo.endCursor,
        ),
      ),
    );
  }

  Future<List<Facet>> getSearchAccountsFacet({
    required Input$AccountsSearchInput input,
    String? after,
    String? before,
    int? first,
    int? last,
  }) async {
    final results = await documentNodeQuerySearchAccountsFacet.execute(
      httpClient,
      Query$SearchAccountsFacet.fromJson,
      variables: Variables$Query$SearchAccountsFacet(
        input: input,
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (results.data?.searchAccountsFacet ?? [])
        .map(
          (f) => Facet(
            key: f.key,
            value: Value(
              name: f.value.name,
              values: (f.value.values ?? [])
                  .map(
                    (fv) => Values(
                      range: fv?.range,
                      count: fv?.count,
                      name: fv?.name,
                    ),
                  )
                  .toList(),
            ),
          ),
        )
        .toList();
  }

  Future<(List<Account>, EmrQueryGraphQLMetadata<List<Facet>>)>
  searchRetailAccounts({
    String? after,
    String? before,
    int? first,
    int? last,
    AccountSearchInput? input,
    String? sortBy,
    String? defaultTerritory,
    //Enum$SortEnumType? sortType,
  }) async {
    final facets = await getRetailAccountsFacet(
      input: input,
      defaultTerritory: defaultTerritory,
    );

    final results = await documentNodeQuerySearchRetailAccounts.execute(
      httpClient,
      Query$SearchRetailAccounts.fromJson,
      variables: Variables$Query$SearchRetailAccounts(
        after: after,
        before: before,
        first: first,
        last: last,
        input: Input$RetailAccountsSearchInput(
          defaultTerritory: defaultTerritory,
          query: input?.freeText,
          accountTypes: input?.accountTypeFilter,
          accountManagers: input?.accountManagerFilter,
        ),
      ),
      cacheProvider: emrCacheProvider,
      cacheTtl: defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (
      (results.data?.searchRetailAccounts?.nodes ?? []).map((a) {
        final acnt = Account(
          a.id,
          a.code,
          a.name,
          a.industryGroup,
          null,
          null,
          (a.accountAddresses ?? [])
              .map(
                (a) => Address(
                  address1: a?.address1,
                  address2: '',
                  address3: '',
                  address4: '',
                  address5: '',
                  address6: '',
                  postCode: a?.postCode,
                ),
              )
              .toList(),
          '',
          (a.accountContacts ?? [])
              .map(
                (c) => Contact(
                  id: '',
                  contactTypes: [],
                  title: '',
                  firstName: c?.value.firstName,
                  lastName: c?.value.lastName,
                  contactPreferences: ContactPreference(),
                  proofOfIdentification: [],
                  proofOfAddress: [],
                ),
              )
              .toList(),
          null,
          [],
          null,
          (a.accountManagers ?? [])
              .map(
                (a) => AccountManager(
                  a?.id ?? '',
                  '',
                  0,
                  a?.userInfo?.name,
                  a?.userInfo?.emailAddress,
                  '',
                  '',
                  [],
                ),
              )
              .toList(),
          '',
          '',
          '',
          [],
          null,
          [],
          [],
          [],
          null,
          null,
          IndustryGroups(
            trader: a.industryGroups.trader,
            supplier: a.industryGroups.supplier,
          ),
          '',
          '',
          null,
          null,
          '',
          null, // tax settings
          lastTicketDate: a.lastTicketDate,
          accountType: a.type.toAccountType(),
        );

        acnt.accountStatus = EnumService.enumToString(a.accountStatus);
        return acnt;
      }).toList(),
      EmrQueryGraphQLMetadata<List<Facet>>(
        facets,
        results.data?.searchRetailAccounts?.totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage:
              results.data?.searchRetailAccounts?.pageInfo.hasPreviousPage ??
              false,
          hasNextPage:
              results.data?.searchRetailAccounts?.pageInfo.hasNextPage ?? false,
          startCursor: results.data?.searchRetailAccounts?.pageInfo.startCursor,
          endCursor: results.data?.searchRetailAccounts?.pageInfo.endCursor,
        ),
      ),
    );
  }

  Future<List<Facet>> getRetailAccountsFacet({
    String? after,
    String? before,
    int? first,
    int? last,
    AccountSearchInput? input,
    String? defaultTerritory,
  }) async {
    final results = await documentNodeQuerySearchRetailAccountsFacet.execute(
      httpClient,
      Query$SearchRetailAccountsFacet.fromJson,
      variables: Variables$Query$SearchRetailAccountsFacet(
        input: Input$RetailAccountsSearchInput(
          defaultTerritory: defaultTerritory,
          query: input?.freeText,
          accountTypes: input?.accountTypeFilter,
          accountManagers: input?.accountManagerFilter,
        ),
      ),
      cacheProvider: emrCacheProvider,
      cacheTtl: defaultCacheTtl,
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (results.data?.searchRetailAccountsFacet ?? [])
        .map(
          (f) => Facet(
            key: f.key,
            value: Value(
              name: f.value.name,
              values: (f.value.values ?? [])
                  .map(
                    (fv) => Values(
                      range: fv?.range,
                      count: fv?.count,
                      name: fv?.name,
                    ),
                  )
                  .toList(),
            ),
          ),
        )
        .toList();
  }

  Future<String?> getMediaApiUrlWithToken({
    required String fileId,
    required String partyAccountNo,
  }) async {
    final results = await documentNodeQueryGetMediaApiSasTokenInternal.execute(
      httpClient,
      Query$GetMediaApiSasTokenInternal.fromJson,
      variables: Variables$Query$GetMediaApiSasTokenInternal(
        fname: fileId,
        partyAccountNo: partyAccountNo,
      ),
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return results.data?.mediaApiUrlWithTokenInternal;
  }

  Future<List<Publication>> getAllPublications() async {
    try {
      final response = await documentNodeQueryGetAllPublications.execute(
        httpClient,
        Query$GetAllPublications.fromJson,
      );

      if (response.errors?.isNotEmpty ?? false) {
        EmrLogger.event(
          'Failed to get all publications',
          params: {
            for (final (index, error) in response.errors!.indexed)
              '$index': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return const [];
      }

      return response.data?.publications
              .map((x) => Publication(id: x.id, name: x.name))
              .toList() ??
          const [];
    } on Exception catch (e, trace) {
      EmrLogger.error(
        'Failed to get all publications',
        error: e,
        type: EmrOneCoreTelemetry.kTypeResult,
        stackTrace: trace,
        source: source,
      );

      return const [];
    }
  }

  Future<(bool success, String? error)> updateAccountPublications(
    String accountCode,
    String accountId,
    List<AccountPublication> publications,
  ) async {
    try {
      final response = await documentNodeMutationUpdateAccountPublications
          .execute(
            httpClient,
            variables: Variables$Mutation$UpdateAccountPublications(
              input: Input$AccountPriceMappingInput(
                accountId: accountId,
                accountCode: accountCode,
                scopes: publications.map((x) => x.publication.id).toList(),
                allowedProducts: publications.isNotEmpty
                    ? publications
                          .map(
                            (p) => Input$AllowedProductInput(
                              publicationId: p.publication.id,
                              productIds: p.allowedProducts.productIds,
                              yardIds: p.allowedProducts.yardIds,
                            ),
                          )
                          .toList()
                    : [],
              ),
            ),
            Mutation$UpdateAccountPublications.fromJson,
          );

      if (response.errors?.isNotEmpty ?? false) {
        EmrLogger.event(
          'Failed to update account publications',
          params: {
            'accountCode': accountCode,
            'accountId': accountId,
            'publications': publications.map((p) => p.publication.id).join(','),
            for (final (index, error) in response.errors!.indexed)
              '$index': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (
          false,
          'An error occurred while updating account publications. : '
              '${response.errors!.join(',')}',
        );
      }

      return (true, '');
    } on Exception catch (e, trace) {
      EmrLogger.error(
        'Failed to update account publications',
        params: {
          'accountCode': accountCode,
          'accountId': accountId,
          'publications': publications.map((p) => p.publication.id).join(','),
        },
        type: EmrOneCoreTelemetry.kTypeResult,
        stackTrace: trace,
        error: e,
        source: source,
      );

      return (false, 'An error occurred while updating account publications.');
    }
  }

  Future<(bool success, String? error)> addAccoutManagers(
    Input$CreateAccountManagerInput createAccountManagerInput,
  ) async {
    final response = await documentNodeMutationAddAccountManager.execute(
      httpClient,
      Mutation$AddAccountManager.fromJson,
      variables: Variables$Mutation$AddAccountManager(
        input: createAccountManagerInput,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }

    return response.data!.addAccountManager!.when(
      account: (tag) => (true, null),
      accountManagerError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error while adding account Managers',
          params: {
            'managerId': createAccountManagerInput.managerId,
            'accountId': createAccountManagerInput.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Error while adding account Managers',
          params: {
            'managerId': createAccountManagerInput.managerId,
            'accountId': createAccountManagerInput.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> updateAccoutManagers(
    Input$UpdateAccountManagerInput updateAccountManagerInput,
  ) async {
    final response = await documentNodeMutationUpdateAccountManager.execute(
      httpClient,
      Mutation$UpdateAccountManager.fromJson,
      variables: Variables$Mutation$UpdateAccountManager(
        input: updateAccountManagerInput,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }

    return response.data!.updateAccountManager!.when(
      account: (tag) => (true, null),
      accountManagerError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error while updating account Managers',
          params: {
            'newManagerId': updateAccountManagerInput.newManagerId ?? '',
            'oldManagerId': updateAccountManagerInput.oldManagerId,
            'accountId': updateAccountManagerInput.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Error while updating account Managers',
          params: {
            'newManagerId': updateAccountManagerInput.newManagerId ?? '',
            'oldManagerId': updateAccountManagerInput.oldManagerId,
            'accountId': updateAccountManagerInput.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> deleteAccountManager(
    Input$DeleteAccountManagerInput deleteAccountManagerInput,
  ) async {
    final response = await documentNodeMutationDeleteAccountManager.execute(
      httpClient,
      Mutation$DeleteAccountManager.fromJson,
      variables: Variables$Mutation$DeleteAccountManager(
        input: deleteAccountManagerInput,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }

    return response.data!.deleteAccountManager!.when(
      account: (tag) => (true, null),
      accountManagerError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error deleting account locations',
          params: {
            'managerId': deleteAccountManagerInput.managerId ?? '',
            'accountId': deleteAccountManagerInput.accountId ?? '',
            'serviceType': deleteAccountManagerInput.serviceType.toString(),
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Error extending tag',
          params: {
            'managerId': deleteAccountManagerInput.managerId ?? '',
            'accountId': deleteAccountManagerInput.accountId ?? '',
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> reorderAccountManagers(
    Input$ReorderAccountManagersInput input,
  ) async {
    final response = await documentNodeMutationReorderAccountManagers.execute(
      httpClient,
      Mutation$ReorderAccountManagers.fromJson,
      variables: Variables$Mutation$ReorderAccountManagers(input: input),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }

    return response.data!.reorderAccountManagers!.when(
      account: (tag) => (true, null),
      accountManagerError: (error) {
        EmrLogger.event(
          'Error reordering account managers',
          params: {
            'accountId': input.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, error.message);
      },
      orElse: () {
        EmrLogger.event(
          'Error reordering account managers',
          params: {
            'accountId': input.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
    );
  }

  List<String> _getAccountTypes(List<String> accountTypes) {
    return accountTypes.map<String>((at) {
      switch (at) {
        case 'Supplier':
          return 'SUPPLIER';
        case 'NonTaxRegistered':
          return 'RETAIL';
        case 'TaxRegistered':
          return 'BUSINESS';
        case 'Prospect':
          return 'PROSPECT';
        case 'LAccount':
          return 'LACCOUNT';
      }
      return '';
    }).toList();
  }

  Future<(Account?, String?, String?)> getAccountInfo(
    String code, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = Duration.zero,
    bool forceLoad = false,
    bool includePublicationData = true,
  }) async {
    final response = await _getAccountInfo(
      code,
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: forceLoad,
      includePublicationData: includePublicationData,
    );
    String? errorCode;
    String? errorMessage;
    if (response.errors?.isNotEmpty ?? false) {
      final err = response.errors!.first;
      errorMessage = err.message;
      errorCode = err.extensions?['code']?.toString();
    }

    if (response.hasErrors() || response.data == null) {
      return (null, errorCode, errorMessage);
    }

    // ignore: deprecated_member_use_from_same_package
    final node = response.data!.accountById;
    final managers = _mapAccountManagers(node.accountManagers);

    final account = Account(
      node.id,
      node.code,
      node.name,
      node.industryGroup ?? '',
      node.celAgreement != null
          ? LegalAgreement(
              node.celAgreement?.agreementDate,
              node.celAgreement?.expiryDate,
            )
          : null,
      node.cfcAgreement != null
          ? LegalAgreement(
              node.cfcAgreement?.agreementDate,
              node.cfcAgreement?.expiryDate,
            )
          : null,
      (node.accountAddresses ?? [])
          .map(
            (a) => Address(
              address1: a?.address1,
              address2: a?.address2,
              address3: a?.address3,
              address4: a?.address4,
              address5: a?.address5,
              address6: a?.address6,
              postCode: a?.postCode,
              countryCode: a?.countryCode,
              what3Words: a?.what3Words ?? '',
              geoLocation: LatLong(
                Decimal.parse((a?.geoLocation?.latitude ?? 0).toString()),
                Decimal.parse((a?.geoLocation?.longitude ?? 0).toString()),
              ),
              addressKey: a?.key,
            ),
          )
          .toList(),
      node.defaultYardCode,
      _mapContacts(node.accountContacts, node.accountAddresses),
      _mapAccountBusinessDetail(node.businessDetail),
      _mapAccountArisingPoints(node.accountAddresses ?? [], node.locations),
      _mapPrimaryManager(node.primaryManager),
      managers,
      node.sicCodeId,
      node.prospectId,
      node.originatingCountry,
      node.bankAccounts
          .map(
            (b) => BankAccount(
              bankName: b.bankName,
              accountHolderName: b.accountHolderName,
              sortCode: b.sortCode,
              accountNumber: b.accountNumber,
              currencyId: b.currencyId,
              address: Address(
                address1: b.address.address1,
                address2: b.address.address2,
                address3: b.address.address3,
                address4: b.address.address4,
                address5: b.address.address5,
                address6: b.address.address6,
                countryCode: b.address.countryCode,
                postCode: b.address.postCode,
              ),
              ibanCode: b.ibanCode,
              reference: b.reference,
              swiftCode: b.swiftCode,
              bankAccountType: b.bankAccountType.toJson(),
              countryCurrencyId: b.countryCurrencyId,
              fasterPaymentSupported: b.fasterPaymentSupported,
              verificationType: b.verificationType.toString(),
              comments: b.comments.isNotEmpty ? b.comments.first.content : null,
            ),
          )
          .toList(),
      shared.Enum$PaymentMethod.fromJson(node.preferredPaymentMethod.toJson()),
      node.territory == null
          ? []
          : [
              Territory(
                node.territory!.code,
                node.territory!.name,
                const [],
                id: node.territory!.id,
                defaultCompanyId: node.territory!.defaultCompanyId,
                active: node.territory!.active,
              ),
            ],
      node.loyaltyCards
          .map(
            (t) => LoyaltyCard(
              t.code,
              t.locationCode,
              t.issueDate, // issue date
              t.provider, // provider
            ),
          )
          .toList(),
      node.prepaymentCards
          .map(
            (t) => PrepaymentCard(
              t.code,
              t.panDigits,
              EnumService.enumToString(t.issuerType),
              t.issueDate,
              active: t.active,
            ),
          )
          .sortedBy((e) => e.active.toString())
          .reversed
          .toList(),
      shared.Enum$VatGroupType.fromJson(node.customerVatGroupType.toJson()),
      shared.Enum$VatGroupType.fromJson(node.supplierVatGroupType.toJson()),
      IndustryGroups(
        trader: node.industryGroups.trader,
        supplier: node.industryGroups.supplier,
      ),
      node.financialCustomerGroupId,
      node.financialSupplierGroupId,
      AccountSettings(
        stateReportingEnabled: node.settings.stateReportingEnabled,
        negativeInwardsEnabled: node.settings.negativeInwardsEnabled,
        transformationEnabled: node.settings.transformationEnabled,
        annualWtnSsaRequired: node.settings.annualWtnSsaRequired,
        isWasteImporter: node.settings.isWasteImporter,
        isWasteProducer: node.settings.isWasteProducer,
        isWasteRegisteredCarrier: node.settings.isWasteRegisteredCarrier,
        isWasteTransporter: node.settings.isWasteTransporter,
        marketIndicatorEnabled: node.settings.marketIndicatorEnabled,
        validFrom: node.settings.validFrom,
        validTo: node.settings.validTo,
        wtnSsaExpiryDate: node.settings.wtnSsaExpiryDate,
        hasHazardousWasteConsignmentNote:
            node.settings.hasHazardousWasteConsignmentNote,
        isDigitalWalletActivated: node.settings.isDigitalWalletActivated,
      ),
      PricingControl(
        priceChangesRestricted: node.pricingControl.priceChangesRestricted,
      ),
      node.vihbNumber,
      TaxSettings(
        EnumService.enumToString(node.taxSettings?.taxId),
        node.taxSettings?.nameFor1099,
        node.taxSettings?.doingBusinessAs,
        node.taxSettings?.reportingDate,
        node.taxSettings?.cashPaymentLimitExemptionDate,
        checkForW9: node.taxSettings?.checkForW9,
        foreignEntityIndicator: node.taxSettings?.foreignEntityIndicator,
        secondTin: node.taxSettings?.secondTin,
        w9Received: node.taxSettings?.w9Received,
      ),
      portalEnabledContacts: node.portalEnabledContacts,
      amiceCompanyNumber: node.amiceCompanyNumber,
      reportingFrequency: node.reportingFrequency,
      publications: (node.linkedPublications ?? [])
          .map(
            (lp) => AccountPublication(
              publication: Publication(
                id: lp.publicationId,
                name: lp.publication.name,
                availableProducts: lp.publication.availableProducts
                    .map(
                      (p) => Product(
                        id: p.id,
                        code: p.code,
                        description: p.description,
                      ),
                    )
                    .toList(),
                availableYards: lp.publication.availableYards
                    .map(
                      (p) => Yard(
                        yardCode: p.yardCode,
                        name: p.name,
                        shortName: p.name,
                        id: p.id,
                      ),
                    )
                    .toList(),
              ),
              allowedProducts: PublicationAllowedProducts(
                productIds: lp.allowedProductIds,
                yardIds: lp.allowedYardIds,
              ),
            ),
          )
          .toList(),
      productEWCCodes: (node.productEWC ?? [])
          .map(
            (c) => ProductEWC(
              product: Product(
                id: c.key.id,
                code: c.key.code,
                description: c.key.description,
              ),
              eWCCode: c.value,
            ),
          )
          .toList(),
      accountType: node.type.toAccountType(),
      visitFrequency: node.visitFrequency,
      accountTeams: node.managingTeams.map((e) {
        return AccountTeam(teamId: e.teamId, teamName: e.teamName);
      }).toList(),
    );
    account.accountStatus = EnumService.enumToString(node.accountStatus);
    account.parentAccount = node.parentAccount;
    account.currencyId = node.currencyId;
    account.territoryCode = node.territory?.code;
    account.accountSubTypes = node.accountSubTypes.map((e) {
      return AccountSubTypeBool(
        key: _mapEnumFromGenerated(e.key),
        value: e.value,
      );
    }).toList();

    return (account, errorCode, errorMessage);
  }

  AccountSubType _mapEnumFromGenerated(Enum$AccountSubType gqlEnum) {
    switch (gqlEnum) {
      case Enum$AccountSubType.NONE:
        return AccountSubType.none;
      case Enum$AccountSubType.TRADER:
        return AccountSubType.trader;
      case Enum$AccountSubType.CUSTOMER:
        return AccountSubType.customer;
      case Enum$AccountSubType.HAULIER:
        return AccountSubType.haulier;
      case Enum$AccountSubType.TRADE_SUPPLIER:
        return AccountSubType.tradeSupplier;
      case Enum$AccountSubType.OVERHEAD_SUPPLIER:
        return AccountSubType.overheadSupplier;
      case Enum$AccountSubType.$unknown:
        return AccountSubType.none;
    }
  }

  Future<GraphQLResponse<Query$GetAccountInfo>> _getAccountInfo(
    String accountId, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = Duration.zero,
    bool forceLoad = false,
    bool includePublicationData = true,
  }) {
    return documentNodeQueryGetAccountInfo.execute(
      httpClient,
      Query$GetAccountInfo.fromJson,
      variables: Variables$Query$GetAccountInfo(
        accountId: accountId,
        includePublicationData: includePublicationData,
      ),
       cacheProvider: cacheProvider,
       cacheTtl: cacheTtl,
       forceLoad: forceLoad,
    );
  }

  static List<AccountManager> _mapAccountManagers(
    List<Query$GetAccountInfo$accountById$accountManagers?>? accountManagers,
  ) {
    if (accountManagers == null) {
      return [];
    }

    final theAccountManagers = accountManagers.where(
      (element) => element != null,
    );

    return theAccountManagers.map((accountManager) {
      if (accountManager == null) {
        return AccountManager.empty();
      }

      return AccountManager(
        accountManager.id ?? accountManager.userInfo?.id ?? '',
        _mapFromAccountManagerType(
          accountManager.serviceType ?? Enum$ServiceType.NONE,
        ),
        0,
        accountManager.userInfo?.name ?? accountManager.name ?? '',
        accountManager.userInfo?.emailAddress ?? '',
        accountManager.userInfo?.defaultDepot ?? '',
        accountManager.userInfo?.defaultTerritory ?? '',
        accountManager.userInfo?.permissions ?? [],
        priority: accountManager.priority,
        managementType: accountManager.type?.toJson(),
      );
    }).toList();
  }

  static String _mapFromAccountManagerType(
    Enum$ServiceType accountManagerTypeId,
  ) {
    switch (accountManagerTypeId) {
      case Enum$ServiceType.$unknown:
      case Enum$ServiceType.NONE:
        {
          return 'None';
        }
      case Enum$ServiceType.OVERHEAD_SUPPLIER:
        {
          return 'Overhead Supplier';
        }
      case Enum$ServiceType.SALES:
        {
          return 'Sales';
        }
      case Enum$ServiceType.TRADER_FERROUS:
        {
          return 'Trader Ferrous';
        }
      case Enum$ServiceType.TRADER_FERROUS_PASSIVE:
        {
          return 'Trader Ferrous Passive';
        }
      case Enum$ServiceType.TRADER_NON_FERROUS:
        {
          return 'Trader Non Ferrous';
        }
      case Enum$ServiceType.TRADER_NON_FERROUS_PASSIVE:
        {
          return 'Trader Non Ferrous Passive';
        }
      case Enum$ServiceType.TRADE_SUPPLIER:
        {
          return 'Trade Supplier';
        }
      case Enum$ServiceType.TRANSPORT:
        {
          return 'Transport';
        }
      case Enum$ServiceType.CREDIT_CONTROLLER:
        {
          return 'Credit Controller';
        }
      case Enum$ServiceType.DEBT_MANAGER:
        {
          return 'Debt Manager';
        }
    }
  }

  static List<Contact> _mapContacts(
    List<Query$GetAccountInfo$accountById$accountContacts?>? accountContacts,
    List<Query$GetAccountInfo$accountById$accountAddresses?>? accountAddresses,
  ) {
    final contacts = <Contact>[];
    accountContacts?.forEach((element) {
      final address = accountAddresses?.firstWhereOrNull(
        (a) =>
            a!.key == element?.value.addressKey ||
            (a.key ?? '').replaceAll('-', '') ==
                (element?.value.addressKey ?? '').replaceAll('-', ''),
      );

      contacts.add(
        Contact(
          id: element?.key,
          contactTypes: element?.value.contactTypes
              .map(_mapContactType)
              .toList(),
          firstName: element?.value.firstName ?? '',
          lastName: element?.value.lastName ?? '',
          middleName: element?.value.middleName ?? '',
          title: element?.value.title ?? '',
          jobTitle: element?.value.jobTitle ?? '',
          contactPreferences: ContactPreference(
            mobile: ContactMethod(
              element?.value.contactPreferences.mobile.value ?? '',
              enabled:
                  element?.value.contactPreferences.mobile.enabled ?? false,
            ),
            email: ContactMethod(
              element?.value.contactPreferences.email.value ?? '',
              enabled: element?.value.contactPreferences.email.enabled ?? false,
            ),
            phone: ContactMethod(
              element?.value.contactPreferences.phone.value ?? '',
              enabled: element?.value.contactPreferences.phone.enabled ?? false,
            ),
            fax: ContactMethod(
              element?.value.contactPreferences.fax.value ?? '',
              enabled: element?.value.contactPreferences.fax.enabled ?? false,
            ),
            post: ContactMethod(
              element?.value.contactPreferences.post.value ?? '',
              enabled: element?.value.contactPreferences.post.enabled ?? false,
            ),
            otherContactMethods: Map.fromEntries(
              (element?.value.contactPreferences.otherContactMethods ?? []).map(
                (method) => MapEntry(
                  method.key,
                  ContactMethod(
                    method.value.value,
                    enabled: method.value.enabled,
                  ),
                ),
              ),
            ),
          ),
          address: _mapContactAddress(address),
          proofOfIdentification: _mapProofOfIds(
            element?.value.proofOfIdentification,
          ),
          proofOfAddress: _mapProofOfAddresses(element?.value.proofOfAddress),
          dateOfBirth: element?.value.dateOfBirth,
          signature: _mapSignature(element?.value.signature,
          element?.value.signatureSasUrl),
        ),
      );
    });
    return contacts;
  }

  static String _mapContactType(Enum$ContactType? id) {
    if (id == null || id == Enum$ContactType.$unknown) {
      return 'UNKNOWN';
    }
    return id.toJson();
  }

  static Address? _mapContactAddress(
    Query$GetAccountInfo$accountById$accountAddresses? address,
  ) {
    return Address(
      address1: address?.address1 ?? '',
      address2: address?.address2 ?? '',
      address3: address?.address3 ?? '',
      address4: address?.address4 ?? '',
      address5: address?.address5 ?? '',
      address6: address?.address6 ?? '',
      postCode: address?.postCode ?? '',
      countryCode: address?.countryCode,
    );
  }

  static BusinessDetail _mapAccountBusinessDetail(
    Query$GetAccountInfo$accountById$businessDetail? businessDetails,
  ) {
    if (businessDetails == null) {
      return BusinessDetail.empty();
    }

    final businessDetail = BusinessDetail(
      businessDetails.companyRegistrationNumber,
      businessDetails.vatNumber,
      _mapPaymentTerm(businessDetails.paymentTerm),
      _mapCreditTerm(businessDetails.creditTerm),
      _mapInvoicingOptions(businessDetails.invoicingOptions),
      _mapSelfBilling(businessDetails.selfBilling),
      _mapCreditControl(businessDetails.creditControl),
      licenseExemption: LicenseExemption(
        businessDetails.licenseExemption?.wasteRegCarrierNumber,
        AccountDocument(
          businessDetails.licenseExemption?.wasteTransferLicense.media?.url !=
                  null
              ? MediaAsset(
                  businessDetails
                      .licenseExemption!
                      .wasteTransferLicense
                      .media!
                      .url,
                )
              : null,
          businessDetails.licenseExemption?.wasteTransferLicense.documentType,
          businessDetails.licenseExemption?.wasteTransferLicense.validFrom,
          businessDetails.licenseExemption?.wasteTransferLicense.validTo,
        ),
        annualWasteTransferNote:
            businessDetails.licenseExemption?.annualWasteTransferNote,
        wasteProducer: businessDetails.licenseExemption?.wasteProducer,
        wasteImporter: businessDetails.licenseExemption?.wasteImporter,
        wasteTransporter: businessDetails.licenseExemption?.wasteTransporter,
        wasteRegCarrier: businessDetails.licenseExemption?.wasteRegCarrier,
      ),
      isTradingCompany: businessDetails.isTradingCompany,
    );
    businessDetail.eoriNumber = businessDetails.eoriNumber;
    businessDetail.website = businessDetails.website;
    return businessDetail;
  }

  static String _mapPaymentTermType(
    Query$GetAccountInfo$accountById$businessDetail$creditTerm? creditTerm,
  ) {
    if (creditTerm == null || creditTerm.paymentTermTypeName == null) {
      return 'None';
    }

    return creditTerm.paymentTermTypeName ?? '';
  }

  static String _mapPaymentMethodName(
    Query$GetAccountInfo$accountById$businessDetail$paymentTerm? paymentTerm,
  ) {
    if (paymentTerm == null) {
      return 'None';
    }

    return paymentTerm.financialPaymentMethod;
  }

  static List<Location> _mapAccountArisingPoints(
    List<Query$GetAccountInfo$accountById$accountAddresses?> accountAddresses,
    List<Query$GetAccountInfo$accountById$locations?>? arisingPoints,
  ) {
    return arisingPoints!.map((e) {
      final accountAddress = accountAddresses.firstWhereOrNull(
        (x) => x?.key?.replaceAll('-', '') == e?.addressKey.replaceAll('-', ''),
      );

      return Location(
        e?.code ?? '',
        e?.name ?? '',
        Address(
          address1: accountAddress?.address1 ?? '',
          address2: accountAddress?.address2 ?? '',
          address3: accountAddress?.address3 ?? '',
          address4: accountAddress?.address4 ?? '',
          address5: accountAddress?.address5 ?? '',
          address6: accountAddress?.address6 ?? '',
          postCode: accountAddress?.postCode ?? '',
          countryCode: accountAddress?.countryCode ?? '',
          what3Words: accountAddress?.what3Words ?? '',
          geoLocation: LatLong(
            Decimal.parse(
              (accountAddress?.geoLocation?.latitude ?? 0).toString(),
            ),
            Decimal.parse(
              (accountAddress?.geoLocation?.longitude ?? 0).toString(),
            ),
          ),
          addressKey: accountAddress?.key,
        ),
        e?.primaryContactId, // primary contact id
        e?.description, // description
        e?.sitePermitOrExemptionNumber, // sitePermitOrExemptionNumber
        sitePermitHolder: e?.sitePermitHolder,
        active: e?.active,
      );
    }).toList();

    //build
  }

  static AccountManager? _mapPrimaryManager(
    Query$GetAccountInfo$accountById$primaryManager? primaryAccountManager,
  ) {
    if (primaryAccountManager == null) {
      return null;
    }

    return AccountManager(
      primaryAccountManager.id ?? '',
      _mapFromAccountManagerType(Enum$ServiceType.NONE),
      0,
      primaryAccountManager.name ?? primaryAccountManager.userInfo?.name ?? '',
      primaryAccountManager.userInfo?.emailAddress ?? '',
      primaryAccountManager.userInfo?.defaultDepot ?? '',
      primaryAccountManager.userInfo?.defaultTerritory ?? '',
      primaryAccountManager.userInfo?.permissions ?? [],
      priority: primaryAccountManager.priority,
      managementType: primaryAccountManager.type?.toJson(),
    );
  }

  static List<Identification> _mapProofOfIds(
    List<
      // ignore: lines_longer_than_80_chars
      Query$GetAccountInfo$accountById$accountContacts$value$proofOfIdentification?
    >?
    poIds,
  ) {
    final result = <Identification>[];
    if (poIds != null) {
      result.addAll(
        poIds
            .map(
              (e) => Identification(
                (e?.type ?? Enum$IdentificationType.$unknown).toJson(),
                (e?.subType ?? Enum$IdentificationSubType.NONE).toJson(),
                e?.validFrom,
                e?.validTo ?? DateTime.now(),
                MediaAsset(
                  e?.media.url ?? '',
                  sasUrl: e?.sasUrl,
                  createdAt: e?.media.created.at,
                  createdByUserInfoId: e?.media.created.userInfoId,
                  createdByUserName: e?.media.created.userName,
                ),
                e?.identificationNumber,
                '', //name
              ),
            )
            .toList(),
      );
      return result;
    }
    return [];
  }

  static List<Identification> _mapProofOfAddresses(
    // ignore: lines_longer_than_80_chars
    List<
      Query$GetAccountInfo$accountById$accountContacts$value$proofOfAddress?
    >?
    poA,
  ) {
    final result = <Identification>[];
    if (poA != null) {
      result.addAll(
        poA
            .map(
              (e) => Identification(
                (e?.type ?? Enum$IdentificationType.$unknown).toJson(),
                (e?.subType ?? Enum$IdentificationSubType.NONE).toJson(),
                e?.validFrom,
                e?.validTo ?? DateTime.now(),
                MediaAsset(
                  e?.media.url ?? '',
                  sasUrl: e?.sasUrl,
                  createdAt: e?.media.created.at,
                  createdByUserInfoId: e?.media.created.userInfoId,
                  createdByUserName: e?.media.created.userName,
                ),
                e?.identificationNumber,
                '', //name
              ),
            )
            .toList(),
      );

      return result;
    }
    return [];
  }

  static MediaAsset? _mapSignature(
    Query$GetAccountInfo$accountById$accountContacts$value$signature? signature,
    String? sasUrl,
  ) {
    if (signature != null && signature.url.isNotEmpty) {
      return MediaAsset(
        signature.url,
        sasUrl: sasUrl,
        createdAt: signature.created.at,
        createdByUserInfoId: signature.created.userInfoId,
        createdByUserName: signature.created.userName,
      );
    }
    return null;
  }

  static String mapFromIdentificationType(
    Enum$IdentificationType documentTypeId,
  ) {
    switch (documentTypeId) {
      case Enum$IdentificationType.$unknown:
      case Enum$IdentificationType.NONE:
        {
          return 'None';
        }
      case Enum$IdentificationType.ADDRESS_ID:
        {
          return 'Proof Of Address';
        }
      case Enum$IdentificationType.BUSINESS_DOCUMENT:
        {
          return 'Business Document';
        }
      case Enum$IdentificationType.PHOTO_ID:
        {
          return 'Proof Of Identity';
        }
      case Enum$IdentificationType.SIGNATURE:
        {
          return 'Signature';
        }
    }
  }

  static Enum$IdentificationType mapToIdentificationType(String type) {
    switch (type) {
      case 'None':
      case 'NONE':
        {
          return Enum$IdentificationType.NONE;
        }
      case 'Address ID':
      case 'ADDRESS_ID':
        {
          return Enum$IdentificationType.ADDRESS_ID;
        }
      case 'Business Document':
      case 'BUSINESS_DOCUMENT':
        {
          return Enum$IdentificationType.BUSINESS_DOCUMENT;
        }
      case 'Photo ID':
      case 'PHOTO_ID':
        {
          return Enum$IdentificationType.PHOTO_ID;
        }
      case 'Signature':
      case 'SIGNATURE':
        {
          return Enum$IdentificationType.SIGNATURE;
        }
      default:
        {
          return Enum$IdentificationType.$unknown;
        }
    }
  }

  static String mapFromIdentificationSubType(
    Enum$IdentificationSubType documentSubTypeId,
  ) {
    switch (documentSubTypeId) {
      case Enum$IdentificationSubType.$unknown:
      case Enum$IdentificationSubType.NONE:
        {
          return 'None';
        }
      case Enum$IdentificationSubType.BANK_OR_BUILDING_SOCIETY_STATEMENT:
        {
          return 'Bank/Building Society Statement';
        }
      case Enum$IdentificationSubType.BIOMETRIC_IMMIGRATION_DOCUMENT:
        {
          return 'Biometric Immigration Document';
        }
      case Enum$IdentificationSubType.COUNCIL_RENT_BOOK:
        {
          return 'Council Rent Book';
        }
      case Enum$IdentificationSubType.COUNCIL_TAX_DEMAND_LETTER:
        {
          return 'Council Tax Demand Letter';
        }
      case Enum$IdentificationSubType.CREDIT_OR_DEBIT_CARD_STATEMENT:
        {
          return 'Credit/Debit Card Statement';
        }
      case Enum$IdentificationSubType.EU_DRIVING_LICENSE:
        {
          return 'EU Driving License';
        }
      case Enum$IdentificationSubType.EU_NATIONAL_ID_CARD:
        {
          return 'EU National ID Card';
        }
      case Enum$IdentificationSubType.HMRC_CORRESPONDANCE:
        {
          return 'HMRC Correspondance';
        }
      case Enum$IdentificationSubType.MORTGAGE_STATEMENT:
        {
          return 'Mortgage Statement';
        }
      case Enum$IdentificationSubType.OTHER:
        {
          return 'Other';
        }
      case Enum$IdentificationSubType.UKEUEEA_PASSPORT:
        {
          return 'UK/EU/EEA Passport';
        }
      case Enum$IdentificationSubType.UKEU_DRIVING_LICENSE:
        {
          return 'UK/EU Driving License';
        }
      case Enum$IdentificationSubType.UK_DRIVING_LICENSE:
        {
          return 'UK Driving License';
        }
      case Enum$IdentificationSubType.UK_FIREARM_LICENSE:
        {
          return 'UK Firearms License';
        }
      case Enum$IdentificationSubType.USA_DRIVER_LICENCE:
        {
          return 'USA Driving License';
        }
      case Enum$IdentificationSubType.UTILITY_BILL:
        {
          return 'Utility Bill';
        }
      case Enum$IdentificationSubType.WASTE_TRANSFER_NOTE:
        {
          return 'Waste Transfer Note';
        }
    }
  }

  static Enum$IdentificationSubType mapToIdentificationSubType(String subType) {
    switch (subType) {
      case 'None':
      case 'NONE':
        {
          return Enum$IdentificationSubType.NONE;
        }
      case 'Bank/Building Society Statement':
      case 'BANK_OR_BUILDING_SOCIETY_STATEMENT':
        {
          return Enum$IdentificationSubType.BANK_OR_BUILDING_SOCIETY_STATEMENT;
        }
      case 'Biometric Immigration Document':
      case 'BIOMETRIC_IMMIGRATION_DOCUMENT':
        {
          return Enum$IdentificationSubType.BIOMETRIC_IMMIGRATION_DOCUMENT;
        }
      case 'Council Rent Book':
      case 'COUNCIL_RENT_BOOK':
        {
          return Enum$IdentificationSubType.COUNCIL_RENT_BOOK;
        }
      case 'Council Tax Demand Letter':
      case 'COUNCIL_TAX_DEMAND_LETTER':
        {
          return Enum$IdentificationSubType.COUNCIL_TAX_DEMAND_LETTER;
        }
      case 'Credit/Debit Card Statement':
      case 'CREDIT_OR_DEBIT_CARD_STATEMENT':
        {
          return Enum$IdentificationSubType.CREDIT_OR_DEBIT_CARD_STATEMENT;
        }
      case 'EU Driving License':
      case 'EU_DRIVING_LICENSE':
        {
          return Enum$IdentificationSubType.EU_DRIVING_LICENSE;
        }
      case 'EU National ID card':
      case 'EU_NATIONAL_ID_CARD':
        {
          return Enum$IdentificationSubType.EU_NATIONAL_ID_CARD;
        }
      case 'HMRC Correspondance':
      case 'HMRC_CORRESPONDANCE':
        {
          return Enum$IdentificationSubType.HMRC_CORRESPONDANCE;
        }
      case 'Mortgage Statement':
      case 'MORTGAGE_STATEMENT':
        {
          return Enum$IdentificationSubType.MORTGAGE_STATEMENT;
        }
      case 'Other':
      case 'OTHER':
        {
          return Enum$IdentificationSubType.OTHER;
        }
      case 'UK/EU/EEA Passport':
      case 'UKEUEEA_PASSPORT':
        {
          return Enum$IdentificationSubType.UKEUEEA_PASSPORT;
        }
      case 'UK/EU Driving License':
      case 'UKEU_DRIVING_LICENSE':
        {
          return Enum$IdentificationSubType.UKEU_DRIVING_LICENSE;
        }
      case 'UK Driving License':
      case 'UK_DRIVING_LICENSE':
        {
          return Enum$IdentificationSubType.UK_DRIVING_LICENSE;
        }
      case 'UK Firearms License':
      case 'UK_FIREARM_LICENSE':
        {
          return Enum$IdentificationSubType.UK_FIREARM_LICENSE;
        }
      case 'USA Driving License':
      case 'USA_DRIVER_LICENCE':
        {
          return Enum$IdentificationSubType.USA_DRIVER_LICENCE;
        }
      case 'Utility Bill':
      case 'UTILITY_BILL':
        {
          return Enum$IdentificationSubType.UTILITY_BILL;
        }
      case 'Waste Transfer Note':
      case 'WASTE_TRANSFER_NOTE':
        {
          return Enum$IdentificationSubType.WASTE_TRANSFER_NOTE;
        }
      default:
        {
          return Enum$IdentificationSubType.$unknown;
        }
    }
  }

  static Enum$ServiceType mapToAccountManagerType(String accountManagerType) {
    switch (accountManagerType) {
      case 'None':
      case 'NONE':
        {
          return Enum$ServiceType.NONE;
        }
      case 'Overhead Supplier':
      case 'OVERHEAD_SUPPLIER':
        {
          return Enum$ServiceType.OVERHEAD_SUPPLIER;
        }
      case 'Sales':
      case 'SALES':
        {
          return Enum$ServiceType.SALES;
        }
      case 'Trader Ferrous':
      case 'TRADER_FERROUS':
        {
          return Enum$ServiceType.TRADER_FERROUS;
        }
      case 'Trader Ferrous Passive':
      case 'TRADER_FERROUS_PASSIVE':
        {
          return Enum$ServiceType.TRADER_FERROUS_PASSIVE;
        }
      case 'Trader Non Ferrous':
      case 'TRADER_NON_FERROUS':
        {
          return Enum$ServiceType.TRADER_NON_FERROUS;
        }
      case 'Trader Non Ferrous Passive':
      case 'TRADER_NON_FERROUS_PASSIVE':
        {
          return Enum$ServiceType.TRADER_NON_FERROUS_PASSIVE;
        }
      case 'Trade Supplier':
      case 'TRADE_SUPPLIER':
        {
          return Enum$ServiceType.TRADE_SUPPLIER;
        }
      case 'Transport':
      case 'TRANSPORT':
        {
          return Enum$ServiceType.TRANSPORT;
        }
      case 'Credit Controller':
      case 'CREDIT_CONTROLLER':
        {
          return Enum$ServiceType.CREDIT_CONTROLLER;
        }
      case 'Debt Manager':
      case 'DEBT_MANAGER':
        {
          return Enum$ServiceType.DEBT_MANAGER;
        }
      default:
        {
          return Enum$ServiceType.$unknown;
        }
    }
  }

  Enum$PaymentMethod? _getPaymentMethod(String? paymentMethod) {
    if ((paymentMethod ?? '').isEmpty) {
      return null;
    }
    return EnumService.stringToEnum(paymentMethod, Enum$PaymentMethod.values) ??
        Enum$PaymentMethod.NONE;
  }

  Enum$CountryId _getCountryId(String? countryCode) {
    return EnumService.stringToEnum(countryCode, Enum$CountryId.values) ??
        Enum$CountryId.NONE;
  }

  String? _getContactPreferenceValue({
    required bool considerEmptyAsNullForContactPreference,
    String? value,
  }) {
    return considerEmptyAsNullForContactPreference
        ? (value ?? '').isEmpty
              ? null
              : value
        : value;
  }

  Future<(bool success, String? error)> deletePartyBankAccount(
    Input$DeleteBankAccountInput deleteBankAccountInput,
  ) async {
    final response = await documentNodeMutationDeletePartyBankAccount.execute(
      httpClient,
      Mutation$DeletePartyBankAccount.fromJson,
      variables: Variables$Mutation$DeletePartyBankAccount(
        bankAccountInput: deleteBankAccountInput,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }

    return response.data!.deletePartyBankAccounts!.when(
      account: (tag) => (true, null),
      accountBankAccountError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error deleting party bank account',
          params: {
            'bankAccountNumber': deleteBankAccountInput.bankAccountNumber,
            'accountId': deleteBankAccountInput.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Error deleting party bank account',
          params: {
            'bankAccountNumber': deleteBankAccountInput.bankAccountNumber,
            'accountId': deleteBankAccountInput.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> updatePartyBankAccount(
    Input$CreateOrUpdatePartyBankAccountInput updatePartyBankAccountInput,
  ) async {
    final response = await documentNodeMutationUpdatePartyBankAccount.execute(
      httpClient,
      Mutation$UpdatePartyBankAccount.fromJson,
      variables: Variables$Mutation$UpdatePartyBankAccount(
        bankAccountInput: updatePartyBankAccountInput,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }

    return response.data!.updatePartyBankAccounts!.when(
      account: (tag) => (true, null),
      accountBankAccountError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error updating party bank accounts',
          params: {
            'accountNumber':
                updatePartyBankAccountInput.bankAccount.accountNumber,
            'accountId': updatePartyBankAccountInput.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Error updating party bank accounts',
          params: {
            'accountNumber':
                updatePartyBankAccountInput.bankAccount.accountNumber,
            'accountId': updatePartyBankAccountInput.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> addPartyBankAccount(
    Input$CreateOrUpdatePartyBankAccountInput bankAccountInput,
  ) async {
    final response = await documentNodeMutationAddPartyBankAccount.execute(
      httpClient,
      Mutation$AddPartyBankAccount.fromJson,
      variables: Variables$Mutation$AddPartyBankAccount(
        bankAccountInput: bankAccountInput,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }

    return response.data!.addPartyBankAccounts!.when(
      account: (tag) => (true, null),
      accountBankAccountError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error adding party bank account',
          params: {
            'bankAccountNumnber': bankAccountInput.bankAccount.accountNumber,
            'accountId': bankAccountInput.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Error adding party bank account',
          params: {
            'bankAccountNumnber': bankAccountInput.bankAccount.accountNumber,
            'accountId': bankAccountInput.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> deleteAccountPrepayCards(
    Input$DeletePrepayCardInput deletePrepayCardInput,
  ) async {
    final response = await documentNodeMutationDeleteAccountPrepayCards.execute(
      httpClient,
      Mutation$DeleteAccountPrepayCards.fromJson,
      variables: Variables$Mutation$DeleteAccountPrepayCards(
        deletePrepaycardInput: deletePrepayCardInput,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }

    return response.data!.deleteAccountPrepayCards!.when(
      account: (tag) => (true, null),
      accountPrepayCardError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error deleting account prepay cards',
          params: {
            'prepayCardCode': deletePrepayCardInput.prepayCardCode,
            'accountId': deletePrepayCardInput.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Error deleting account prepay cards',
          params: {
            'prepayCardCode': deletePrepayCardInput.prepayCardCode,
            'accountId': deletePrepayCardInput.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> updateAccountPrepayCard(
    Input$CreateOrUpdateAccountPrepayCardsInput updateAccountPrepayCardInput,
  ) async {
    final response = await documentNodeMutationUpdateAccountPrepayCard.execute(
      httpClient,
      Mutation$UpdateAccountPrepayCard.fromJson,
      variables: Variables$Mutation$UpdateAccountPrepayCard(
        updatePrepaycardInput: updateAccountPrepayCardInput,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }

    return response.data!.updateAccountPrepayCards!.when(
      account: (tag) => (true, null),
      accountPrepayCardError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error updating account prepay cards',
          params: {
            'prepayCardCode': updateAccountPrepayCardInput.prepaymentCard.code,
            'accountId': updateAccountPrepayCardInput.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Error updating account prepay cards',
          params: {
            'prepayCardCode': updateAccountPrepayCardInput.prepaymentCard.code,
            'accountId': updateAccountPrepayCardInput.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> replaceAccountPrepayCards(
    Input$ReplacePrepayCardInput replacePrepayCardInput,
  ) async {
    final response = await documentNodeMutationReplaceCard.execute(
      httpClient,
      Mutation$ReplaceCard.fromJson,
      variables: Variables$Mutation$ReplaceCard(
        input: replacePrepayCardInput,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }
    if (response.data!.replacePrepayCard.isSuccess == false) {
      return (false, 'Failed to replace card');
    }
    if (response.data!.replacePrepayCard.isSuccess == true &&
        response.data!.replacePrepayCard.result == true) {
      return (true, null);
    }
    return (false, '');
  }

  Future<(bool success, String? error)> addAccountPrepayCards(
    Input$CreateOrUpdateAccountPrepayCardsInput addPrepayCardInput,
  ) async {
    final response = await documentNodeMutationAddAccountPrepayCard.execute(
      httpClient,
      Mutation$AddAccountPrepayCard.fromJson,
      variables: Variables$Mutation$AddAccountPrepayCard(
        addPrepaycardInput: addPrepayCardInput,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }

    return response.data!.addAccountPrepayCards!.when(
      account: (tag) => (true, null),
      accountPrepayCardError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error adding account prepay cards',
          params: {
            'prepayCardCode': addPrepayCardInput.prepaymentCard.code,
            'accountId': addPrepayCardInput.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Error adding account prepay cards',
          params: {
            'prepayCardCode': addPrepayCardInput.prepaymentCard.code,
            'accountId': addPrepayCardInput.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> deleteAccountLocations(
    Input$DeleteAccountLocationInput deleteAccountLocationInput,
  ) async {
    final response = await documentNodeMutationRemoveAccountLocations.execute(
      httpClient,
      Mutation$RemoveAccountLocations.fromJson,
      variables: Variables$Mutation$RemoveAccountLocations(
        locationInput: deleteAccountLocationInput,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }

    return response.data!.deleteAccountLocations!.when(
      account: (tag) => (true, null),
      accountLocationError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error deleting account locations',
          params: {
            'locationCode': deleteAccountLocationInput.code,
            'accountId': deleteAccountLocationInput.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Error deleting account locations',
          params: {
            'locationCode': deleteAccountLocationInput.code,
            'accountId': deleteAccountLocationInput.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> updateAccountLocations(
    Input$CreateOrUpdateAccountLocationInput updateAccountLocationInput,
  ) async {
    final response = await documentNodeMutationUpdateAccountLocations.execute(
      httpClient,
      Mutation$UpdateAccountLocations.fromJson,
      variables: Variables$Mutation$UpdateAccountLocations(
        updateAccountLocationInput: updateAccountLocationInput,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }

    return response.data!.updateAccountLocations!.when(
      account: (tag) => (true, null),
      accountLocationError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error updating account locations',
          params: {
            'locationCode': updateAccountLocationInput.code,
            'accountId': updateAccountLocationInput.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Error updating account locations',
          params: {
            'locationCode': updateAccountLocationInput.code,
            'accountId': updateAccountLocationInput.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> addAccountLocations(
    Input$CreateOrUpdateAccountLocationInput addAccountLocationInput,
  ) async {
    final response = await documentNodeMutationAddAccountLocations.execute(
      httpClient,
      Mutation$AddAccountLocations.fromJson,
      variables: Variables$Mutation$AddAccountLocations(
        addAccountLocationInput: addAccountLocationInput,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }

    return response.data!.addAccountLocations!.when(
      account: (tag) => (true, null),
      accountLocationError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error adding locations',
          params: {
            'locationCode': addAccountLocationInput.code,
            'accountId': addAccountLocationInput.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Error adding locations',
          params: {
            'locationCode': addAccountLocationInput.code,
            'accountId': addAccountLocationInput.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> updateAccountHeadOfficeDetails(
    Input$UpdateAccountHeadOfficeDetailsInput headOfficeDetailsInput,
  ) async {
    final response = await documentNodeMutationUpdateAccountHeadOfficeDetails
        .execute(
          httpClient,
          Mutation$UpdateAccountHeadOfficeDetails.fromJson,
          variables: Variables$Mutation$UpdateAccountHeadOfficeDetails(
            headOfficeInput: headOfficeDetailsInput,
          ),
        );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
      return (false, errorText);
    }

    return response.data!.updateAccountHeadOfficeDetails!.when(
      account: (tag) => (true, null),
      headOfficeDetailsError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error updating account locations',
          params: {
            'vatNumber': headOfficeDetailsInput.headOfficeDetails.vatNumber!,
            'accountId': headOfficeDetailsInput.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Error updating account locations',
          params: {
            'vatNumber': headOfficeDetailsInput.headOfficeDetails.vatNumber!,
            'accountId': headOfficeDetailsInput.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );

        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> updateAccount(
    UpdateAccountInput updateAccountInput, {
    bool considerEmptyAsNullForContactPreference = false,
  }) async {
    final result = await documentNodeMutationUpdateAccount.execute(
      httpClient,
      Mutation$UpdateAccount.fromJson,
      variables: Variables$Mutation$UpdateAccount(
        input: Input$UpdateAccountInput(
          code: updateAccountInput.code,
          name: updateAccountInput.name,
          industryGroup: updateAccountInput.industryGroup,
          originatingCountry: updateAccountInput.originatingCountry,
          preferredPaymentMethod: _getPaymentMethod(
            updateAccountInput.preferredPaymentMethod,
          ),
          sicCodeId: updateAccountInput.sicCodeId,
          preferredYardCode: updateAccountInput.preferredYard,
          celAgreement:
              updateAccountInput.celAgreement != null &&
                  updateAccountInput.celAgreement?.agreementDate != null
              ? Input$UpdateLegalAgreementInput(
                  agreementDate:
                      updateAccountInput.celAgreement!.agreementDate!,
                  expiryDate: updateAccountInput.celAgreement!.expiryDate,
                )
              : null,
          cfcAgreement:
              updateAccountInput.cfcAgreement != null &&
                  updateAccountInput.cfcAgreement?.agreementDate != null
              ? Input$UpdateLegalAgreementInput(
                  agreementDate:
                      updateAccountInput.cfcAgreement!.agreementDate!,
                  expiryDate: updateAccountInput.cfcAgreement!.expiryDate,
                )
              : null,
          businessDetail: Input$UpdateBusinessDetailInput(
            vatNumber: updateAccountInput.businessDetail?.vatNumber,
            companyRegistrationNumber:
                updateAccountInput.businessDetail?.companyRegistrationNumber,
            paymentTerm: Input$UpdatePaymentTermInput(
              discountType: EnumService.stringToEnum(
                updateAccountInput.businessDetail?.paymentTerm?.discountType,
                Enum$DiscountType.values,
              ),
              financialPaymentMethod:
                  updateAccountInput.businessDetail?.paymentTerm?.paymentMethod,
              taxMethod: EnumService.stringToEnum(
                updateAccountInput.businessDetail?.paymentTerm?.taxMethod,
                Enum$TaxMethod.values,
              ),
            ),
            isTradingCompany:
                updateAccountInput.businessDetail?.isTradingCompany,
          ),
          contacts: (updateAccountInput.contacts ?? [])
              .map(
                (c) => Input$UpdateContactInput(
                  id: c.contact.id,
                  toBeDeleted: c.toBeDeleted,
                  addressKey: c.contact.addressKey,
                  firstName: c.contact.firstName,
                  lastName: c.contact.lastName,
                  dateOfBirth: c.contact.dateOfBirth,
                  title: c.contact.title,
                  jobTitle: c.jobTitle,
                  portalEnabled: c.portalEnabled,
                  contactType: EnumService.stringToEnum(
                    c.contact.contactTypes?.firstOrNull,
                    Enum$ContactType.values,
                  ),
                  contactPreferences: Input$UpdateContactPreferencesInput(
                    email: Input$UpdateContactMethodInput(
                      enabled:
                          c.contact.contactPreferences.email?.enabled ?? false,
                      value: _getContactPreferenceValue(
                        considerEmptyAsNullForContactPreference:
                            considerEmptyAsNullForContactPreference,
                        value: c.contact.contactPreferences.email?.value,
                      ),
                    ),
                    mobile: Input$UpdateContactMethodInput(
                      enabled:
                          c.contact.contactPreferences.mobile?.enabled ?? false,
                      value: _getContactPreferenceValue(
                        considerEmptyAsNullForContactPreference:
                            considerEmptyAsNullForContactPreference,
                        value: c.contact.contactPreferences.mobile?.value,
                      ),
                    ),
                    facebook: Input$UpdateContactMethodInput(
                      enabled: c.facebook?.enabled ?? false,
                      value: _getContactPreferenceValue(
                        considerEmptyAsNullForContactPreference:
                            considerEmptyAsNullForContactPreference,
                        value: c.facebook?.value,
                      ),
                    ),
                    fax: Input$UpdateContactMethodInput(
                      enabled:
                          c.contact.contactPreferences.fax?.enabled ?? false,
                      value: _getContactPreferenceValue(
                        considerEmptyAsNullForContactPreference:
                            considerEmptyAsNullForContactPreference,
                        value: c.contact.contactPreferences.fax?.value,
                      ),
                    ),
                    linkedId: Input$UpdateContactMethodInput(
                      enabled: c.linkedIn?.enabled ?? false,
                      value: _getContactPreferenceValue(
                        considerEmptyAsNullForContactPreference:
                            considerEmptyAsNullForContactPreference,
                        value: c.linkedIn?.value,
                      ),
                    ),
                    whatsapp: Input$UpdateContactMethodInput(
                      enabled: c.whatsApp?.enabled ?? false,
                      value: _getContactPreferenceValue(
                        considerEmptyAsNullForContactPreference:
                            considerEmptyAsNullForContactPreference,
                        value: c.whatsApp?.value,
                      ),
                    ),
                    x: Input$UpdateContactMethodInput(
                      enabled: c.x?.enabled ?? false,
                      value: _getContactPreferenceValue(
                        considerEmptyAsNullForContactPreference:
                            considerEmptyAsNullForContactPreference,
                        value: c.x?.value,
                      ),
                    ),
                    phone: Input$UpdateContactMethodInput(
                      enabled:
                          c.contact.contactPreferences.phone?.enabled ?? false,
                      value: _getContactPreferenceValue(
                        considerEmptyAsNullForContactPreference:
                            considerEmptyAsNullForContactPreference,
                        value: c.contact.contactPreferences.phone?.value,
                      ),
                    ),
                    post: Input$UpdateContactMethodInput(
                      enabled:
                          c.contact.contactPreferences.post?.enabled ?? false,
                      value: _getContactPreferenceValue(
                        considerEmptyAsNullForContactPreference:
                            considerEmptyAsNullForContactPreference,
                        value: c.contact.contactPreferences.post?.value,
                      ),
                    ),
                    bulkEmail: Input$UpdateContactMethodInput(
                      enabled: c.bulkEmail?.enabled ?? false,
                      value: _getContactPreferenceValue(
                        considerEmptyAsNullForContactPreference:
                            considerEmptyAsNullForContactPreference,
                        value: c.bulkEmail?.value,
                      ),
                    ),
                  ),
                  proofOfAddress: (c.contact.proofOfAddress ?? [])
                      .map(toIdentificationInput)
                      .toList(),
                  proofOfIdentification: (c.contact.proofOfIdentification ?? [])
                      .map(toIdentificationInput)
                      .toList(),
                ),
              )
              .toList(),
          addresses: (updateAccountInput.addresses ?? [])
              .map(
                (a) => Input$CreateAddressInput(
                  address1: a.address1,
                  address2: a.address2,
                  address3: a.address3,
                  address4: a.address4,
                  address5: a.address5,
                  address6: a.address6,
                  postCode: a.postCode,
                  countryCode: _getCountryId(a.countryCode),
                ),
              )
              .toList(),
          locations: (updateAccountInput.locations ?? [])
              .map(
                (l) => Input$UpdateLocationInput(
                  toBeDeleted: l.toBeDeleted,
                  code: l.location.code,
                  name: l.location.name,
                  active: l.location.active,
                  address: Input$CreateAddressInput(
                    address1: l.location.address.address1,
                    address2: l.location.address.address2,
                    address3: l.location.address.address3,
                    address4: l.location.address.address4,
                    address5: l.location.address.address5,
                    address6: l.location.address.address6,
                    postCode: l.location.address.postCode,
                    countryCode: _getCountryId(l.location.address.countryCode),
                    what3Words: l.location.address.what3Words,
                    geoLocation: Input$UpdateLatLongInput(
                      latitude:
                          l.location.address.geoLocation?.latitude
                              ?.toDouble() ??
                          0,
                      longitude:
                          l.location.address.geoLocation?.longitude
                              ?.toDouble() ??
                          0,
                    ),
                  ),
                  primaryContactId: (l.location.primaryContactId ?? '').isEmpty
                      ? '00000000-0000-0000-0000-000000000000'
                      : l.location.primaryContactId,
                  description: l.location.description,
                  sitePermitHolder: l.location.sitePermitHolder,
                  sitePermitOrExemptionNumber:
                      l.location.sitePermitOrExemptionNumber,
                  addressKey: l.location.address.addressKey,
                ),
              )
              .toList(),
          bankAccounts: (updateAccountInput.bankAccounts ?? [])
              .map(
                (ba) => Input$UpdateBankDetailsInput(
                  bankName: ba.bankName,
                  accountHolderName: ba.accountHolderName,
                  accountNumber: ba.accountNumber,
                  currencyId: ba.currencyId,
                  ibanCode: ba.ibanCode,
                  reference: ba.reference,
                  sortCode: ba.sortCode,
                  swiftCode: ba.swiftCode,
                  address: Input$CreateAddressInput(
                    address1: ba.address?.address1,
                    address2: ba.address?.address2,
                    address3: ba.address?.address3,
                    address4: ba.address?.address4,
                    address5: ba.address?.address5,
                    address6: ba.address?.address6,
                    postCode: ba.address?.postCode,
                    countryCode: _getCountryId(ba.address?.countryCode),
                  ),
                  bankAccountType: EnumService.stringToEnum(
                    ba.bankAccountType,
                    Enum$BankAccountType.values,
                  ),
                  countryCurrencyId: ba.countryCurrencyId,
                  fasterPaymentSupported: ba.fasterPaymentSupported,
                ),
              )
              .toList(),
          managers: (updateAccountInput.managers ?? [])
              .map(
                (m) => Input$UpdateManagerInput(
                  id: m.id,
                  serviceType: mapToAccountManagerType(m.serviceType),
                  priority: m.priority,
                  name: m.name,
                ),
              )
              .toList(),
          loyaltyCards: (updateAccountInput.loyaltyCards ?? [])
              .map(
                (m) => Input$UpdateLoyaltyCardInput(
                  code: m.code ?? '',
                  locationCode: m.locationCode ?? '',
                  issueDate: m.issueDate,
                  provider: m.provider,
                ),
              )
              .toList(),
          prepaymentCards: (updateAccountInput.prepaymentCards ?? [])
              .map(
                (m) => Input$UpdatePrepaymentCardInput(
                  code: m.code ?? '',
                  panDigits: m.panDigits ?? 0,
                  issuerType:
                      EnumService.stringToEnum(
                        m.issuerType,
                        Enum$PrepayCardIssuer.values,
                      ) ??
                      Enum$PrepayCardIssuer.NONE,
                  issueDate: m.issueDate,
                ),
              )
              .toList(),
          customerVatGroupType: EnumService.stringToEnum(
            updateAccountInput.customerVatGroupType,
            Enum$VatGroupType.values,
          ),
          supplierVatGroupType: EnumService.stringToEnum(
            updateAccountInput.supplierVatGroupType,
            Enum$VatGroupType.values,
          ),
          industryGroups:
              (updateAccountInput.industryGroups?.trader ?? '').isNotEmpty ||
                  (updateAccountInput.industryGroups?.supplier ?? '').isNotEmpty
              ? Input$UpdateIndustryGroupsInput(
                  trader: updateAccountInput.industryGroups?.trader,
                  supplier: updateAccountInput.industryGroups?.supplier,
                )
              : null,
          financialCustomerGroupId: updateAccountInput.financialCustomerGroupId,
          financialSupplierGroupId: updateAccountInput.financialSupplierGroupId,
          settings: Input$UpdateAccountSettingsInput(
            stateReportingEnabled:
                updateAccountInput.settings?.stateReportingEnabled,
            negativeInwardsEnabled:
                updateAccountInput.settings?.negativeInwardsEnabled,
            transformationEnabled:
                updateAccountInput.settings?.transformationEnabled,
            marketIndicatorEnabled:
                updateAccountInput.settings?.marketIndicatorEnabled,
            isWasteProducer: updateAccountInput.settings?.isWasteProducer,
            isWasteImporter: updateAccountInput.settings?.isWasteImporter,
            isWasteTransporter: updateAccountInput.settings?.isWasteTransporter,
            isWasteRegisteredCarrier:
                updateAccountInput.settings?.isWasteRegisteredCarrier,
            annualWtnSsaRequired:
                updateAccountInput.settings?.annualWtnSsaRequired,
            wtnSsaExpiryDate: updateAccountInput.settings?.wtnSsaExpiryDate,
            validFrom: updateAccountInput.settings?.validFrom,
            validTo: updateAccountInput.settings?.validTo,
          ),
          pricingControl:
              updateAccountInput.pricingControl?.priceChangesRestricted != null
              ? Input$UpdatePricingControlInput(
                  priceChangesRestricted:
                      updateAccountInput.pricingControl?.priceChangesRestricted,
                )
              : null,
          vihbNumber: updateAccountInput.vIHBNumber,
          currencyId: updateAccountInput.currencyId,
          accountStatus: EnumService.stringToEnum(
            updateAccountInput.accountStatus,
            Enum$AccountStatus.values,
          ),
          parentAccount: updateAccountInput.parentAccount,
          taxSettings: Input$UpdateTaxSettingsInput(
            cashPaymentLimitExemptionDate:
                updateAccountInput.taxSettings?.cashPaymentLimitExemptionDate,
            checkForW9: updateAccountInput.taxSettings?.checkForW9,
            doingBusinessAs: updateAccountInput.taxSettings?.doingBusinessAs,
            foreignEntityIndicator:
                updateAccountInput.taxSettings?.foreignEntityIndicator,
            nameFor1099: updateAccountInput.taxSettings?.nameFor1099,
            reportingDate: updateAccountInput.taxSettings?.reportingDate,
            secondTin: updateAccountInput.taxSettings?.secondTin,
            taxId: EnumService.stringToEnum(
              updateAccountInput.taxSettings?.taxId,
              Enum$TaxIdType.values,
            ),
            w9Received: updateAccountInput.taxSettings?.w9Received,
          ),
          amiceCompanyNumber: updateAccountInput.amiceCompanyNumber,
          reportingFrequency: updateAccountInput.reportingFrequency,
          productEWC: (updateAccountInput.productEWCs ?? [])
              .map(
                (m) => Input$KeyValuePairOfStringAndStringInput(
                  key: m.product.id,
                  value: m.eWCCode,
                ),
              )
              .toList(),
        ),
      ),
    );

    return (
      (result.data?.updateAccount.accountNumber?.isNotEmpty ?? false) &&
          (result.data?.updateAccount.errors ?? []).isEmpty,
      (result.errors ?? []).firstOrNull?.message ??
          (result.data?.updateAccount.errors ?? []).firstOrNull?.message,
    );
  }

  Input$UpdateIdentificationInput toIdentificationInput(
    Identification a, {
    bool sendMedia = true,
  }) {
    return Input$UpdateIdentificationInput(
      documentNumber: a.identificationNumber,
      media: sendMedia ? Input$UpdateMediaAssetInput(url: a.media?.url) : null,
      subType: mapToIdentificationSubType(a.subType ?? 'None'),
      type: mapToIdentificationType(a.type ?? 'None'),
      validFrom: a.validFrom,
      validTo: a.validTo,
      name: a.name,
    );
  }

  Future<List<Identification>> getAccountDocumentList(String code) async {
    final result = await documentNodeQueryGetAccountDocuments.execute(
      httpClient,
      Query$GetAccountDocuments.fromJson,
      variables: Variables$Query$GetAccountDocuments(
        accountId: code.startsWith('accounts/') ? code : 'accounts/$code',
      ),
    );

    if (result.hasErrors()) {
      final exception = Exception(
        'Failed to load Account Documents: ${result.errors!.join()}',
      );
      return Future.error(exception);
    }

    if (result.data == null) {
      return [];
    }
    final documents = List<Identification>.empty(growable: true);
    // ignore: deprecated_member_use_from_same_package
    final account = result.data!.accountById;

    if (account.accountContacts != null &&
        account.accountContacts!.isNotEmpty) {
      for (final accountContact in account.accountContacts!) {
        documents.addAll(
          accountContact!.value.proofOfIdentification
              .map(
                (document) => Identification(
                  document.type.toJson(),
                  document.subType.toJson(),
                  document.validFrom,
                  document.validTo,
                  MediaAsset(
                    document.media.url,
                    sasUrl: document.sasUrl ?? '',
                  ),
                  '',
                  '', //name
                ),
              )
              .toList(),
        );
      }
    }

    return documents;
  }

  Future<List<UserInfo>> getUserInfos() async {
    final results = await documentNodeQueryGetUserInfos.execute(
      httpClient,
      Query$GetUserInfos.fromJson,
      cacheProvider: emrCacheProvider,
      cacheTtl: defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return results.data?.userInfos?.nodes
            ?.map(
              (t) => UserInfo(
                id: t.id,
                emailAddress: t.emailAddress,
                name: t.name,
                defaultDepot: t.defaultDepot,
                defaultTerritory: t.defaultTerritory,
              ),
            )
            .toList() ??
        [];
  }

  Future<List<ListValue>> getListValuesForAccountManagers(String query) async {
    final response = await documentNodeQuerysearchUserInfos.execute(
      httpClient,
      Query$searchUserInfos.fromJson,
      variables: Variables$Query$searchUserInfos(
        input: Input$SearchUserInfoInput(query: query),
      ),
    );
    return response.data?.searchUserInfos?.nodes
            ?.map(
              (userInfo) => ListValue(
                text: userInfo.name.isEmpty ? userInfo.username : userInfo.name,
                value: userInfo.id,
              ),
            )
            .toList() ??
        [];
  }

  Future<List<ListValue>> getListValuesForIndustryGroupTypes() async {
    ////TODO: get industry groups from server
    final ig = [
      'DOOR TRADE - GENERAL PUBLIC',
      'DOOR TRADE - AD HOC TRADER',
      'DOOR TRADE - SCRAP COLLECTORS',
      'DOOR TRADE - TRADESPERSON',
    ];

    return ig.map((e) => ListValue(id: e, text: '$e ', value: e)).toList();
  }

  Future<List<ListValue>> getListValuesForAccountStatuses() async {
    return Enum$AccountStatus.values
        .map(
          (e) => ListValue(
            id: e.toString(),
            text: e.toJson(),
            value: e.toString(),
          ),
        )
        .toList();
  }

  Future<List<ListValue>> getListValuesForAccountTypes() async {
    return Enum$AccountType.values
        .map(
          (e) => ListValue(
            id: e.toString(),
            text: e.toJson(),
            value: e.toJson(),
          ),
        )
        .toList();
  }

  Future<List<String>> contactTypes(String _) async {
    return Enum$ContactType.values
        .map((v) => v.toString().split('.').last)
        .toList();
  }

  Future<(bool success, String? error)> createAccountContact(
    Input$CreateAccountContactInput createAccountContactInput,
  ) async {
    final result = await documentNodeMutationCreateAccountContact.execute(
      httpClient,
      Mutation$CreateAccountContact.fromJson,
      variables: Variables$Mutation$CreateAccountContact(
        input: createAccountContactInput,
      ),
    );

    var errorText = '';
    if (result.hasErrors()) {
      errorText = result.errors?.map((e) => e.message).join('\n') ?? '';
      final contactName =
          '${createAccountContactInput.firstName} '
          '${createAccountContactInput.lastName}';
      EmrLogger.event(
        'Error adding contacts for account',
        params: {
          'contactName': contactName,
          'accountId': createAccountContactInput.accountId,
          'error': errorText,
        },
        type: EmrOneCoreTelemetry.kTypeResult,
        severity: EmrLogLevel.error,
        source: source,
      );
      return (false, errorText);
    }

    return (
      !result.hasErrors() &&
          (result.data?.createAccountContact != null) &&
          ((result.errors ?? []).isEmpty),
      (result.errors ?? []).firstOrNull?.message ??
          (result.errors ?? []).firstOrNull?.message,
    );
  }

  Future<(bool success, String? error)> updateAccountContact(
    Input$UpdateAccountContactInput updateAccountContactInput,
  ) async {
    final result = await documentNodeMutationUpdateAccountContact.execute(
      httpClient,
      Mutation$UpdateAccountContact.fromJson,
      variables: Variables$Mutation$UpdateAccountContact(
        input: updateAccountContactInput,
      ),
    );

    if (result.hasErrors()) {
      var errorText = '';
      errorText = result.errors?.map((e) => e.message).join('\n') ?? '';
      final contactName =
          '${updateAccountContactInput.firstName} '
          '${updateAccountContactInput.lastName}';
      EmrLogger.event(
        'Error updating contacts for account',
        params: {
          'contactName': contactName,
          'accountId': updateAccountContactInput.accountId,
          'error': errorText,
        },
        type: EmrOneCoreTelemetry.kTypeResult,
        severity: EmrLogLevel.error,
        source: source,
      );
      return (false, errorText);
    }
    return (
      !result.hasErrors() &&
          (result.data?.updateAccountContact != null) &&
          ((result.errors ?? []).isEmpty),
      (result.errors ?? []).firstOrNull?.message ??
          (result.errors ?? []).firstOrNull?.message,
    );
  }

  Future<(bool success, String? error)> deleteAccountContact(
    String contactId,
    String accountId,
  ) async {
    final result = await documentNodeMutationDeleteAccountContact.execute(
      httpClient,
      Mutation$DeleteAccountContact.fromJson,
      variables: Variables$Mutation$DeleteAccountContact(
        contactId: contactId,
        accountId: accountId,
      ),
    );

    var errorText = '';
    if (result.hasErrors()) {
      errorText = result.errors?.map((e) => e.message).join('\n') ?? '';
      EmrLogger.event(
        'Error deleting contacts for account',
        params: {
          'contactId': contactId,
          'accountId': accountId,
          'error': errorText,
        },
        type: EmrOneCoreTelemetry.kTypeResult,
        severity: EmrLogLevel.error,
        source: source,
      );
      return (false, errorText);
    }

    return (
      !result.hasErrors() &&
          (result.data?.deleteAccountContact != null) &&
          ((result.errors ?? []).isEmpty),
      (result.errors ?? []).firstOrNull?.message ??
          (result.errors ?? []).firstOrNull?.message,
    );
  }

  Future<(bool success, String? error)> deleteContactDocument(
    Input$DeleteContactDocumentInput input,
  ) async {
    final response = await documentNodeMutationDeleteContactDocument.execute(
      httpClient,
      Mutation$DeleteContactDocument.fromJson,
      variables: Variables$Mutation$DeleteContactDocument(
        input: input,
      ),
    );

    var errorText = '';

    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        errorText = error.extensions?['errorCode'] as String? ?? error.message;
      });

      EmrLogger.event(
        'Error deleting contact document',
        params: {
          'accountId': input.accountId,
          'contactId': input.contactId,
          'identificationType': input.identificationType.toJson(),
          'identificationSubType': input.identificationSubType.toJson(),
          'error': errorText,
        },
        type: EmrOneCoreTelemetry.kTypeResult,
        severity: EmrLogLevel.error,
        source: source,
      );
      return (false, errorText);
    }

    return response.data!.deleteContactDocument!.when(
      contactWithKey: (_) => (true, null),
      accountContactError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error deleting contact document',
          params: {
            'accountId': input.accountId,
            'contactId': input.contactId,
            'identificationType': input.identificationType.toJson(),
            'identificationSubType': input.identificationSubType.toJson(),
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Unknown error deleting contact document',
          params: {
            'accountId': input.accountId,
            'contactId': input.contactId,
            'identificationType': input.identificationType.toJson(),
            'identificationSubType': input.identificationSubType.toJson(),
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
    );
  }

  Future<Query$GetReferenceData?> getIndustryGroups() async {
    final result = await documentNodeQueryGetReferenceData.execute(
      httpClient,
      Query$GetReferenceData.fromJson,
      variables: {
        'name': 'IndustryGroups',
      },
    );

    if (result.hasErrors()) {
      final exception = Exception(
        'Failed to load Industry groups: ${result.errors!.join()}',
      );
      return Future.error(exception);
    }

    return result.data;
  }

  Future<List<Query$GetSicCodes$sicCodes$nodes>> _fetchSicCodes({
    required int first,
    Input$SicCodeFilterInput? where,
  }) async {
    final result = await documentNodeQueryGetSicCodes.execute(
      httpClient,
      Query$GetSicCodes.fromJson,
      variables: Variables$Query$GetSicCodes(
        first: first,
        where: where,
      ),
    );

    if (result.hasErrors()) {
      return [];
    }

    return result.data?.sicCodes?.nodes ?? [];
  }

  Future<List<Query$GetSicCodes$sicCodes$nodes>> searchSicCodes(
    String query, {
    int first = 10,
  }) async {
    final trimmedQuery = query.trim();

    if (trimmedQuery.isEmpty) {
      try {
        return await _fetchSicCodes(first: first);
      } catch (_) {
        return [];
      }
    }

    try {
      if (RegExp(r'^\d+$').hasMatch(trimmedQuery)) {
        return await _fetchSicCodes(
          first: first,
          where: Input$SicCodeFilterInput(
            code: Input$StringOperationFilterInput(
              startsWith: trimmedQuery,
            ),
          ),
        );
      }

      return _searchSicCodesByDescription(trimmedQuery, first: first);
    } catch (_) {
      return [];
    }
  }

  Future<List<Query$GetSicCodes$sicCodes$nodes>> _searchSicCodesByDescription(
    String query, {
    required int first,
  }) async {
    final lower = query.toLowerCase();
    final terms = <String>{
      query,
      lower,
      if (lower.isNotEmpty) '${lower[0].toUpperCase()}${lower.substring(1)}',
    };

    for (final term in terms) {
      final nodes = await _fetchSicCodes(
        first: first,
        where: Input$SicCodeFilterInput(
          description: Input$StringOperationFilterInput(startsWith: term),
        ),
      );
      if (nodes.isNotEmpty) {
        return nodes;
      }
    }

    return [];
  }

  Future<List<Query$GetSicCodes$sicCodes$nodes>> getSicCodes() =>
      searchSicCodes('');

  Future<(bool success, String? error)> addAccountLoyaltyCards(
    Input$CreateOrUpdateAccountLoyaltyCardInput input,
  ) async {
    final response = await documentNodeMutationAddAccountLoyaltyCards.execute(
      httpClient,
      Mutation$AddAccountLoyaltyCards.fromJson,
      variables: Variables$Mutation$AddAccountLoyaltyCards(
        input: input,
      ),
    );

    var errorText = '';

    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        errorText = error.extensions?['errorCode'] as String? ?? 'Error';
      });
      return (false, errorText);
    }

    return response.data!.addAccountLoyaltyCards!.when(
      account: (_) => (true, null),
      accountLoyaltyCardsError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error adding loyalty card',
          params: {
            'accountId': input.accountId,
            'cardCode': input.cardCode,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Unknown error adding loyalty card',
          params: {
            'accountId': input.accountId,
            'cardCode': input.cardCode,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> updateAccountLoyaltyCards(
    Input$CreateOrUpdateAccountLoyaltyCardInput input,
  ) async {
    final response = await documentNodeMutationUpdateLoyaltyCards.execute(
      httpClient,
      Mutation$UpdateLoyaltyCards.fromJson,
      variables: Variables$Mutation$UpdateLoyaltyCards(
        input: input,
      ),
    );

    var errorText = '';

    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        errorText = error.extensions?['errorCode'] as String? ?? 'Error';
      });
      return (false, errorText);
    }

    return response.data!.updateAccountLoyaltyCards!.when(
      account: (_) => (true, null),
      accountLoyaltyCardsError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error updating loyalty card',
          params: {
            'accountId': input.accountId,
            'cardCode': input.cardCode,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Unknown error updating loyalty card',
          params: {
            'accountId': input.accountId,
            'cardCode': input.cardCode,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> deleteAccountLoyaltyCards(
    Input$DeleteAccountLoyaltyCardsInput input,
  ) async {
    final response = await documentNodeMutationRemoveAccountLoyaltyCards
        .execute(
          httpClient,
          Mutation$RemoveAccountLoyaltyCards.fromJson,
          variables: Variables$Mutation$RemoveAccountLoyaltyCards(
            deleteAccountLoyaltyCardsInput: input,
          ),
        );

    var errorText = '';

    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        errorText = error.extensions?['errorCode'] as String? ?? 'Error';
      });
      return (false, errorText);
    }

    return response.data!.deleteAccountLoyaltyCards!.when(
      account: (_) => (true, null),
      accountLoyaltyCardsError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error deleting loyalty card',
          params: {
            'accountId': input.accountId,
            'cardCode': input.cardCode!,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Unknown error deleting loyalty card',
          params: {
            'accountId': input.accountId,
            'cardCode': input.cardCode!,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> addAccountProductEwc(
    Input$CreateOrUpdateAccountProductEwcInput input,
  ) async {
    final response = await documentNodeMutationCreateAccountProductEwc.execute(
      httpClient,
      Mutation$CreateAccountProductEwc.fromJson,
      variables: Variables$Mutation$CreateAccountProductEwc(
        input: input,
      ),
    );

    var errorText = '';

    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        errorText = error.extensions?['errorCode'] as String? ?? 'Error';
      });
      return (false, errorText);
    }

    return response.data!.createAccountProductEwc!.when(
      account: (_) => (true, null),
      accountProductEwcError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error adding product EWC',
          params: {
            'accountId': input.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Unknown error adding product EWC',
          params: {
            'accountId': input.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> updateAccountProductEwc(
    Input$CreateOrUpdateAccountProductEwcInput input,
  ) async {
    final response = await documentNodeMutationUpdateAccountProductEwc.execute(
      httpClient,
      Mutation$UpdateAccountProductEwc.fromJson,
      variables: Variables$Mutation$UpdateAccountProductEwc(
        input: input,
      ),
    );

    var errorText = '';

    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        errorText = error.extensions?['errorCode'] as String? ?? 'Error';
      });
      return (false, errorText);
    }

    return response.data!.updateAccountProductEwc!.when(
      account: (_) => (true, null),
      accountProductEwcError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error updating product EWC',
          params: {
            'accountId': input.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Unknown error updating product EWC',
          params: {
            'accountId': input.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> deleteAccountProductEwc(
    Input$DeleteAccountProductEwcInput input,
  ) async {
    final response = await documentNodeMutationDeleteAccountProductEwc.execute(
      httpClient,
      Mutation$DeleteAccountProductEwc.fromJson,
      variables: Variables$Mutation$DeleteAccountProductEwc(
        input: input,
      ),
    );

    var errorText = '';

    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        errorText = error.extensions?['errorCode'] as String? ?? 'Error';
      });
      return (false, errorText);
    }

    return response.data!.deleteAccountProductEwc!.when(
      account: (_) => (true, null),
      accountProductEwcError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error deleting product EWC',
          params: {
            'accountId': input.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Unknown error deleting product EWC',
          params: {
            'accountId': input.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> updateAccountMainDetails(
    Input$AccountMainDetailsInput input,
  ) async {
    final response = await documentNodeMutationUpdateAccountMainDetail.execute(
      httpClient,
      Mutation$UpdateAccountMainDetail.fromJson,
      variables: Variables$Mutation$UpdateAccountMainDetail(
        input: input,
      ),
    );

    var errorText = '';

    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        errorText = error.extensions?['errorCode'] as String? ?? 'Error';
      });
      return (false, errorText);
    }

    return response.data!.updateAccountMainDetail!.when(
      account: (_) => (true, null),
      accountMainDetailsError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error updating account main details',
          params: {
            'accountId': input.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Unknown error updating account main details',
          params: {
            'accountId': input.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> updateAccountLicenseExemption(
    Input$UpdateAccountLicenseExemptionInput input,
  ) async {
    final response = await documentNodeMutationUpdateAccountLicenseExemption
        .execute(
          httpClient,
          Mutation$UpdateAccountLicenseExemption.fromJson,
          variables: Variables$Mutation$UpdateAccountLicenseExemption(
            input: input,
          ),
        );

    var errorText = '';

    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        errorText = error.extensions?['errorCode'] as String? ?? 'Error';
      });
      return (false, errorText);
    }

    return response.data!.updateAccountLicenseExemption!.when(
      account: (_) => (true, null),
      accountLicenseExemptionError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error updating account license exemption',
          params: {
            'accountId': input.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Unknown error updating account license exemption',
          params: {
            'accountId': input.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
    );
  }

  Future<(bool success, String? error)> addAccountTeam(
    Input$AccountTeamInput input,
  ) async {
    final response = await documentNodeMutationAddAccountTeam.execute(
      httpClient,
      Mutation$AddAccountTeam.fromJson,
      variables: Variables$Mutation$AddAccountTeam(
        input: input,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
    }
    return response.data!.addAccountTeam!.when(
      account: (_) => (true, null),
      accountTeamError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error add account team',
          params: {
            'accountId': input.accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Unknown error add account team',
          params: {
            'accountId': input.accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
    );
  }

  Future<
    (
      bool success,
      String? bank,
      Address address,
      bool invalidSortAccountCombination,
    )
  >
  validateUKBankAccount(
    String sortCode,
    String accountNumber,
    UserInfoService userInfoService,
  ) async {
    if (sortCode.isEmpty || accountNumber.isEmpty) {
      return (false, '', Address.empty(), false);
    }
    final response = await documentNodeQueryValidateBankAccountInternal.execute(
      httpClient,
      Query$ValidateBankAccountInternal.fromJson,
      variables: Variables$Query$ValidateBankAccountInternal(
        sortCode: sortCode,
        accountNumber: accountNumber,
        country: Enum$CountryId.UK,
      ),
    );

    if (response.hasErrors() || response.data == null) {
      return (false, '', Address.empty(), false);
    }

    final validated = response.data!.validatedBankAccountInternal;
    if (validated == null) {
      return (false, '', Address.empty(), true);
    }
    if (!validated.isCorrect) {
      return (false, '', Address.empty(), true);
    }

    final address = Address(
      address1: validated.contactAddressLine1,
      address2: validated.contactAddressLine2,
      address3: validated.contactPostTown,
      address4: '',
      address5: '',
      address6: '',
      postCode: validated.contactPostcode,
    );

    return (true, validated.bank, address, false);
  }

  Future<(bool success, String? error)> deleteAccountTeam(
    String accountId,
    String teamId,
  ) async {
    final response = await documentNodeMutationDeleteAccountTeam.execute(
      httpClient,
      Mutation$DeleteAccountTeam.fromJson,
      variables: Variables$Mutation$DeleteAccountTeam(
        accountId: accountId,
        teamId: teamId,
      ),
    );

    var errorText = '';
    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        if (error.extensions?['errorCode'] != null) {
          errorText = error.extensions?['errorCode'] as String;
        } else {
          errorText = 'Error';
        }
      });
    }
    return response.data!.deleteAccountTeam!.when(
      account: (_) => (true, null),
      accountTeamError: (error) {
        errorText = error.message;
        EmrLogger.event(
          'Error delete account team',
          params: {
            'accountId': accountId,
            'error': error.message,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
      orElse: () {
        EmrLogger.event(
          'Unknown error delete account team',
          params: {
            'accountId': accountId,
          },
          type: EmrOneCoreTelemetry.kTypeResult,
          severity: EmrLogLevel.error,
          source: source,
        );
        return (false, errorText);
      },
    );
  }

  Future<Query$GetAccountReferenceData?>
  getAccountListValuesForFinancialGroups() async {
    final result = await documentNodeQueryGetAccountReferenceData.execute(
      httpClient,
      Query$GetAccountReferenceData.fromJson,
    );

    if (result.hasErrors()) {
      final exception = Exception(
        'Failed to load financial groups: ${result.errors!.join()}',
      );
      return Future.error(exception);
    }

    if (result.data == null) {
      return null;
    }

    return result.data;
  }

  static InvoicingOptions _mapInvoicingOptions(
    Query$GetAccountInfo$accountById$businessDetail$invoicingOptions?
    invoicingOptions,
  ) {
    if (invoicingOptions == null) {
      return InvoicingOptions();
    }
    return InvoicingOptions(
      bulkPod: invoicingOptions.bulkPod,
      multiLoad: invoicingOptions.multiLoad,
      multiDepot: invoicingOptions.multiDepot,
      multiGrade: invoicingOptions.multiGrade,
      multiTicketDate: invoicingOptions.multiTicketDate,
      multiLocation: invoicingOptions.multiLocation,
      useDeliveryAddress: invoicingOptions.useDeliveryAddress,
      suppressInvoice: invoicingOptions.suppressInvoice,
      suppressStatement: invoicingOptions.suppressStatement,
    );
  }

  static SelfBilling _mapSelfBilling(
    Query$GetAccountInfo$accountById$businessDetail$selfBilling? selfBilling,
  ) {
    if (selfBilling == null) {
      return SelfBilling(null, '', 0, 0, null);
    }
    return SelfBilling(
      selfBilling.selfBillingDate,
      selfBilling.frequency.name,
      selfBilling.doNotPayTicketsOlderThan,
      selfBilling.payTicketsOlderThan,
      selfBilling.payCentre,
      autoApprove: selfBilling.autoApprove,
    );
  }

  static CreditControl _mapCreditControl(
    Query$GetAccountInfo$accountById$businessDetail$creditControl?
    creditControl,
  ) {
    if (creditControl == null) {
      return CreditControl(
        '',
        null,
        null,
        null,
        null,
        0,
        null,
        '',
        contraAgreed: false,
      );
    }
    return CreditControl(
      creditControl.insurerPolicyName.name,
      creditControl.creditLimit,
      creditControl.overrideLimit,
      creditControl.decisionLimit,
      creditControl.creditReportDate,
      creditControl.creditReportValue,
      creditControl.creditLimitReviewDate,
      creditControl.currencyId,
      contraAgreed: creditControl.contraAgreed,
    );
  }

  static PaymentTerm _mapPaymentTerm(
    Query$GetAccountInfo$accountById$businessDetail$paymentTerm? paymentTerm,
  ) {
    if (paymentTerm == null) {
      return PaymentTerm('', '', '');
    }
    final payTerm = PaymentTerm(
      EnumService.enumToString(paymentTerm.taxMethod),
      _mapPaymentMethodName(paymentTerm),
      EnumService.enumToString(paymentTerm.discountType),
    );
    payTerm.adjustTax = paymentTerm.adjustTax;
    payTerm.documentHoldStatusType = paymentTerm.documentHoldStatusType.name;
    payTerm.discountTerms = paymentTerm.discountTerms;
    payTerm.discountPercentage = paymentTerm.discountPercentage;
    payTerm.paymentTermTypeName = paymentTerm.paymentTermTypeName;
    return payTerm;
  }

  static CreditTerm _mapCreditTerm(
    Query$GetAccountInfo$accountById$businessDetail$creditTerm? creditTerm,
  ) {
    if (creditTerm == null) {
      return CreditTerm('');
    }
    final creditTerms = CreditTerm(_mapPaymentTermType(creditTerm));
    creditTerms.dueDateFrom = creditTerm.dueDateFrom.name;
    creditTerms.invoicePeriodicity = creditTerm.invoicePeriodicity.name;
    creditTerms.invoicePeriodicityDays = creditTerm.invoicePeriodicityDays;
    creditTerms.onStop = creditTerm.onStop;
    creditTerms.vatClass = creditTerm.vatClass.name;
    creditTerms.limitDecisionType = creditTerm.limitDecisionType.name;
    return creditTerms;
  }

  Future<(bool success, String? error)> addAccountLocation(
    Input$CreateOrUpdateAccountLocationInput input,
  ) async {
    final response = await documentNodeMutationAddAccountLocationMutation
        .execute(
          httpClient,
          Mutation$AddAccountLocationMutation.fromJson,
          variables: Variables$Mutation$AddAccountLocationMutation(
            input: input,
          ),
        );

    var errorText = '';

    if (response.hasErrors()) {
      response.errors?.forEach((error) {
        errorText = error.extensions?['errorCode'] as String? ?? 'Error';
      });
      return (false, errorText);
    }

    return (true, null);
  }

  Input$MediaAssetInput toMediaAssetInput(
    MediaAsset mediaAsset, {
    required String userInfoId,
    required String userName,
  }) {
    final now = DateTime.now().toUtc();
    return Input$MediaAssetInput(
      url: mediaAsset.url,
      created: Input$CreatedInput(
        userInfoId: mediaAsset.createdByUserInfoId?.isNotEmpty ?? false
            ? mediaAsset.createdByUserInfoId!
            : userInfoId,
        at: mediaAsset.createdAt?.toUtc() ?? now,
        userName: mediaAsset.createdByUserName?.isNotEmpty ?? false
            ? mediaAsset.createdByUserName!
            : userName,
      ),
      modified: Input$ModifiedInput(
        userInfoId: userInfoId,
        at: now,
        userName: userName,
      ),
    );
  }
}
