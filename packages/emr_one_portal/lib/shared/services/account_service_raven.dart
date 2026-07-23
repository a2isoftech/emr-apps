import 'package:emr_account_registration/signup.dart' as signup;
import 'package:emr_core_api/graphql/graphql.dart' as coreapi;
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/graphql/cam_raven/graphql.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:http/http.dart';

class AccountServicePortalRaven extends AccountServicePortalInterface {
  AccountServicePortalRaven({
    required super.client,
    required super.userInfoService,
    required super.appConfig,
    required super.url,
  });

  @override
  Future<AccountDetailsModel?> getAccountDetails() async {
    final partyAccountNumber = userInfoService.getPartyAccountNumber();

    final response = await _getAccountDetails(
      client,
    );

    if (response.hasErrors() || response.data == null) {
      signup.LoggingService.logGraphQlFailure(
        EmrOnePortalTelemetry.kGetAccountDetails,
        response,
        partyAccountNo: userInfoService.userInfo.partyAccountNumber,
        userId: userInfoService.userInfo.id,
      );

      if (!isErrorAllowed(response.errors)) {
        return null;
      }
    }

    return response.data?.account.toAccountDetailsModel(partyAccountNumber);
  }

  @override
  Future<BankDetails?> getBankDetails({
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = Duration.zero,
    bool forceLoad = false,
  }) async {
    final accessToken = await userInfoService.getIdToken();
    final response = await documentNodeQueryGetBankDetails.execute(
      client,
      Query$GetBankDetails.fromJson,
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: forceLoad,
      url: url,
      headers: getHeaders(accessToken),
    );

    if (response.hasErrors() || response.data == null) {
      signup.LoggingService.logGraphQlFailure(
        EmrOnePortalTelemetry.kGetBankDetails,
        response,
        partyAccountNo: userInfoService.userInfo.partyAccountNumber,
        userId: userInfoService.userInfo.id,
      );

      if (!isErrorAllowed(response.errors)) {
        return null;
      }
    }

    return response.data?.account.toBankDetailsModel();
  }

  @override
  Future<List<Company>> getCompaniesList() async {
    final accessToken = await userInfoService.getIdToken();
    final response = await documentNodeQueryGetAccountCompanies.execute(
      client,
      Query$GetAccountCompanies.fromJson,
      url: url,
      headers: getHeaders(accessToken),
    );

    return (response.data?.account.validForCompanies ?? [])
        .where(
          (company) => PortalComapnyCodeConstants.allowedCompanies
              .contains(company?.code),
        )
        .map(CompanyMapper.accountCompanyMapper)
        .toList();
  }

  @override
  Future<ContactUsModel?> getContactDetails() async {
    final partyAccountNumber = userInfoService.getPartyAccountNumber();
    final response = await _getPartyPrimaryManager(
      partyAccountNumber,
      client,
    );
    if (response.hasErrors() || response.data == null) {
      signup.LoggingService.logGraphQlFailure(
        EmrOnePortalTelemetry.kGetContactDetails,
        response,
        partyAccountNo: userInfoService.userInfo.partyAccountNumber,
        userId: userInfoService.userInfo.id,
      );
      if (!isErrorAllowed(response.errors)) {
        return null;
      }
    }

    final node = response.data?.account;
    return node?.toContactUsModel(
      appConfig.headOfficeAddresses[node.accountAddresses?.first?.countryCode],
      partyAccountNumber,
    );
  }

  @override
  Future<String?> getDefaultYardCode() async {
    final partyAccountNumber = userInfoService.getPartyAccountNumber();
    final response = await _getPartyPrimaryManager(
      partyAccountNumber,
      client,
    );
    if (response.hasErrors() || response.data == null) {
      signup.LoggingService.logGraphQlFailure(
        EmrOnePortalTelemetry.kGetContactDetails,
        response,
        partyAccountNo: userInfoService.userInfo.partyAccountNumber,
        userId: userInfoService.userInfo.id,
      );
      if (!isErrorAllowed(response.errors)) {
        return null;
      }
    }
    return response.data!.account.defaultYardCode;
  }

  @override
  Future<HomePageHybridModel> getHomePageModel({
    bool invertCanPost = true,
  }) async {
    if (userInfoService.userInfo.partyAccountNumber == null ||
        (userInfoService.userInfo.partyAccountNumber ?? '').startsWith('EMR')) {
      final response = await _getSignupModelForProspect(
        client,
      );

      final accountModel = AccountModel.fromSignupModel(
        response.data?.prospect.toSignupModel(
          signup.RunContext.portal,
          invertCanPost: invertCanPost,
        ),
      );

      return HomePageHybridModel(
        homePageModel: response.data?.prospect.toHomePageModel(
          locatedAtCountryId: accountModel?.locatedAtCountryCode ??
              PortalStrings.defaultCountry,
          invertCanPost: invertCanPost,
        ),
        accountModel: accountModel,
      );
    }

    final response = await _getSignupModel(
      client,
    );
    if (response.hasErrors() || response.data == null) {
      signup.LoggingService.logGraphQlFailure(
        EmrOnePortalTelemetry.kGetSignupModel,
        response,
        partyAccountNo: userInfoService.userInfo.partyAccountNumber,
        userId: userInfoService.userInfo.id,
      );

      if (!isErrorAllowed(response.errors)) {
        return HomePageHybridModel(
          homePageModel: null,
          accountModel: null,
        );
      }
    }

    final accountModel = AccountModel.fromSignupModel(
      response.data?.account.toSignupModel(
        signup.RunContext.portal,
        invertCanPost: invertCanPost,
      ),
    );

    return HomePageHybridModel(
      homePageModel: response.data?.account.toHomePageModel(
        locatedAtCountryId:
            accountModel?.locatedAtCountryCode ?? PortalStrings.defaultCountry,
        invertCanPost: invertCanPost,
      ),
      accountModel: accountModel,
    );
  }

  Future<GraphQLResponse<Query$GetAccountDetails>> _getAccountDetails(
    BaseClient client, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = Duration.zero,
    bool forceLoad = false,
  }) async {
    final accessToken = await userInfoService.getIdToken();
    return documentNodeQueryGetAccountDetails.execute(
      client,
      Query$GetAccountDetails.fromJson,
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: forceLoad,
      url: url,
      headers: getHeaders(accessToken),
    );
  }

  Future<GraphQLResponse<Query$GetPartyPrimaryManager>> _getPartyPrimaryManager(
    String partyAccountNo,
    BaseClient client, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = Duration.zero,
    bool forceLoad = false,
  }) async {
    final accessToken = await userInfoService.getIdToken();
    return documentNodeQueryGetPartyPrimaryManager.execute(
      client,
      Query$GetPartyPrimaryManager.fromJson,
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: forceLoad,
      url: url,
      headers: getHeaders(accessToken),
    );
  }

  Future<GraphQLResponse<coreapi.Query$GetSignupModel>> _getSignupModel(
    BaseClient client, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = Duration.zero,
    bool forceLoad = false,
  }) async {
    final accessToken = await userInfoService.getIdToken();
    return coreapi.documentNodeQueryGetSignupModel.execute(
      client,
      coreapi.Query$GetSignupModel.fromJson,
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: forceLoad,
      url: url,
      headers: getHeaders(accessToken),
    );
  }

  Future<GraphQLResponse<coreapi.Query$GetSignupModelForProspect>>
      _getSignupModelForProspect(
    BaseClient client, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = Duration.zero,
    bool forceLoad = false,
  }) async {
    final accessToken = await userInfoService.getIdToken();
    return coreapi.documentNodeQueryGetSignupModelForProspect.execute(
      client,
      coreapi.Query$GetSignupModelForProspect.fromJson,
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: forceLoad,
      url: url,
      headers: getHeaders(accessToken),
    );
  }

  static bool isErrorAllowed(List<GraphQLError>? errors) {
    final allowedErrorMessages = ['User not found'];
    final allowedPathErrorMessages = [
      'accountManagers',
      'primaryAccountManager',
    ];

    var isAllowedToProceed = false;

    for (final element in errors!) {
      final errorMessageExists = allowedErrorMessages.contains(element.message);

      if (errorMessageExists) {
        isAllowedToProceed = true;
      }

      if (!isAllowedToProceed) {
        //we check the path messages here to see if it's allowed to proceed
        if (element.path != null) {
          final pathErrorMessageExists =
              element.path!.any(allowedPathErrorMessages.contains);

          if (pathErrorMessageExists) {
            isAllowedToProceed = true;
          } else {
            return false;
          }
        }
      }
    }
    return isAllowedToProceed;
  }

  @override
  Future<bool?> getMarketIndicatorSetting() async {
    final token = await userInfoService.getIdToken(true);
    final response = await documentNodeQueryGetMarketIndicatorSettings.execute(
      client,
      Query$GetMarketIndicatorSettings.fromJson,
      url: url,
      headers: getHeaders(token),
    );
    if (response.hasErrors() || response.data == null) {
      return false;
    } else {
      return response.data?.account.settings.marketIndicatorEnabled;
    }
  }

  @override
  Future<String?> getDefaultTerritory() async {
    final token = await userInfoService.getIdToken(true);
    final response = await documentNodeQueryGetDefaultTerritory.execute(
      client,
      Query$GetDefaultTerritory.fromJson,
      url: url,
      headers: getHeaders(token),
    );
    if (response.hasErrors() || response.data == null) {
      return '';
    } else {
      return response.data!.account.primaryManager!.userInfo!.defaultTerritory;
    }
  }

  @override
  Future<String?> updateContactPreferences(AccountModel model) async {
    final token = await userInfoService.getIdToken(true);
    final response =
        await coreapi.documentNodeMutationUpdateSelfServeAccountAccount.execute(
      client,
      coreapi.Mutation$UpdateSelfServeAccountAccount.fromJson,
      variables: coreapi.Variables$Mutation$UpdateSelfServeAccountAccount(
        input: model.toUpdateContactPrefs(),
      ),
      url: url,
      headers: getHeaders(token),
    );

    if (response.data!.updateSelfServeAccountAccount.accountNumber != null &&
        (response.data!.updateSelfServeAccountAccount.errors.isEmpty)) {
      return response.data!.updateSelfServeAccountAccount.accountNumber;
    } else {
      return null;
    }
  }
}
