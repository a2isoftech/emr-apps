import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/graphql/graphql.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class PricelistService {
  PricelistService({
    required this.httpClient,
    required this.userInfoSvc,
    required this.accountService,
    required this.portalService,
    required this.appConfig,
  }) {
    try {
      _customerPortalApiUrl =
          Uri.parse('${appConfig.customerPortalApiUrl}/graphql');
    } catch (e) {
      LoggingService.logFailure(
        PortalStrings.remittance,
        e,
        partyAccountNo: userInfoSvc.getPartyAccountNumber(),
        userId: userInfoSvc.userInfo.id,
      );
    }
  }

  final Client httpClient;
  final CustomerUserInfoService userInfoSvc;
  final AccountServicePortal accountService;
  final PortalService portalService;
  late final Uri _customerPortalApiUrl;
  final AppConfig appConfig;

  Future<List<Yard>> getYardCodes(String countryShortName) async {
    final country = getCountryCode(countryShortName);
    return portalService.getYards(country);
  }

  Future<String?> defaultYard() async {
    return accountService.getDefaultYard();
  }

  Future<MarketIndicationModel?> getMarketIndicationPrices() async {
    final accessToken = await userInfoSvc.getIdToken(true);
    final defaultTerritory = await getDefaultTerritory();
    if (defaultTerritory!.isEmpty) {
      return null;
    }
    final response = await documentNodeQueryGetMarketPrices.execute(
      httpClient,
      Query$GetMarketPrices.fromJson,
      variables: Variables$Query$GetMarketPrices(
        productType: PortalStrings.defaultProductType,
        territoryCode: defaultTerritory,
        cutOffDate: DateTime(
          DateTime.now().year,
          DateTime.now().month - 2,
          DateTime.now().day,
        ),
      ),
      url: _customerPortalApiUrl,
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.hasErrors() || response.data?.marketPrice == null) {
      return null;
    } else {
      return MarketIndicationModel(
        updatedDate: response.data!.marketPrice!.updatedDate ?? DateTime.now(),
        currency: response.data!.marketPrice!.currency.getCurrencySymbol(),
        totalMWPValue: response.data!.marketPrice!.totalMWPValue,
        copperRates: Map.fromEntries(
          response.data!.marketPrice!.prices!.map(
            (price) => MapEntry(
              DateFormat('MMM').format(price.createdDate ?? DateTime.now()),
              price.amount,
            ),
          ),
        ),
      );
    }
  }

  Future<bool?> isMarketIndicatorEnabled() async {
    return accountService.isMarketIndicatorSetting();
  }

  Future<String?> getDefaultTerritory() async {
    return accountService.getDefaultTerritory();
  }

  Enum$CountryCode getCountryCode(String? countryShortName) {
    if (countryShortName!.isCountryUK()) {
      return Enum$CountryCode.UK;
    } else if (countryShortName.isCountryNL()) {
      return Enum$CountryCode.NL;
    } else {
      return Enum$CountryCode.US;
    }
  }
}
