import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:http/http.dart';

abstract class AccountServiceInterface {
  AccountServiceInterface({
    required this.client,
    required this.userInfoService,
    required this.appConfig,
    required this.url,
  });

  final BaseClient client;
  final CustomerUserInfoService userInfoService;
  final AppConfig appConfig;
  final Uri url;

  Map<String, String> getHeaders(String? token) {
    return <String, String>{
      'Authorization': 'Bearer $token',
      'Ocp-Apim-Subscription-Key': appConfig.firebaseRemoteConfig.getString(
        ConfigKeys.apimKeyName,
      ),
    };
  }

  Future<CreateProspectAccountResponse> createAccount(
    SignupModel signupModel,
    String accountSource,
    String territoryId,
  );

  Future<String?> convertProspectToRetailAccount(
    String accountCode,
    String userId,
  );

  Future<String?> updatePaymentDetails(
    String accountNumber,
    PaymentDetailsModel model,
  );

  Future<String?> getMediaApiUrlWithToken({
    required String fileId,
    String? partyAccountNo,
  });

  Future<String?> getBankName({
    required String sortCode,
    required String accountNumber,
    required String country,
  });

  Future<String?> uploadDocument(
    String accountNumber,
    UploadDocumentModel model,
    DateTime? ocrDetectedExpirationDate,
    String? issuedByCounty,
    String? locatedAtCountry,
  );

  Future<String?> updateSelfServiceAccount(
    String accountNumber,
    UpdateSelfServeAccountRequest request,
  );

  Future<List<Address>> getUKAddresses(String postCode);

  Future<List<Address>> getUSAddresses(String postCode);

  List<DocumentSubType> getAddressDocumentSubTypes(String countryCode);

  List<DocumentSubType> getIDDocumentSubTypes(String countryCode);

  Future<SignupModel?> getSignupModel(
    String accountCode,
    RunContext runContext, {
    bool invertCanPost = true,
  });

  Future<String> generateCodeForQrCode(String accountId);
}
