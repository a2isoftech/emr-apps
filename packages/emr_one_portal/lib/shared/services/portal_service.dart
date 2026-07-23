import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/emr_one_portal_tickets.dart';
import 'package:emr_one_portal_tickets/graphql/queries/get_yards.graphql.dart';
import 'package:http/http.dart';

class PortalService {
  PortalService({
    required this.httpClient,
    required this.userInfoSvc,
    required AppConfig appConfig,
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

  final Client httpClient;
  final CustomerUserInfoService userInfoSvc;
  late final Uri _url;

  Future<List<Yard>> getYards([Enum$CountryCode? countryCode]) async {
    final accessToken = await userInfoSvc.getIdToken(true);
    final response = await documentNodeQueryYardDetails.execute(
      httpClient,
      Query$YardDetails.fromJson,
      variables: Variables$Query$YardDetails(
        countryCode: countryCode,
      ),
      url: _url,
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.hasErrors() || response.data?.yards == null) {
      return [];
    } else {
      return response.data?.yards.map(YardMappings.yardModelMapper).toList() ??
          [];
    }
  }

  Future<List<Company>> getCompaniesForUserInvoices() async {
    final accessToken = await userInfoSvc.getIdToken(true);
    var hasNextPage = false;
    String? endCursor;
    var companies = <Company>[];
    do {
      final response = await documentNodeQuerygetInvoiceLinkedCompanies.execute(
        httpClient,
        Query$getInvoiceLinkedCompanies.fromJson,
        variables: Variables$Query$getInvoiceLinkedCompanies(
          after: endCursor,
        ),
        url: _url,
        headers: <String, String>{
          'Authorization': 'Bearer $accessToken',
        },
      );
      final newData = response.data?.supplierStatements?.nodes!
              .map(
                (node) => Company(
                  name: node.companyName,
                  companyCode: node.companyCode,
                ),
              )
              .toList() ??
          [];
      companies = [...companies, ...newData];
      hasNextPage =
          response.data?.supplierStatements?.pageInfo.hasNextPage ?? false;
      endCursor = response.data?.supplierStatements?.pageInfo.endCursor;
    } while (hasNextPage);
    final seenIds = <String>{};
    return companies
        .where(
          (company) =>
              company.companyCode != null &&
              seenIds.add(company.companyCode ?? ''),
        )
        .toList();
  }
}
