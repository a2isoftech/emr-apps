import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/graphql/queries/get_yards.graphql.dart';
import 'package:emr_one_portal_tickets/graphql/schema.graphql.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';

class PortalStandingDataService extends StandingDataInterface {
  PortalStandingDataService({
    required this.httpClient,
    required this.userInfoSvc,
    required AppConfig appConfig,
    required this.standingDataService,
  }) {
    try {
      _url = Uri.parse('${appConfig.customerPortalApiUrl}/graphql');
    } catch (e) {
      LoggingService.logFailure(
        PortalStrings.signUp,
        e,
      );
    }
  }
  List<Yard>? _yards;
  final Client httpClient;
  final CustomerUserInfoService userInfoSvc;
  final StandingDataService standingDataService;
  late final Uri _url;

  @override
  Future<List<Yard>> populateYard(
    String countryCode,
    String selectYardText,
  ) async {
    if (_yards == null) {
      try {
        final accessToken = await userInfoSvc.getIdToken(true);
        final response = await documentNodeQueryYardDetails.execute(
          httpClient,
          Query$YardDetails.fromJson,
          variables: Variables$Query$YardDetails(
            countryCode: AccountRegistrationEnumService.stringToEnum(
              countryCode,
              Enum$CountryCode.values,
            ),
          ),
          url: _url,
          headers: <String, String>{
            'Authorization': 'Bearer $accessToken',
          },
        );

        if (response.hasErrors() || response.data?.yards == null) {
          _yards = standingDataService.populateDefaultYards(
            selectYardText,
          );
        } else {
          _yards =
              response.data?.yards.map(YardMappings.yardModelMapper).toList() ??
                  [];
        }
      } catch (err) {
        debugPrint(err.toString());
        _yards = standingDataService.populateDefaultYards(
          selectYardText,
        );
      }
    }

    return _yards!;
  }

  @override
  List<Yard> get yards => _yards ?? [];
}
