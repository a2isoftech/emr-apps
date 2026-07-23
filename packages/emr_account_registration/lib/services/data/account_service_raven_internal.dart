import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:http/http.dart';

class AccountServiceRavenInternal extends AccountServiceInterface {
  AccountServiceRavenInternal({
    required super.client,
    required super.userInfoService,
    required super.appConfig,
    required super.url,
  });

  @override
  Future<String?> convertProspectToRetailAccount(
    String accountCode,
    String userId,
  ) async {
    final token = await userInfoService.getIdToken(true);
    final response =
        await documentNodeMutationConvertProspectToRetailAccountInternal
            .execute(
              client,
              Mutation$ConvertProspectToRetailAccountInternal.fromJson,
              variables:
                  Variables$Mutation$ConvertProspectToRetailAccountInternal(
                    accountCode: accountCode,
                    userId: userId,
                  ),
              url: url,
              headers: getHeaders(token),
            );

    if (response.data!.convertProspectToRetailAccountInternal.accountNumber !=
        null) {
      return (response
                  .data!
                  .convertProspectToRetailAccountInternal
                  .accountNumber ??
              '')
          .replaceAll('"', '');
    } else {
      return null;
    }
  }

  @override
  Future<CreateProspectAccountResponse> createAccount(
    SignupModel signupModel,
    String accountSource,
    String territoryId,
  ) async {
    final token = await userInfoService.getIdToken(true);

    final response =
        await documentNodeMutationCreateProspectRetailAccountInternal.execute(
          client,
          Mutation$CreateProspectRetailAccountInternal.fromJson,
          variables: Variables$Mutation$CreateProspectRetailAccountInternal(
            input: getProspectAccountInput(
              signupModel,
              accountSource,
              territoryId,
            ),
          ),
          url: url,
          headers: getHeaders(token),
        );

    if ((response.data?.createProspectAccountInternal.errors ?? [])
        .hasDuplicateAccountError()) {
      return CreateProspectAccountResponse(
        accountNumber: null,
        userId: null,
        showErrorToUser: true,
        hasDuplicateAccountCode: true,
        errorCode: AccountRegistrationSettings.duplicateAccountCode,
      );
    }

    if (response.data?.createProspectAccountInternal.accountNumber != null) {
      return CreateProspectAccountResponse(
        accountNumber: response
            .data!
            .createProspectAccountInternal
            .accountNumber!
            .replaceAll('"', ''),
        userId: response.data!.createProspectAccountInternal.userId,
      );
    } else {
      return CreateProspectAccountResponse(
        accountNumber: null,
        userId: null,
        errorMessage: AccountRegistrationRemoteConfigService
            .errorCodes[AccountRegistrationSettings.noAccountFound],
      );
    }
  }

  @override
  List<DocumentSubType> getAddressDocumentSubTypes(String countryCode) {
    if (countryCode.isCountryUS()) {
      return [];
    } else {
      return [
        DocumentSubType(
          name: Enum$IdentificationSubType.UK_DRIVING_LICENSE.displayTitle(
            countryCode,
          ),
          value: Enum$IdentificationSubType.UK_DRIVING_LICENSE,
          recommended: true,
        ),
        DocumentSubType(
          name: Enum$IdentificationSubType.MORTGAGE_STATEMENT.displayTitle(
            countryCode,
          ),
          value: Enum$IdentificationSubType.MORTGAGE_STATEMENT,
        ),
        DocumentSubType(
          name: Enum$IdentificationSubType.BANK_OR_BUILDING_SOCIETY_STATEMENT
              .displayTitle(countryCode),
          value: Enum$IdentificationSubType.BANK_OR_BUILDING_SOCIETY_STATEMENT,
        ),
        DocumentSubType(
          name: Enum$IdentificationSubType.CREDIT_OR_DEBIT_CARD_STATEMENT
              .displayTitle(countryCode),
          value: Enum$IdentificationSubType.CREDIT_OR_DEBIT_CARD_STATEMENT,
        ),
        DocumentSubType(
          name: Enum$IdentificationSubType.COUNCIL_TAX_DEMAND_LETTER
              .displayTitle(countryCode),
          value: Enum$IdentificationSubType.COUNCIL_TAX_DEMAND_LETTER,
        ),
        DocumentSubType(
          name: Enum$IdentificationSubType.UTILITY_BILL.displayTitle(
            countryCode,
          ),
          value: Enum$IdentificationSubType.UTILITY_BILL,
        ),
        DocumentSubType(
          name: Enum$IdentificationSubType.HMRC_CORRESPONDANCE.displayTitle(
            countryCode,
          ),
          value: Enum$IdentificationSubType.HMRC_CORRESPONDANCE,
        ),
        DocumentSubType(
          name: 'TV license',
          value: Enum$IdentificationSubType.UTILITY_BILL,
        ),
      ];
    }
  }

  @override
  Future<String?> getBankName({
    required String sortCode,
    required String accountNumber,
    required String country,
  }) async {
    final accessToken = await userInfoService.getIdToken();

    final response = await documentNodeQueryValidateBankAccountInternal.execute(
      client,
      Query$ValidateBankAccountInternal.fromJson,
      variables: Variables$Query$ValidateBankAccountInternal(
        sortCode: sortCode,
        accountNumber: accountNumber,
        country:
            AccountRegistrationEnumService.convertToCountryId(country) ??
            Enum$CountryId.$unknown,
      ),
      url: url,
      headers: getHeaders(accessToken),
    );

    if (response.hasErrors() || response.data == null) {
      LoggingService.logGraphQlFailure(
        AccountRegistrationTelemetry.kValidateBankAccount,
        response,
        partyAccountNo: accountNumber,
      );
      if (!isErrorAllowed(response.errors)) {
        return null;
      }
    }

    return response.data!.validatedBankAccountInternal?.isCorrect ?? false
        ? (response.data!.validatedBankAccountInternal?.bank ?? '')
        : null;
  }

  @override
  List<DocumentSubType> getIDDocumentSubTypes(String countryCode) {
    if (countryCode.isCountryUS()) {
      return [
        DocumentSubType(
          name: Enum$IdentificationSubType.USA_DRIVER_LICENCE.displayTitle(
            countryCode,
          ),
          value: Enum$IdentificationSubType.USA_DRIVER_LICENCE,
          recommended: true,
        ),
        DocumentSubType(
          name: 'State, Local, or Tribal ID with a Photo',
          value: Enum$IdentificationSubType.OTHER,
        ),
        DocumentSubType(
          name: 'Military ID with a Photo',
          value: Enum$IdentificationSubType.OTHER,
        ),
        DocumentSubType(
          name: 'Federal ID with a Photo',
          value: Enum$IdentificationSubType.OTHER,
        ),
        DocumentSubType(
          name:
              'Other ID with a Photo (Including Foreign Identification Cards)',
          value: Enum$IdentificationSubType.OTHER,
        ),
      ];
    } else {
      return [
        DocumentSubType(
          name: Enum$IdentificationSubType.UK_DRIVING_LICENSE.displayTitle(
            countryCode,
          ),
          value: Enum$IdentificationSubType.UK_DRIVING_LICENSE,
          recommended: true,
        ),
        DocumentSubType(
          name: Enum$IdentificationSubType.UKEUEEA_PASSPORT.displayTitle(
            countryCode,
          ),
          value: Enum$IdentificationSubType.UKEUEEA_PASSPORT,
        ),
        DocumentSubType(
          name: Enum$IdentificationSubType.BIOMETRIC_IMMIGRATION_DOCUMENT
              .displayTitle(countryCode),
          value: Enum$IdentificationSubType.BIOMETRIC_IMMIGRATION_DOCUMENT,
        ),
        DocumentSubType(
          name: Enum$IdentificationSubType.EU_NATIONAL_ID_CARD.displayTitle(
            countryCode,
          ),
          value: Enum$IdentificationSubType.EU_NATIONAL_ID_CARD,
        ),
        DocumentSubType(
          name: Enum$IdentificationSubType.UK_FIREARM_LICENSE.displayTitle(
            countryCode,
          ),
          value: Enum$IdentificationSubType.UK_FIREARM_LICENSE,
        ),
      ];
    }
  }

  @override
  Future<String?> getMediaApiUrlWithToken({
    required String fileId,
    String? partyAccountNo,
  }) async {
    final accessToken = await userInfoService.getIdToken();

    final response = await documentNodeQueryGetMediaApiSasTokenInternal.execute(
      client,
      Query$GetMediaApiSasTokenInternal.fromJson,
      variables: Variables$Query$GetMediaApiSasTokenInternal(
        fname: fileId,
        partyAccountNo:
            partyAccountNo ?? userInfoService.getPartyAccountNumber(),
      ),
      url: url,
      headers: getHeaders(accessToken),
    );

    if (response.hasErrors() || response.data == null) {
      LoggingService.logGraphQlFailure(
        AccountRegistrationTelemetry.kGetMediaApiUrlWithToken,
        response,
        partyAccountNo: userInfoService.userInfo.partyAccountNumber,
        userId: userInfoService.userInfo.id,
      );
      if (!isErrorAllowed(response.errors)) {
        return null;
      }
    }

    return response.data!.mediaApiUrlWithTokenInternal;
  }

  Input$CreateProspectRetailAccountInput getProspectAccountInput(
    SignupModel signupModel,
    String accountSource,
    String territoryId,
  ) {
    final industryGroups = JourneyController.industryGroups;
    return Input$CreateProspectRetailAccountInput(
      canEmail: signupModel.canEmail ?? false,
      canPhone: signupModel.canPhone ?? false,
      canPost: (signupModel.canPost ?? false),
      canSms: signupModel.canSms ?? false,
      email: signupModel.emailAddress ?? '',
      firstName: signupModel.firstName!,
      lastName: signupModel.lastName!,
      mobileNumber: (signupModel.phoneNumber ?? '').isNotEmpty
          ? (signupModel.dialingCode ?? '') + (signupModel.phoneNumber ?? '')
          : '',
      industryGroupType:
          (industryGroups.containsKey(signupModel.role)
              ? industryGroups[signupModel.role]
              : signupModel.role) ??
          '',
      visitFrequency: signupModel.frequency!,
      country:
          AccountRegistrationEnumService.convertToCountryId(
            signupModel.phoneNumberCountryCode ??
                signupModel.getLocatedAtCountryCode(),
          ) ??
          Enum$CountryId.$unknown,
      locatedAtCountry: AccountRegistrationEnumService.convertToCountryId(
        signupModel.getLocatedAtCountryCode(),
      ),
      territoryId: territoryId,
      accountSource:
          EnumService.stringToEnum(accountSource, Enum$AccountSource.values) ??
          Enum$AccountSource.NONE,
      defaultYardCode: signupModel.yardCode ?? '',
      profession: JourneyController.roles.entries
          .firstWhere((element) => element.value == signupModel.role)
          .key,
    );
  }

  @override
  Future<List<Address>> getUKAddresses(String postCode) async {
    final token = await userInfoService.getIdToken(true);
    final response = await documentNodeQueryGetAddresses.execute(
      client,
      Query$GetAddresses.fromJson,
      variables: Variables$Query$GetAddresses(
        searchText: postCode,
        countryId: Enum$CountryId.UK,
      ),
      url: url,
      headers: getHeaders(token),
    );
    if (response.data != null) {
      return response.data!.lookupAddress
          .map(
            (e) => Address(
              address1: e.address1,
              address2: e.address2,
              address3: e.address3,
              address4: e.address4,
              address5: e.address5,
              address6: e.address6,
            ),
          )
          .toList();
    }
    return [];
  }

  @override
  Future<List<Address>> getUSAddresses(String postCode) async {
    final token = await userInfoService.getIdToken(true);
    final response = await documentNodeQueryGetAddresses.execute(
      client,
      Query$GetAddresses.fromJson,
      variables: Variables$Query$GetAddresses(
        searchText: postCode,
        countryId: Enum$CountryId.US,
      ),
      url: url,
      headers: getHeaders(token),
    );
    if (response.data != null) {
      return response.data!.lookupAddress
          .map(
            (e) => Address(
              address1: e.address1,
              address2: e.address2,
              address3: e.address3,
              address4: e.address4,
              address5: e.address5,
              address6: e.address6,
            ),
          )
          .toList();
    }
    return [];
  }

  Input$UpdatePaymentDetailsInput toCreateBankAccountInput(
    PaymentDetailsModel model,
  ) {
    return Input$UpdatePaymentDetailsInput(
      accountHolderName: model.accountHoldername ?? '',
      bankAccountNumber: model.bankAccountNumber ?? '',
      sortCode: model.sortCode ?? '',
      enableCelToCashCheque: model.enableCel ?? false,
      agreeToSecoreTnc: model.agreeToSecoreTnc ?? false,
      signatureFileId: model.signatureFileId,
      signatureFileName: model.signatureFileName,
      signatureFilePath: model.signatureFilePath,
      agreeToLegalTnC: model.agreeToLegalTnc ?? false,
    );
  }

  @override
  Future<String?> updatePaymentDetails(
    String accountNumber,
    PaymentDetailsModel model,
  ) async {
    final token = await userInfoService.getIdToken(true);
    final response = await documentNodeMutationUpdatePaymentDetailsInternal
        .execute(
          client,
          Mutation$UpdatePaymentDetailsInternal.fromJson,
          variables: Variables$Mutation$UpdatePaymentDetailsInternal(
            accountNumber: accountNumber,
            input: toCreateBankAccountInput(model),
          ),
          url: url,
          headers: getHeaders(token),
        );

    if (response.data!.updatePaymentDetailsInternal!.accountNumber != null &&
        (response.data!.updatePaymentDetailsInternal!.errors.isEmpty)) {
      return response.data!.updatePaymentDetailsInternal!.accountNumber;
    } else {
      return null;
    }
  }

  @override
  Future<String?> updateSelfServiceAccount(
    String accountNumber,
    UpdateSelfServeAccountRequest request,
  ) async {
    final token = await userInfoService.getIdToken(true);
    final model = Input$UpdateSelfServeAccountInput(
      address1: request.address1 ?? '',
      address2: request.address2 ?? '',
      address3: request.address3 ?? '',
      canEmail: request.canEmail,
      canPhone: request.canPhone,
      canPost: request.canPost,
      canSms: request.canSms,
      country: AccountRegistrationEnumService.convertToCountryId(
        request.country ?? AccountRegistrationStrings.defaultCountry,
      ),
      county: request.county ?? '',
      dateOfBirth: request.dateOfBirth,
      eyeColour: request.eyeColour,
      firstName: request.firstName ?? '',
      height: request.height,
      lastName: request.lastName ?? '',
      postCode: request.postCode ?? '',
      title: request.title ?? '',
    );
    final response = await documentNodeMutationUpdateSelfServeAccountInternal
        .execute(
          client,
          Mutation$UpdateSelfServeAccountInternal.fromJson,
          variables: Variables$Mutation$UpdateSelfServeAccountInternal(
            accountNumber: accountNumber,
            input: model,
          ),
          url: url,
          headers: getHeaders(token),
        );

    if (response.data!.updateSelfServeAccountInternal.accountNumber != null &&
        (response.data!.updateSelfServeAccountInternal.errors.isEmpty)) {
      return response.data!.updateSelfServeAccountInternal.accountNumber;
    } else {
      return null;
    }
  }

  @override
  Future<String?> uploadDocument(
    String accountNumber,
    UploadDocumentModel model,
    DateTime? ocrDetectedExpirationDate,
    String? issuedByCounty,
    String? locatedAtCountry,
  ) async {
    final token = await userInfoService.getIdToken(true);
    final response = await documentNodeMutationCreateDocumentInternal.execute(
      client,
      Mutation$CreateDocumentInternal.fromJson,
      variables: Variables$Mutation$CreateDocumentInternal(
        accountNumber: accountNumber,
        input: model.toCreateUploadDocumentInput(
          ocrDetectedExpirationDate,
          issuedByCounty,
        ),
      ),
      url: url,
      headers: getHeaders(token),
    );

    if (response.data!.createDocumentInternal!.accountNumber != null &&
        (response.data!.createDocumentInternal!.errors.isEmpty)) {
      return response.data!.createDocumentInternal!.accountNumber;
    } else {
      return null;
    }
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
          final pathErrorMessageExists = element.path!.any(
            allowedPathErrorMessages.contains,
          );

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
  Future<SignupModel?> getSignupModel(
    String accountCode,
    RunContext runContext, {
    bool invertCanPost = true,
  }) async {
    if (accountCode.startsWith('EMR')) {
      final response = await _getSignupModelForProspect(accountCode, client);
      if (response.hasErrors() || response.data == null) {
        LoggingService.logGraphQlFailure(
          AccountRegistrationTelemetry.kGetSignupModel,
          response,
          partyAccountNo: userInfoService.userInfo.partyAccountNumber,
          userId: userInfoService.userInfo.id,
        );

        if (!isErrorAllowed(response.errors)) {
          return null;
        }
      }

      return response.data?.prospectInternal.toSignupModel(
        runContext,
        invertCanPost: invertCanPost,
      );
    } else {
      final response = await _getSignupModel(accountCode, client);
      if (response.hasErrors() || response.data == null) {
        LoggingService.logGraphQlFailure(
          AccountRegistrationTelemetry.kGetSignupModel,
          response,
          partyAccountNo: userInfoService.userInfo.partyAccountNumber,
          userId: userInfoService.userInfo.id,
        );

        if (!isErrorAllowed(response.errors)) {
          return null;
        }
      }

      return response.data?.accountInternal.toSignupModel(
        runContext,
        invertCanPost: invertCanPost,
        userId: runContext.isPortal ? userInfoService.userInfo.id : '',
      );
    }
  }

  Future<GraphQLResponse<Query$GetSignupModelForProspectInternal>>
  _getSignupModelForProspect(
    String accountCode,
    BaseClient client, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = Duration.zero,
    bool forceLoad = false,
  }) async {
    final accessToken = await userInfoService.getIdToken(true);
    return documentNodeQueryGetSignupModelForProspectInternal.execute(
      client,
      Query$GetSignupModelForProspectInternal.fromJson,
      variables: Variables$Query$GetSignupModelForProspectInternal(
        accountCode: accountCode,
      ),
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: forceLoad,
      url: url,
      headers: getHeaders(accessToken),
    );
  }

  Future<GraphQLResponse<Query$GetSignupModelInternal>> _getSignupModel(
    String accountCode,
    BaseClient client, {
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = Duration.zero,
    bool forceLoad = false,
  }) async {
    final accessToken = await userInfoService.getIdToken(true);
    return documentNodeQueryGetSignupModelInternal.execute(
      client,
      Query$GetSignupModelInternal.fromJson,
      variables: Variables$Query$GetSignupModelInternal(
        accountCode: accountCode,
      ),
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: forceLoad,
      url: url,
      headers: getHeaders(accessToken),
    );
  }

  @override
  Future<String> generateCodeForQrCode(String accountId) async {
    // TODO: implement generateCodeForQrCode
    throw UnimplementedError();

    ////TODO: to be added in next PR

    //     query GenerateCodeForQrLogin($accountId : String!){
    //   generateCodeForQrCode(accountId: $accountId)
    // }

    // final accessToken = await userInfoService.getIdToken(true);
    // final response = await documentNodeQueryGenerateCodeForQrLogin.execute(
    //   client,
    //   Query$GenerateCodeForQrLogin.fromJson,
    //   variables: Variables$Query$GenerateCodeForQrLogin(accountId: accountId),
    //   url: url,
    //   headers: getHeaders(accessToken),
    // );

    // return response.data?.generateCodeForQrCode ?? '';
  }
}
