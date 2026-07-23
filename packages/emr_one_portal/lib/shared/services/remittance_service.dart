import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/networking/graphql/extensions.dart';
import 'package:emr_one_portal/portal_constants.dart';
import 'package:emr_one_portal_tickets/emr_one_portal_tickets.dart';
import 'package:http/http.dart';

class RemittanceService {
  RemittanceService({
    required this.httpClient,
    required this.userInfoSvc,
    required AppConfig appConfig,
  }) {
    try {
      _url = Uri.parse('${appConfig.customerPortalApiUrl}/graphql');
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
  late final Uri _url;

  Future<String?> downloadFile(
    DateTime paidDate,
  ) async {
    final accessToken = await userInfoSvc.getIdToken(true);
    final response = await documentNodeQuerysupplierRemittance.execute(
      httpClient,
      Query$supplierRemittance.fromJson,
      variables: Variables$Query$supplierRemittance(
        paidDate: paidDate,
      ),
      url: _url,
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    return response.data?.supplierRemittance;
  }
}
