import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:http/http.dart';

abstract class AccountServicePortalInterface {
  AccountServicePortalInterface({
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

  Future<HomePageHybridModel> getHomePageModel({
    bool invertCanPost = true,
  });

  Future<AccountDetailsModel?> getAccountDetails();

  Future<BankDetails?> getBankDetails({
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = Duration.zero,
    bool forceLoad = false,
  });

  Future<ContactUsModel?> getContactDetails();

  Future<List<Company>> getCompaniesList();

  Future<String?> getDefaultYardCode();

  Future<bool?> getMarketIndicatorSetting();

  Future<String?> getDefaultTerritory();

  Future<String?> updateContactPreferences(AccountModel model);
}
