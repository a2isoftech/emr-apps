import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/emr_one_portal_tickets.dart';
import 'package:http/http.dart';

class SupplierPortalService {
  SupplierPortalService({
    required this.httpClient,
    required this.userInfoService,
    required AppConfig appConfig,
  }) {
    try {
      _url = Uri.parse('${appConfig.customerPortalApiUrl}/graphql');
    } catch (_) {}
  }
  final Client httpClient;
  final CustomerUserInfoService userInfoService;
  late final Uri _url;

  Future<List<ScheduledPayment>> getNextScheduledPaymentsDetails() async {
    final accessToken = await userInfoService.getIdToken();
    var hasNextPage = false;
    String? endCursor;
    var invoices = <ScheduledPayment>[];
    do {
      final response = await documentNodeQueryGetStatements.execute(
        httpClient,
        Query$GetStatements.fromJson,
        variables: Variables$Query$GetStatements(
          statementStatus: Enum$StatementStatusInput.OUTSTANDING,
          after: endCursor,
        ),
        url: _url,
        headers: <String, String>{
          'Authorization': 'Bearer $accessToken',
        },
      );
      final newData = response.data?.supplierStatements?.nodes!
              .where(
                (e) => e.status == Enum$InvoiceStatus.SCHEDULED_FOR_PAYMENT,
              )
              .map(ScheduledPaymentMapper.scheduledPaymentMapper)
              .toList() ??
          [];
      invoices = [...invoices, ...newData];
      hasNextPage =
          response.data?.supplierStatements?.pageInfo.hasNextPage ?? false;
      endCursor = response.data?.supplierStatements?.pageInfo.endCursor;
    } while (hasNextPage);

    return invoices;
  }
}
