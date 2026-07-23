import 'dart:convert';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:emr_one_portal_tickets/emr_one_portal_tickets.dart';
import 'package:http/http.dart';

class PricelistSearchDataSource
    extends EmrQueryGraphQLDataSource<PriceListModel> {
  PricelistSearchDataSource({
    required this.userInfoSvc,
    required this.httpClient,
    required this.appConfig,
    required this.pricelistService,
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

  final CustomerUserInfoService userInfoSvc;
  MarketIndicationModel? _marketIndicationModel;
  final PricelistService pricelistService;
  final AppConfig appConfig;
  late final Uri _customerPortalApiUrl;
  final BaseClient httpClient;
  Enum$ProductType productType = Enum$ProductType.FERROUS;
  late String countryCode;
  late bool? isMarketPriceIndicatorEnabled;

  MarketIndicationModel? get marketInfo => _marketIndicationModel;

  @override
  Future<void> refresh() async {
    loading.value = true;
    await onRefresh.call();

    try {
      final accessToken = await userInfoSvc.getIdToken();

      final order = queryScope.sortOrder
        .map(
          (e) => Input$PartyPricelistSummarySortInput.fromJson(
            jsonDecode('{ "${e.field}": "${e.direction}" }')
                as Map<String, dynamic>,
          ),
        )
        .toList();
      final yardcode = getStringFilterList(PortalStrings.yard) ??
          await pricelistService.defaultYard();
      
      if (yardcode!.isEmpty) {
        return;
      }

      final response = await documentNodeQueryGetPricelist.execute(
        httpClient,
        Query$GetPricelist.fromJson,
        variables: Variables$Query$GetPricelist(
          searchText: queryScope.query,
          productType: productType,
          yardCode: yardcode,
          after: after,
          first: first,
          last: last,
          before: before,
          order: order,
        ),
        url: _customerPortalApiUrl,
        headers: <String, String>{
          'Authorization': 'Bearer $accessToken',
        },
      );

      if (response.hasErrors() ||
          response.data?.partyPricelistSummary?.nodes == null) {
        data.value = [];
      } else {
        final pagedata = response.data?.partyPricelistSummary?.nodes!
                .map(PricelistMapper.pricelistMapper)
                .toList() ??
            [];
        recordCount = response.data?.partyPricelistSummary?.totalCount ?? 0;
        pageInfo = EmrQueryGraphQLPageInfo(
          endCursor: response.data?.partyPricelistSummary?.pageInfo.endCursor,
          hasNextPage:
              response.data?.partyPricelistSummary?.pageInfo.hasNextPage ??
                  false,
          hasPreviousPage:
              response.data?.partyPricelistSummary?.pageInfo.hasPreviousPage ??
                  false,
          startCursor:
              response.data?.partyPricelistSummary?.pageInfo.startCursor,
        );
        data.value = pagedata;
      }
    } finally {
      loading.value = false;
    }
  }

  void setProductType(String tabName) {
    queryScope.query = '';
    recordCount = 0;
    data.value = List.empty();
    productType = _getProductType(tabName);
  }

  String? getStringFilterList(String key) {
    return queryScope.filters[key] != null
        ? (queryScope.filters[key] as String)
        : null;
  }

  Future<void> getMarketIndicationPrices() async {
    _marketIndicationModel ??=
        await pricelistService.getMarketIndicationPrices();
  }

  Future<bool> isMarketIndicatorEnabled() async {
    isMarketPriceIndicatorEnabled ??=
        await pricelistService.isMarketIndicatorEnabled();
    return isMarketPriceIndicatorEnabled ?? false;
  }

  Enum$ProductType _getProductType(String tabName) =>
      tabName == PortalStrings.ferrous
          ? Enum$ProductType.FERROUS
          : Enum$ProductType.NONFER;
}
