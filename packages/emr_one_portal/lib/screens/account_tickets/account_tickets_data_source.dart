import 'dart:convert';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/emr_one_portal_tickets.dart';
import 'package:http/http.dart';

class AccountTicketsDataSource extends EmrQueryGraphQLDataSource<TicketModel> {
  AccountTicketsDataSource({
    required this.userInfoSvc,
    required this.httpClient,
    required this.appConfig,
    required this.fileDownloadService,
  }) {
    try {
      _supportPaging = true;
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

  final CustomerUserInfoService userInfoSvc;
  final AppConfig appConfig;
  late final Uri _url;
  late final bool _supportPaging;
  final BaseClient httpClient;
  Enum$InvoiceStatus? statementType;
  final FileDownloadService fileDownloadService;

  @override
  bool get supportsPaging => _supportPaging;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();
    final order = queryScope.sortOrder
        .map(
          (e) => Input$PaidTicketSummarySortInput.fromJson(
            jsonDecode('{ "${e.field}": "${e.direction}" }')
                as Map<String, dynamic>,
          ),
        )
        .toList();
    if (order.isEmpty) {
      final autoOrder =
          Input$PaidTicketSummarySortInput(ticketDate: Enum$SortEnumType.DESC);
      order.add(autoOrder);
    }
    try {
      final accessToken = await userInfoSvc.getIdToken();
      final response = await documentNodeQueryGetpaidTickets.execute(
        httpClient,
        Query$GetpaidTickets.fromJson,
        variables: Variables$Query$GetpaidTickets(
          cutOffDate: DateTime(
            DateTime.now().year,
            DateTime.now().month - 2,
            DateTime.now().day,
          ),
          pageSize: pageSize,
          after: after,
          order: order,
          searchText: queryScope.query,
        ),
        url: _url,
        headers: <String, String>{
          'Authorization': 'Bearer $accessToken',
        },
      );

      if (response.hasErrors() || response.data?.tickets?.nodes == null) {
        data.value = [];
      } else {
        final pagedata = response.data?.tickets?.nodes!
                .map(TicketMappers.ticketMapper)
                .toList() ??
            [];

        recordCount = response.data?.tickets?.totalCount ?? 0;
        pageInfo = EmrQueryGraphQLPageInfo(
          endCursor: response.data?.tickets?.pageInfo.endCursor,
          hasNextPage: response.data?.tickets?.pageInfo.hasNextPage ?? false,
          hasPreviousPage:
              response.data?.tickets?.pageInfo.hasPreviousPage ?? false,
          startCursor: response.data?.tickets?.pageInfo.startCursor,
        );
        data.value = pagedata;
      }
    } finally {
      loading.value = false;
    }
  }

  Future<void> downloadFile(
    String ticketNo,
  ) async {
    final mediaApiUrl = await getInvoiceMediaApiUrl(ticketNo);
    await fileDownloadService.downloadFile(mediaApiUrl);
  }

  Future<String?> getInvoiceMediaApiUrl(
    String ticketNumber,
  ) async {
    final ticketNo = int.parse(ticketNumber);
    final accessToken = await userInfoSvc.getIdToken(true);
    final response = await documentNodeQueryticketRemittance.execute(
      httpClient,
      Query$ticketRemittance.fromJson,
      variables: Variables$Query$ticketRemittance(
        ticketNumber: ticketNo,
      ),
      url: _url,
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    return response.data?.remittanceForTicket;
  }
}
