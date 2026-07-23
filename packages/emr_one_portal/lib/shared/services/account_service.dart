import 'package:emr_account_registration/signup.dart' as signup;
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal/shared/services/account_service_raven.dart';
import 'package:emr_one_portal/shared/services/account_service_sql.dart';
import 'package:http/http.dart';

class AccountServicePortal {
  AccountServicePortal({
    required this.client,
    required this.userInfoService,
    required this.appConfig,
  }) {
    final useCamSql = PortalRemoteConfigService.useCamSql;

    accountServiceInterface = useCamSql
        ? AccountServicePortalSql(
            client: client,
            userInfoService: userInfoService,
            appConfig: appConfig,
            url: Uri.parse(
              PortalRemoteConfigService.camSqlUrl,
            ),
          )
        : AccountServicePortalRaven(
            client: client,
            userInfoService: userInfoService,
            appConfig: appConfig,
            url: Uri.parse('${appConfig.primaryApiUrl}/graphql'),
          );
  }

  final BaseClient client;
  final signup.CustomerUserInfoService userInfoService;
  final AppConfig appConfig;
  late final AccountServicePortalInterface accountServiceInterface;

  Future<HomePageHybridModel> getHomePageModel({
    bool invertCanPost = true,
  }) async {
    return accountServiceInterface.getHomePageModel(
      invertCanPost: invertCanPost,
    );
  }

  Future<AccountDetailsModel?> getAccountDetails() async {
    return accountServiceInterface.getAccountDetails();
  }

  Future<BankDetails?> getBankDetails({
    EmrCacheProvider? cacheProvider,
    Duration cacheTtl = Duration.zero,
    bool forceLoad = false,
  }) async {
    return accountServiceInterface.getBankDetails(
      cacheProvider: cacheProvider,
      cacheTtl: cacheTtl,
      forceLoad: forceLoad,
    );
  }

  Future<ContactUsModel?> getContactDetails() async {
    return accountServiceInterface.getContactDetails();
  }

  Future<List<Company>> getCompaniesList() async {
    return accountServiceInterface.getCompaniesList();
  }

  Future<String?> getDefaultYard() async {
    return accountServiceInterface.getDefaultYardCode();
  }

  Future<bool?> isMarketIndicatorSetting() async {
    return accountServiceInterface.getMarketIndicatorSetting();
  }

  Future<String?> getDefaultTerritory() async {
    return accountServiceInterface.getDefaultTerritory();
  }

  Future<String?> updateContactPreferences(AccountModel model) async {
    return accountServiceInterface.updateContactPreferences(model);
  }
}
