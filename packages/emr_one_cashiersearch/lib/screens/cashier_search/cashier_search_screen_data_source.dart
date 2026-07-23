import 'dart:convert';

import 'package:emr_core_api/graphql/queries/inventory/ticket/search_cashier_ticket_facets.graphql.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/controllers/cashier_search_filters_controller.dart';
import 'package:emr_one_cashiersearch/extensions/user_info_extensions.dart';
import 'package:emr_one_cashiersearch/models/filter_item_model.dart';
import 'package:emr_one_cashiersearch/models/payment_validation_result.dart';
import 'package:emr_one_cashiersearch/models/ticket.dart';
import 'package:emr_one_cashiersearch/services/cashier_search_service.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';

class CashierSearchScreenDataSource extends EmrQueryGraphQLDataSource<Ticket> {
  CashierSearchScreenDataSource({
    required this.ticketService,
    required this.userInfoService,
  }) {
    _supportPaging = true;
  }
  final ICashierSearchService ticketService;
  final UserInfoService userInfoService;

  @override
  bool get supportsFacets => true;

  @override
  bool get supportsPaging => _supportPaging;

  late bool _supportPaging;

  bool isScanned = false;
  final _debounceLoad =
      Debounceable<
        (List<Ticket>, EmrQueryGraphQLMetadata<Query$SearchCashierTicketsFacet>)
      >();

  set supportsPaging(bool value) {
    _supportPaging = value;
  }

  List<Ticket> preserveData = [];
  List<Ticket> preserveScannedData = [];

  @override
  Future<void> refresh() async {
    await _debounceLoad.call(
      () async {
        loading.value = true;

        final order = getOrder();

        try {
          return await ticketService.searchCashierTickets(
            first: first,
            last: last,
            after: after,
            before: before,
            order: order.isEmpty
                ? [
                    Input$SearchTicketsSortInput(
                      ticketNumber: Enum$SortEnumType.ASC,
                    ),
                  ]
                : order,
            input: getSearchTicketsInput(),
          );
        } catch (e) {
          EmrLogger.error(
            'CashierSearchScreenDataSource.refresh() - could not fetch tickets',
            error: e as Exception,
          );
          return Future.value((<Ticket>[], getDefaultMeta()));
        }
      },
      then: (response) async {
        final (results, meta) = response;
        final facetResults = transformFacetResult(
          meta.facets.searchCashierTicketsFacet,
        );

        recordCount = meta.recordCount;
        pageInfo = meta.pageInfo;
        facets.value = facetResults;
        for (final ticket in results.where(
          (x) => x.ticketStatus == TicketStatus.paid,
        )) {
          if (ticket.paymentRecord?.paymentMethod ==
                  PaymentMethod.autoChequeWithEncashmentAtm ||
              ticket.paymentRecord?.paymentMethod ==
                  PaymentMethod.autoChequeWithEncashmentCash) {
            ticket.paymentValidationResult!.status = Status.error;
            ticket.paymentValidationResult!.errors = [
              'Cannot unpay already encashed payments',
            ];
          }
        }
        data.value = results;
        loading.value = false;
        await onRefresh.call();
      },
    );
  }

  Map<String, EmrFacetResult> transformFacetResult(
    List<Query$SearchCashierTicketsFacet$searchCashierTicketsFacet> facets,
  ) {
    final facetResults = {
      for (final v in facets)
        v.key: EmrFacetResult(
          name: v.value.name!,
          values:
              v.value.values
                  ?.map(
                    (e) => EmrFacetResultValue(
                      text: e?.range?.toUpperCase() ?? '',
                      value: e?.range ?? '',
                      count: e?.count ?? 0,
                    ),
                  )
                  .toList() ??
              [],
        ),
    };
    return facetResults;
  }

  EmrQueryGraphQLMetadata<Query$SearchCashierTicketsFacet> getDefaultMeta() {
    return EmrQueryGraphQLMetadata<Query$SearchCashierTicketsFacet>(
      Query$SearchCashierTicketsFacet(searchCashierTicketsFacet: []),
      0,
      EmrQueryGraphQLPageInfo(
        startCursor: null,
        endCursor: null,
        hasNextPage: false,
        hasPreviousPage: false,
      ),
    );
  }

  List<Input$SearchTicketsSortInput> getOrder() {
    return queryScope.sortOrder
        .map(
          (e) => Input$SearchTicketsSortInput.fromJson(
            jsonDecode('{ "${e.field}": "${e.direction}" }')
                as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  Input$SearchCashierTicketsInput getSearchTicketsInput() {
    final yard = _getStringFilterList(CashierSearchFiltersController.kYard);
    final payingYardId = 'yards/${userInfoService.userInfo.getDefaultYard()}';

    return Input$SearchCashierTicketsInput(
      query: queryScope.query,
      payingYardId: payingYardId,
      paidAtEdge: _getPayAtEdgeFilterValue(
        CashierSearchFiltersController.kPayAtEdge,
      ),
      epochMin: isScanned
          ? null
          : _getDateFilterInEpoch(CashierSearchFiltersController.kStartDate),
      epochMax: isScanned
          ? null
          : _getDateFilterInEpoch(CashierSearchFiltersController.kEndDate),
      yardCodes: yard ?? [],
      ticketStatus: _getTicketStatusValue(
        CashierSearchFiltersController.kTicketStatus,
      ),
      ticketType: _getTicketTypeValue(
        CashierSearchFiltersController.kTicketType,
      ),
      accountType: _getTicketAccountTypeValue(
        CashierSearchFiltersController.kTicketAccountType,
      ),
      ticketCategory: _getTicketCategoryValue(
        CashierSearchFiltersController.kTicketCategory,
      ),
      vehicleNoFilter: _getStringFilterList(
        CashierSearchFiltersController.kVehicleNumber,
      ),
      transportJobNumbers: _getIntFilterList(
        CashierSearchFiltersController.kJobNumber,
      ),
      haulierNames: _getStringFilterList(
        CashierSearchFiltersController.kHaulierName,
      ),
      ticketIds: _getStringFilterKeyList(
        CashierSearchFiltersController.kTicketNumber,
      ),
      partyAccountIds: [
        ..._getStringFilterKeyList(
              CashierSearchFiltersController.kPartyAccountNumber,
            ) ??
            [],
        ..._getStringFilterKeyList(CashierSearchFiltersController.kPartyName) ??
            [],
      ],
      contractIds: _getStringFilterKeyList(
        CashierSearchFiltersController.kContractNumber,
      ),
      locationNames: _getStringFilterList(
        CashierSearchFiltersController.kLocationName,
      ),
    );
  }

  int? _getDateFilterInEpoch(String key) {
    var date = queryScope.filters[key] as DateTime?;
    if (key == CashierSearchFiltersController.kEndDate) {
      //Since we are filtering based on epoch,
      //enddate must be set to end of the day selected
      date = date?.add(const Duration(hours: 23, minutes: 59, seconds: 59));
    }
    return date?.toUtc().millisecondsSinceEpoch;
  }

  List<int>? _getIntFilterList(String key) {
    final stringValues = _getStringFilterList(key);
    return stringValues?.map(int.parse).toList();
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();

  String? _getStringFilter(String key) => queryScope.filters[key] as String?;

  List<String>? _getStringFilterKeyList(String key) => List<FilterItem>.from(
    (queryScope.filters[key] as Iterable?) ?? const [],
  ).map((e) => e.key).toList();

  List<Enum$TicketStatus>? _getTicketStatusValue(String key) {
    final filterValue = _getStringFilter(key);
    final selectedStatus = TicketStatus.values
        .where((x) => x.name.toLowerCase() == filterValue?.toLowerCase())
        .first;
    return [_convertTicketStatus(selectedStatus)];
  }

  String? _getStringFilterValue(String key) =>
      queryScope.filters[key] as String?;

  bool? _getPayAtEdgeFilterValue(String key) {
    final filterValues = _getStringFilterValue(key);
    if (filterValues != null) {
      return filterValues == 'TRUE';
    } else {
      return null;
    }
  }

  Enum$TicketStatus _convertTicketStatus(TicketStatus status) {
    switch (status) {
      case TicketStatus.draft:
        return Enum$TicketStatus.DRAFT;
      case TicketStatus.active:
        return Enum$TicketStatus.ACTIVE;
      case TicketStatus.instantQuickPaid:
        return Enum$TicketStatus.INSTANT_QUICK_PAID;
      case TicketStatus.paid:
        return Enum$TicketStatus.PAID;
      case TicketStatus.closed:
        return Enum$TicketStatus.CLOSED;
      case TicketStatus.finished:
        return Enum$TicketStatus.FINISHED;
      case TicketStatus.deleted:
        return Enum$TicketStatus.DELETED;
      case TicketStatus.paymentInitiated:
        return Enum$TicketStatus.PAYMENT_INITIATED;
    }
  }

  Enum$TicketType? _getTicketTypeValue(String key) {
    final filterValue = _getStringFilter(key);
    if (filterValue != null) {
      return Enum$TicketType.values.firstWhere(
        (element) => element.name.toLowerCase() == filterValue.toLowerCase(),
      );
    } else {
      return null;
    }
  }

  Enum$AccountType? _getTicketAccountTypeValue(String key) {
    final filterValue = _getStringFilter(key);
    if (filterValue != null) {
      return Enum$AccountType.values.firstWhere(
        (element) => element.name.toLowerCase() == filterValue.toLowerCase(),
      );
    } else {
      return null;
    }
  }

  Enum$TicketCategory? _getTicketCategoryValue(String key) {
    final filterValue = _getStringFilter(key);
    if (filterValue != null) {
      return Enum$TicketCategory.values.firstWhere(
        (element) =>
            element.name.replaceAll('_', '').toLowerCase() ==
            filterValue.toLowerCase(),
      );
    } else {
      return null;
    }
  }
}
