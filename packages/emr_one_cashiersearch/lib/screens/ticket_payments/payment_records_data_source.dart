import 'dart:convert';

import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_cashiersearch/models/payment_record.dart';
import 'package:emr_one_cashiersearch/services/ticket_payment_service.dart';
import 'package:emr_one_core/emr_one_core.dart';

class PaymentRecordsDataSource
    extends EmrQueryGraphQLDataSource<PaymentRecord> {
  PaymentRecordsDataSource({
    required this.paymentService,
  }) {
    _supportPaging = true;
  }
  @override
  bool get supportsPaging => _supportPaging;

  late bool _supportPaging;
  final ITicketPaymentService paymentService;
  final _debounceLoad =
      Debounceable<(List<PaymentRecord>, EmrQueryGraphQLMetadata<bool>)>();

  set supportsPaging(bool value) {
    _supportPaging = value;
  }

  @override
  Future<void> refresh() async {
    await _debounceLoad.call(
      () async {
        loading.value = true;
        final order = getOrder();
        return paymentService
            .searchPaymentRecords(
          first: first,
          last: last,
          after: after,
          before: before,
          order: order,
          input: getSearchPaymentRecordsInput(),
        )
            .catchError((Object err) {
          return Future.value((<PaymentRecord>[], getDefaultMeta()));
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

  EmrQueryGraphQLMetadata<bool> getDefaultMeta() {
    return EmrQueryGraphQLMetadata(
      false,
      0,
      EmrQueryGraphQLPageInfo(
        startCursor: null,
        endCursor: null,
        hasNextPage: false,
        hasPreviousPage: false,
      ),
    );
  }

  List<Input$PaymentRecordSortInput> getOrder() {
    return queryScope.sortOrder
        .map(
          (e) => Input$PaymentRecordSortInput.fromJson(
            jsonDecode('{ "${e.field}": "${e.direction}" }')
                as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  Input$PaymentRecordSearchInput getSearchPaymentRecordsInput() {
    return Input$PaymentRecordSearchInput(
      statuses: [
        Enum$PaymentStatus.AWAITING_FOR_APPROVAL,
        Enum$PaymentStatus.APPROVED,
      ],
      query: queryScope.query,
    );
  }
}
