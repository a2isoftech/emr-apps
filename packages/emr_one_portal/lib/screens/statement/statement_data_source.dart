import 'dart:convert';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal/screens/statement/statement_mappers.dart';
import 'package:emr_one_portal_tickets/emr_one_portal_tickets.dart';
import 'package:emr_one_portal_tickets/graphql/graphql.dart';
import 'package:http/http.dart';

class StatementDataSource extends EmrQueryGraphQLDataSource<StatementModel> {
  StatementDataSource({
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
  Enum$StatementStatusInput? statementType;
  final FileDownloadService fileDownloadService;
  List<String> get companyList => _companyNames;
  late List<String> _companyNames;

  @override
  bool get supportsPaging => _supportPaging;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();
    final order = queryScope.sortOrder
        .map(
          (e) => Input$SupplierStatementSummarySortInput.fromJson(
            jsonDecode('{ "${e.field}": "${e.direction}" }')
                as Map<String, dynamic>,
          ),
        )
        .toList();
    final companyCodes = getStringFilterList('companyName');
    Input$SupplierStatementSummaryFilterInput? filterInput;

    if (companyCodes != null && companyCodes.isNotEmpty) {
      filterInput = Input$SupplierStatementSummaryFilterInput(
        companyCode: Input$StringOperationFilterInput(
          $in: companyCodes,
        ),
      );
    }
    try {
      final accessToken = await userInfoSvc.getIdToken();
      final response = await documentNodeQueryGetStatements.execute(
        httpClient,
        Query$GetStatements.fromJson,
        variables: Variables$Query$GetStatements(
          searchText: queryScope.query,
          input: filterInput,
          statementStatus: statementType,
          after: after,
          order: order,
          first: first,
          last: last,
          before: before,
        ),
        url: _url,
        headers: <String, String>{
          'Authorization': 'Bearer $accessToken',
        },
      );

      if (response.hasErrors() ||
          response.data?.supplierStatements?.nodes == null) {
        data.value = [];
      } else {
        final pagedata = response.data?.supplierStatements?.nodes!
                .map(StatementMapper.statementMapper)
                .toList() ??
            [];

        recordCount = response.data?.supplierStatements?.totalCount ?? 0;
        pageInfo = EmrQueryGraphQLPageInfo(
          endCursor: response.data?.supplierStatements?.pageInfo.endCursor,
          hasNextPage:
              response.data?.supplierStatements?.pageInfo.hasNextPage ?? false,
          hasPreviousPage:
              response.data?.supplierStatements?.pageInfo.hasPreviousPage ??
                  false,
          startCursor: response.data?.supplierStatements?.pageInfo.startCursor,
        );
        data.value = pagedata;
      }
    } finally {
      loading.value = false;
    }
  }

  void setStatementType(String tabName) {
    queryScope.query = '';
    statementType = _getFilter(tabName);
  }

  List<String>? getStringFilterList(String key) {
    return queryScope.filters[key] != null
        ? queryScope.filters[key] as List<String>?
        : null;
  }

  Enum$StatementStatusInput? _getFilter(String tabName) =>
      tabName == PortalStrings.outstanding
          ? Enum$StatementStatusInput.OUTSTANDING
          : tabName == PortalStrings.paid
              ? Enum$StatementStatusInput.PAID
              : null;

  Future<void> downloadFile(
    String purchaseOrderNo,
    String invoiceNumber,
  ) async {
    final mediaApiUrl =
        await getInvoiceMediaApiUrl(purchaseOrderNo, invoiceNumber);
    await fileDownloadService.downloadFile(mediaApiUrl);
  }

  Future<String?> getInvoiceMediaApiUrl(
    String purchaseOrderNo,
    String invoiceNo,
  ) async {
    final accessToken = await userInfoSvc.getIdToken(true);
    final response = await documentNodeQueryinvoiceFileDownload.execute(
      httpClient,
      Query$invoiceFileDownload.fromJson,
      variables: Variables$Query$invoiceFileDownload(
        invoiceNumber: invoiceNo,
        purchaseOrderNumber: purchaseOrderNo,
      ),
      url: _url,
      headers: <String, String>{
        'Authorization': 'Bearer $accessToken',
      },
    );

    return response.data?.invoiceFileSASToken;
  }
}
