import 'package:emr_core_api/graphql/queries/inventory/ticket/search_cashier_ticket_facets.graphql.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/controllers/audit_ticket_filter_controller.dart';
import 'package:emr_one_cashiersearch/models/ticket.dart';
import 'package:emr_one_cashiersearch/services/ticket_audit_service.dart';
import 'package:emr_one_core/data/emr_query_graphql_data_source.dart';
import 'package:emr_one_core/data/emr_query_graphql_metadata.dart';
import 'package:emr_one_core/data/emr_query_graphql_page_info.dart';
import 'package:emr_one_core/utilities/debounceable.dart';

class AuditTicketDataSource extends EmrQueryGraphQLDataSource<Ticket> {
  AuditTicketDataSource({required this.ticketService}) {
    _supportPaging = true;
  }

  final ITicketAuditService ticketService;

  @override
  bool get supportsFacets => false;

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
        return ticketService
            .searchTickets(
              first: first,
              last: last,
              after: after,
              before: before,
              input: getSearchTicketsInput(),
              includeAllWbSyncTasks: true,
            )
            .catchError((Object err) {
              return Future.value((<Ticket>[], getDefaultMeta()));
            });
      },
      then: (response) async {
        final (results, meta) = response;
        recordCount = meta.recordCount;
        pageInfo = meta.pageInfo;
        data.value = results;
        loading.value = false;
        await onRefresh.call();
      },
    );
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

  Input$SearchCashierTicketsInput? getSearchTicketsInput() {
    final yard = _getStringFilter(AuditTicketFilterController.kYard);

    return Input$SearchCashierTicketsInput(
      query: queryScope.query,
      yardCodes: yard != null ? [yard] : [],
      ticketStatus: _getTicketStatusValues(
        AuditTicketFilterController.kTicketStatus,
      ),
      epochMin: isScanned
          ? null
          : _getDateFilterInEpoch(AuditTicketFilterController.kStartDate),
      epochMax: isScanned
          ? null
          : _getDateFilterInEpoch(AuditTicketFilterController.kEndDate),
    );
  }

  int? _getDateFilterInEpoch(String key) {
    var date = queryScope.filters[key] as DateTime?;
    if (key == AuditTicketFilterController.kEndDate) {
      //Since we are filtering based on epoch,
      //enddate must be set to end of the day selected
      date = date?.add(const Duration(hours: 23, minutes: 59, seconds: 59));
    }
    return date?.toUtc().millisecondsSinceEpoch;
  }

  List<Enum$TicketStatus>? _getTicketStatusValues(String key) {
    final filterValues = _getStringFilterList(key);
    if (filterValues != null) {
      final formattedValues = filterValues.map((x) => x.toLowerCase()).toList();
      final selectedStatuses = TicketStatus.values
          .where((x) => formattedValues.contains(x.name.toLowerCase()))
          .toList();
      return selectedStatuses.map(_convertTicketStatus).toList();
    }
    return null;
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

  String? _getStringFilter(String key) => queryScope.filters[key] as String?;

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();
}
