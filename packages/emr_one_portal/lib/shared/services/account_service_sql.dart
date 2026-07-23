import 'package:collection/collection.dart';
import 'package:emr_account_registration/signup.dart' as signup;
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/graphql/cam_sql/graphql.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:http/http.dart';

class AccountServicePortalSql extends AccountServicePortalInterface {
  AccountServicePortalSql({
    required super.client,
    required super.userInfoService,
    required super.appConfig,
    required super.url,
  });

  @override
  Future<HomePageHybridModel> getHomePageModel({
    bool invertCanPost = true,
  }) async {
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
    final loactedAtCountryId = await StorageService.getLocatedAtCountryCode();

    final signupModel = toSignupModel(
      response.data?.account,
      locatedAtCountryId:
          loactedAtCountryId?.shortName ?? PortalStrings.defaultCountry,
      invertCanPost: invertCanPost,
    );
    return HomePageHybridModel(
      homePageModel: _toHomePageModel(
        response.data?.account,
        locatedAtCountryId:
            loactedAtCountryId?.shortName ?? PortalStrings.defaultCountry,
        invertCanPost: invertCanPost,
      ),
      accountModel: signupModel,
    );
  }

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

    return toAccountDetailsModel(response.data?.account, partyAccountNumber);
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

    return _toBankDetailsModel(response.data?.account);
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
    final countryCode = (node?.address?.countryId.name != null &&
            node?.address!.countryId.name != 'NONE')
        ? node?.address!.countryId.name
        : node?.accountContacts?.first?.contact?.address?.countryId.name;

    return _toContactUsModel(
      node,
      appConfig.headOfficeAddresses[countryCode],
      partyAccountNumber,
    );
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

    return (response.data?.account?.validForCompanies ?? [])
        .where(
          (company) => PortalComapnyCodeConstants.allowedCompanies
              .contains(company?.companyCode),
        )
        .map(accountCompanyMapper)
        .toList();
  }

  static Company accountCompanyMapper(
    Query$GetAccountCompanies$account$validForCompanies? source,
  ) {
    return Company(
      name: source!.fullName,
      companyCode: source.companyCode ?? '0',
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

  ContactUsModel _toContactUsModel(
    Query$GetPartyPrimaryManager$account? account,
    List<String>? headOfficeAddress,
    String partyAccountNumber,
  ) {
    final phone = headOfficeAddress!.lastOrNull!;

    final mainContact = account?.accountContacts
        ?.firstWhereOrNull(
          (element) =>
              element?.accountContactTypeId == Enum$AccountContactTypeId.MAIN,
        )
        ?.contact;

    headOfficeAddress.removeLast();
    final countryName = (account?.address?.countryId.name != null &&
            account?.address?.countryId.name != 'NONE')
        ? account?.address?.countryId.name
        : mainContact?.address?.countryId.name;

    final country = signup.CountryData.getCountryData(countryName ?? '');
    return ContactUsModel(
      partyAccountNumber: partyAccountNumber,
      accountName: _mapContactNameForContactUs(mainContact),
      email: account?.primaryAccountManager?.user?.emailAddress ??
          (country != null && country.shortName.isCountryNL()
              ? PortalStrings.netherlandAccountContactUsEmail
              : 'No Email Available'),
      accountManagerName:
          account?.primaryAccountManager?.user?.name ?? 'No Name Available',
      phone: country != null ? '${country.dialingCode} $phone' : phone,
      addresses: headOfficeAddress,
    );
  }

  static String _mapContactNameForContactUs(
    Query$GetPartyPrimaryManager$account$accountContacts$contact? contact,
  ) {
    var name = 'UNKNOWN';
    if (contact?.firstName != null && contact?.lastName != null) {
      name = '${contact?.firstName} ${contact?.lastName}';
    }
    return name;
  }

  BankDetails _toBankDetailsModel(Query$GetBankDetails$account? account) {
    final bankAccount = account?.bankAccounts
        ?.firstWhereOrNull((element) => element?.bankAccountNumber != null);
    return BankDetails(
      accountName: bankAccount?.accountHolderName ?? 'N/A',
      accountNumber: bankAccount?.bankAccountNumber ?? 'N/A',
      bankName: bankAccount?.bankName ?? 'N/A',
      iban: bankAccount?.ibanCode ?? 'N/A',
      paymentTerms: 'N/A',
      ref: bankAccount?.reference ?? 'N/A',
      sortCode: bankAccount?.sortCode ?? 'N/A',
      swift: bankAccount?.swiftCode ?? 'N/A',
    );
  }

  AccountDetailsModel toAccountDetailsModel(
    Query$GetAccountDetails$account? account,
    String partyAccountNumber,
  ) {
    final mainContact = account?.accountContacts
        ?.firstWhereOrNull(
          (element) =>
              element?.accountContactTypeId == Enum$AccountContactTypeId.MAIN,
        )
        ?.contact;
    final bankAccount = account?.bankAccounts
        ?.firstWhereOrNull((element) => element?.bankAccountNumber != null);
    return AccountDetailsModel(
      partyAccountNumber: partyAccountNumber,
      accountName: _mapContactName(mainContact),
      accountDetails: Account(
        address1: mainContact?.address?.address1 ?? 'N/A',
        address2: mainContact?.address?.address2 ?? 'N/A',
        address3: mainContact?.address?.address3 ?? 'N/A',
        contactEmail: _mapContactEmail(mainContact)!,
        contactName: _mapContactName(mainContact),
        countryCode: mainContact?.address?.countryId.name ?? 'N/A',
        county: mainContact?.address?.address5 ?? 'N/A',
        eoriNumber: '',
        faxNumber:
            _mapContactInfo(mainContact, Enum$ContactInformationTypeId.FAX)!,
        houseNumber: mainContact?.address?.address1 ?? 'N/A',
        jobTitle: 'N/A',
        mobileNumber: _mapContactTel(mainContact)!,
        postCode: mainContact?.address?.postCode ?? 'N/A',
        telephoneNumber: _mapContactTel(mainContact)!,
        town: mainContact?.address?.address4 ?? 'N/A',
        vatNumber: account?.businessDetails?.vatNumber ?? 'N/A',
        website: 'N/A',
      ),
      bankDetails: BankDetails(
        accountName: bankAccount?.accountHolderName ?? 'N/A',
        accountNumber: bankAccount?.bankAccountNumber ?? 'N/A',
        bankName: bankAccount?.bankName ?? 'N/A',
        iban: bankAccount?.ibanCode ?? 'N/A',
        paymentTerms:
            account?.businessDetails?.paymentTerm?.paymentMethod?.name ?? 'N/A',
        ref: bankAccount?.reference ?? 'N/A',
        sortCode: bankAccount?.sortCode ?? 'N/A',
        swift: bankAccount?.swiftCode ?? 'N/A',
      ),
    );
  }

  static String _mapContactName(
    Query$GetAccountDetails$account$accountContacts$contact? contact,
  ) {
    var name = 'UNKNOWN';
    if (contact?.firstName != null && contact?.lastName != null) {
      name = '${contact?.firstName} ${contact?.lastName}';
    }
    return name;
  }

  static String? _mapContactEmail(
    Query$GetAccountDetails$account$accountContacts$contact? contact,
  ) {
    final emailAddress = contact?.contactInformation?.firstWhereOrNull(
      (element) =>
          element?.contactInformationTypeId ==
          Enum$ContactInformationTypeId.EMAIL,
    );

    if (emailAddress != null) {
      return emailAddress.value ?? '';
    }
    return '';
  }

  static String? _mapContactInfo(
    Query$GetAccountDetails$account$accountContacts$contact? contact,
    Enum$ContactInformationTypeId type,
  ) {
    final emailAddress = contact?.contactInformation?.firstWhereOrNull(
      (element) => element?.contactInformationTypeId == type,
    );

    if (emailAddress != null) {
      return emailAddress.value ?? '';
    }
    return '';
  }

  static String? _mapContactTel(
    Query$GetAccountDetails$account$accountContacts$contact? contact,
  ) {
    final phoneNo = contact?.contactInformation?.firstWhereOrNull(
      (element) =>
          element?.contactInformationTypeId ==
          Enum$ContactInformationTypeId.PHONE,
    );
    final mobileNo = contact?.contactInformation?.firstWhereOrNull(
      (element) =>
          element?.contactInformationTypeId ==
          Enum$ContactInformationTypeId.MOBILE,
    );

    if (phoneNo != null) {
      return phoneNo.value;
    } else if (mobileNo != null) {
      return mobileNo.value;
    } else {
      return '';
    }
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

  Future<GraphQLResponse<Query$GetSignupModel>> _getSignupModel(
    BaseClient client, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = Duration.zero,
    bool forceLoad = false,
  }) async {
    final accessToken = await userInfoService.getIdToken();
    return documentNodeQueryGetSignupModel.execute(
      client,
      Query$GetSignupModel.fromJson,
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

  AccountModel toSignupModel(
    Query$GetSignupModel$account? account, {
    required String locatedAtCountryId,
    bool invertCanPost = true,
  }) {
    return AccountModel(
      localeCountryCode: 'UK',
      localeLanguageCode: 'UK',
    );
  }

  HomePageModel _toHomePageModel(
    Query$GetSignupModel$account? account, {
    required String locatedAtCountryId,
    bool invertCanPost = true,
  }) {
    final mainContact = account?.accountContacts
        ?.firstWhereOrNull(
          (element) =>
              element?.accountContactTypeId == Enum$AccountContactTypeId.MAIN,
        )
        ?.contact;

    final mobileContactInfo = mainContact?.contactInformation?.firstWhereOrNull(
      (element) =>
          element?.contactInformationTypeId ==
          Enum$ContactInformationTypeId.MOBILE,
    );

    final proofOfId = mainContact?.documents?.firstWhereOrNull(
      (e) =>
          e?.documentTypeId == Enum$DocumentTypeId.PHOTO_ID &&
          (e?.active ?? false) == true,
    );
    final proofOfAddress = mainContact?.documents?.firstWhereOrNull(
      (e) =>
          e?.documentTypeId == Enum$DocumentTypeId.ADDRESS_ID &&
          (e?.active ?? false) == true,
    );
    final proofOfIdIsUKDrivingLicense = proofOfId != null &&
        locatedAtCountryId.isCountryUK() &&
        proofOfId.documentSubTypeId ==
            Enum$DocumentSubTypeId.UK_DRIVING_LICENSE;
    return HomePageModel(
      firstName: mainContact?.firstName ?? '',
      lastName: mainContact?.lastName ?? '',
      mobileNumber: mobileContactInfo?.value ?? '',
      emailAddress: mainContact?.contactInformation
              ?.firstWhereOrNull(
                (element) =>
                    element?.contactInformationTypeId ==
                    Enum$ContactInformationTypeId.EMAIL,
              )
              ?.value ??
          '',
      proofOfId: ProofModel(
        expiryDateString: proofOfId?.expirationDate.toString(),
      ),
      proofOfAddress: ProofModel(
        expiryDateString: proofOfIdIsUKDrivingLicense
            ? proofOfId.expirationDate.toString()
            : proofOfAddress?.expirationDate.toString(),
      ),
      locatedAtCountry: locatedAtCountryId,
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
    return response.data!.account?.defaultYardCode;
  }

  @override
  Future<bool?> getMarketIndicatorSetting() {
    throw UnimplementedError();
  }

  @override
  Future<String?> getDefaultTerritory() {
    throw UnimplementedError();
  }

  @override
  Future<String?> updateContactPreferences(AccountModel model) {
    // TODO: implement updateContactPreferences
    throw UnimplementedError();
  }
}
