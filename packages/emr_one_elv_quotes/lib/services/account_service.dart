import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:emr_core_api/graphql/queries/account/validate_bank_account_internal.graphql.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_core_api/services/account_service.dart';
import 'package:emr_one_elv_core/functions/decoder.dart';
import 'package:emr_one_elv_quotes/models/api/response_models/account_search_response.dart';
import 'package:emr_one_elv_quotes/models/common_classes/create_account/account_creation_response.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:http/http.dart';

class ELVAccountService {
  ELVAccountService({
    required this.client,
    required this.appConfig,
    required this.userInfoService,
    required this.accountService,
    this.territory,
  });

  final BaseClient client;
  final AppConfig appConfig;
  final AccountService accountService;
  final UserInfoService userInfoService;
  final String? territory;

  Future<ApiResponse<AccountSearchResponse>> accountSearchThroughCam(
    String searchText, {
    String? endCursor,
    int? first,
  }) async {
    final EmrCacheProvider cacheProvider =
        await SharedPrefsCacheProvider.createFromDefaultInstance();

    final accountList = <AccountModel>[];

    final response = await accountService.searchAccounts(
      query: searchText,
      territories: territory != null ? [territory!] : null,
      accountTypes: [
        Enum$AccountType.RETAIL.name,
        Enum$AccountType.BUSINESS.name,
      ],
      cacheProvider: cacheProvider,
      endCursor: endCursor,
      first: first,
    );

    final accounts = response.accounts;

    if (accounts.isNotEmpty) {
      accountList.addAll(
        accounts.map((e) {
          final mainContact = e.contacts?.firstWhereOrNull(
            (contact) =>
                contact.contactTypes?.contains(Enum$ContactType.MAIN.name) ??
                false,
          );

          final address = mainContact != null && mainContact.address != null
              ? mainContact.address
              : e.addresses.firstOrNull;

          return AccountModel(
            code: e.code ?? 'Unknown',
            name: e.name ?? '',
            contact: e.contacts,
            address: Address(
              line1: address?.address1 ?? '',
              line2: address?.address2 ?? '',
              line3: address?.address3 ?? '',
              line4: address?.address4 ?? '',
              line5: address?.address5 ?? '',
              line6: address?.address6 ?? '',
              postCode: address?.postCode ?? '',
            ),
            email: mainContact?.contactPreferences.email?.value,
            landline: mainContact?.contactPreferences.phone?.value,
            mobilePhone: mainContact?.contactPreferences.mobile?.value,
            locations: e.locations
                .map(
                  (location) => AccountLocation(
                    name: location.name ?? '',
                    code: location.code ?? '',
                    address: Address(
                      line1: location.address.address1 ?? '',
                      line2: location.address.address2,
                      line3: location.address.address3,
                      line4: location.address.address4,
                      line5: location.address.address5,
                      line6: location.address.address6,
                      country: location.address.countryCode,
                      postCode: location.address.postCode ?? '',
                    ),
                  ),
                )
                .toList(),
            accountType: e.accountType,
          );
        }),
      );
      return ApiResponse(
        AccountSearchResponse(
          accounts: accountList,
          pageInfo: response.pageInfo,
        ),
      );
    }

    return ApiResponse.badRequest();
  }

  Future<ApiResponse<AccountSearchResponse>>
  accountSearchThroughCamByAccountCode(String accountCode) async {
    final EmrCacheProvider cacheProvider =
        await SharedPrefsCacheProvider.createFromDefaultInstance();

    final accountList = <AccountModel>[];

    final response = await accountService.searchAccountsByAccountCode(
      code: accountCode,
      territories: territory != null ? [territory!] : null,
      accountTypes: [
        Enum$AccountType.RETAIL.name,
        Enum$AccountType.BUSINESS.name,
      ],
      cacheProvider: cacheProvider,
      first: 1,
    );

    final accounts = response.accounts;

    if (accounts.isNotEmpty) {
      accountList.addAll(
        accounts.map((e) {
          final mainContact = e.contacts?.firstWhereOrNull(
            (contact) =>
                contact.contactTypes?.contains(Enum$ContactType.MAIN.name) ??
                false,
          );

          final address = mainContact != null && mainContact.address != null
              ? mainContact.address
              : e.addresses.firstOrNull;

          return AccountModel(
            code: e.code ?? 'Unknown',
            contact: e.contacts,
            name: e.name ?? '',
            address: Address(
              line1: address?.address1 ?? '',
              line2: address?.address2 ?? '',
              line3: address?.address3 ?? '',
              line4: address?.address4 ?? '',
              line5: address?.address5 ?? '',
              line6: address?.address6 ?? '',
              postCode: address?.postCode ?? '',
            ),
            email: mainContact?.contactPreferences.email?.value,
            landline: mainContact?.contactPreferences.phone?.value,
            mobilePhone: mainContact?.contactPreferences.mobile?.value,
            locations: e.locations
                .map(
                  (location) => AccountLocation(
                    name: location.name ?? '',
                    code: location.code ?? '',
                    address: Address(
                      line1: location.address.address1 ?? '',
                      line2: location.address.address2,
                      line3: location.address.address3,
                      line4: location.address.address4,
                      line5: location.address.address5,
                      line6: location.address.address6,
                      country: location.address.countryCode,
                      postCode: location.address.postCode ?? '',
                    ),
                  ),
                )
                .toList(),
            accountType: e.accountType,
          );
        }),
      );
      return ApiResponse(
        AccountSearchResponse(
          accounts: accountList,
          pageInfo: response.pageInfo,
        ),
      );
    }

    return ApiResponse.badRequest();
  }

  Future<ApiResponse<AccountCreationResponse?>> createAccount(
    CreateAccountRequest createAccountRequest,
  ) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/account/create',
    );

    final response = await client.post(
      endpoint,
      body: json.encode(createAccountRequest.toJson()),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      return ApiResponse.serverFault();
    }

    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return ApiResponse(
        AccountCreationResponse.fromJson(
          jsonDecode(await decodeBodyBytes(response)),
        ),
      );
    }
    return ApiResponse.badRequest();
  }

  Future<ApiResponse<bool>> validateUKBankAccount(
    String sortCode,
    String accountNumber,
  ) async {
    if (sortCode.isEmpty || accountNumber.isEmpty) {
      return ApiResponse.badRequest();
    }

    final response = await documentNodeQueryValidateBankAccountInternal.execute(
      client,
      Query$ValidateBankAccountInternal.fromJson,
      variables: Variables$Query$ValidateBankAccountInternal(
        sortCode: sortCode,
        accountNumber: accountNumber,
        country: Enum$CountryId.UK,
      ),
      url: Uri.parse('${appConfig.primaryApiUrl}/graphql'),
    );

    if (response.hasErrors() || response.data == null) {
      return ApiResponse.serverFault();
    }

    return ApiResponse(
      response.data!.validatedBankAccountInternal?.isCorrect ?? false,
    );
  }

  Future<ApiResponse<bool>> addOrUpdateAccountLocation({
    required AccountModel account,
    required String accountId,
    required String locationCode,
    required String locationName,
    required String primaryContactId,
    required Address address,
    required String countryCode,
  }) async {
    final existingLocation = account.locations
        .where((x) => x.code == locationCode)
        .firstOrNull;

    final input = Input$CreateOrUpdateAccountLocationInput(
      accountId: accountId,
      name: locationName.toUpperCase(),
      code: locationCode.toUpperCase(),
      address: Input$AddressInput(
        address1: address.line1,
        address2: address.line2,
        address3: address.line3,
        address4: address.line4,
        address5: address.line5,
        address6: address.line6,
        countryCode: countryCode,
        postCode: address.postCode,
      ),
      primaryContactId: primaryContactId,
      country: countryCode,
      description: locationCode.toUpperCase(),
      active: true,
      sitePermitHolder: false,
      sitePermitOrExemptionNumber: '',
    );
    Future<(bool, String?)> query;
    if (existingLocation == null) {
      query = accountService.addAccountLocation(input);
    } else {
      query = accountService.updateAccountLocations(input);
    }

    final response = await query;

    if (response.$1) {
      return ApiResponse(true);
    }
    return ApiResponse.badRequest();
  }

  Future<ApiResponse<bool>> updateAccountLocation({
    required String accountId,
    required String locationCode,
    required String locationName,
    required String primaryContactId,
    required Address address,
  }) async {
    final input = Input$CreateOrUpdateAccountLocationInput(
      accountId: accountId,
      name: locationName.toUpperCase(),
      code: locationCode.toUpperCase(),
      address: Input$AddressInput(
        address1: address.line1,
        address2: address.line2,
        address3: address.line3,
        address4: address.line4,
        address5: address.line5,
        address6: address.line6,
        countryCode: 'UK',
        postCode: address.postCode,
      ),
      primaryContactId: primaryContactId,
      country: 'UK',
      description: locationCode.toUpperCase(),
      active: true,
      sitePermitHolder: false,
      sitePermitOrExemptionNumber: '',
    );
    final response = await accountService.updateAccountLocations(input);
    if (response.$1) {
      return ApiResponse(true);
    }
    return ApiResponse.badRequest();
  }
}
