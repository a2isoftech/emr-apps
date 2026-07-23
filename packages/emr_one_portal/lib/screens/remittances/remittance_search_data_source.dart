import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/emr_one_portal_tickets.dart';
import 'package:http/http.dart';

class RemittanceSearchDataSource
    extends EmrQueryGraphQLDataSource<SupplierRemittanceModel> {
  RemittanceSearchDataSource({
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
  final FileDownloadService fileDownloadService;
  late final Uri _url;
  final BaseClient httpClient;
  late bool _supportPaging;

  @override
  bool get supportsPaging => _supportPaging;

  @override
  Future<void> refresh() async {
    loading.value = true;

    try {
      final accessToken = await userInfoSvc.getIdToken();
      final response = await documentNodeQueryGetRemittances.execute(
        httpClient,
        Query$GetRemittances.fromJson,
        variables: Variables$Query$GetRemittances(
          pageSize: pageSize,
          after: after,
          sortOrders: getSortOrder(queryScope.sortOrder),
          searchText: queryScope.query,
        ),
        url: _url,
        headers: <String, String>{
          'Authorization': 'Bearer $accessToken',
        },
      );

      if (response.hasErrors() ||
          response.data?.supplierRemittances?.nodes == null) {
        data.value = [];
      } else {
        final pagedata = response.data?.supplierRemittances?.nodes!
                .map(RemittanceMapper.remittanceMapper)
                .toList() ??
            [];

        recordCount = response.data?.supplierRemittances?.totalCount ?? 0;
        pageInfo = EmrQueryGraphQLPageInfo(
          endCursor: response.data?.supplierRemittances?.pageInfo.endCursor,
          hasNextPage:
              response.data?.supplierRemittances?.pageInfo.hasNextPage ?? false,
          hasPreviousPage:
              response.data?.supplierRemittances?.pageInfo.hasPreviousPage ??
                  false,
          startCursor: response.data?.supplierRemittances?.pageInfo.startCursor,
        );
        data.value = pagedata;
        await onRefresh.call();
      }
    } finally {
      loading.value = false;
    }
  }

  List<Input$RemittanceSortOrderInput> getSortOrder(
    List<EmrQueryScopeSortOrder> sortOrders,
  ) {
    return sortOrders.map((sortOrder) {
      return Input$RemittanceSortOrderInput(
        field: sortOrder.field,
        ascending: sortOrder.direction == EmrQueryScopeSortOrderDirection.asc,
      );
    }).toList();
  }

  Future<void> downloadFile(
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
    await fileDownloadService.downloadFile(response.data?.supplierRemittance);
  }
}
