import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:http/http.dart';

class AccountService {
  AccountService({
    required this.runContext,
    required this.client,
    required this.userInfoService,
    required this.appConfig,
  }) {
    accountServiceInterface = runContext.isPortal
        ? AccountServiceRavenExternal(
            client: client,
            userInfoService: userInfoService,
            appConfig: appConfig,
            url: Uri.parse('${appConfig.primaryApiUrl}/graphql'),
          )
        : AccountServiceRavenInternal(
            client: client,
            userInfoService: userInfoService,
            appConfig: appConfig,
            url: Uri.parse('${appConfig.primaryApiUrl}/graphql'),
          );
  }

  final RunContext runContext;
  final BaseClient client;
  final CustomerUserInfoService userInfoService;
  final AppConfig appConfig;
  late final AccountServiceInterface accountServiceInterface;

  Future<CreateProspectAccountResponse> createAccount(
    SignupModel signupModel,
    String accountSource,
    String territoryId,
  ) async {
    return accountServiceInterface.createAccount(
      signupModel,
      accountSource,
      territoryId,
    );
  }

  Future<String?> convertProspectToRetailAccount(
    String accountCode,
    String userId,
  ) {
    return accountServiceInterface.convertProspectToRetailAccount(
      accountCode,
      userId,
    );
  }

  Future<String?> updatePaymentDetails(
    String accountNumber,
    PaymentDetailsModel model,
  ) {
    return accountServiceInterface.updatePaymentDetails(accountNumber, model);
  }

  Future<String?> getMediaApiUrlWithToken({
    required String fileId,
    String? partyAccountNo,
  }) async {
    return accountServiceInterface.getMediaApiUrlWithToken(
      fileId: fileId,
      partyAccountNo: partyAccountNo,
    );
  }

  Future<String?> getBankName({
    required String sortCode,
    required String accountNumber,
    required Enum$CountryId country,
  }) async {
    return accountServiceInterface.getBankName(
      sortCode: sortCode,
      accountNumber: accountNumber,
      country: country.toString(),
    );
  }

  Future<String?> uploadDocument(
    String accountNumber,
    UploadDocumentModel model,
    DateTime? ocrDetectedExpirationDate,
    String? issuedByCounty,
    String? locatedAtCountry,
  ) async {
    return accountServiceInterface.uploadDocument(
      accountNumber,
      model,
      ocrDetectedExpirationDate,
      issuedByCounty,
      locatedAtCountry,
    );
  }

  Future<String?> updateSelfServiceAccount(
    String accountNumber,
    UpdateSelfServeAccountRequest request,
  ) async {
    return accountServiceInterface.updateSelfServiceAccount(
      accountNumber,
      request,
    );
  }

  Future<List<Address>> getUKAddresses(String postCode) async {
    return accountServiceInterface.getUKAddresses(postCode);
  }

  Future<List<Address>> getUSAddresses(String postCode) async {
    return accountServiceInterface.getUSAddresses(postCode);
  }

  Future<SignupModel?> getSignupModel(
    String accountCode,
    RunContext runContext, {
    bool invertCanPost = true,
  }) {
    return accountServiceInterface.getSignupModel(
      accountCode,
      runContext,
      invertCanPost: invertCanPost,
    );
  }

  Future<String> generateCodeForQrCode(String accountId) {
    return accountServiceInterface.generateCodeForQrCode(accountId);
  }
}
