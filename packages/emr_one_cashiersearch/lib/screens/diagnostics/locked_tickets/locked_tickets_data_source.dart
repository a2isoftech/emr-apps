import 'dart:convert';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';

class LockedTicketsDataSource extends EmrQueryGraphQLDataSource<
    Query$SearchEdgeTickets$searchTickets$nodes> {
  LockedTicketsDataSource({required this.ticketsService});

  final EdgeTicketsService ticketsService;

  @override
  bool get autoPopulate => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final order = queryScope.sortOrder
        .map(
          (e) => Input$SearchTicketsSortInput.fromJson(
            jsonDecode('{ "${e.field}": "${e.direction}" }')
                as Map<String, dynamic>,
          ),
        )
        .toList();
    final yardCode = getYardCode();
    final ticketNumbers = getTicketNumbers();
    final (results, meta) = await ticketsService.searchTickets(
      query: queryScope.query,
      ticketNumbers: ticketNumbers,
      locked: true,
      order: order,
      before: before,
      after: after,
      first: first,
      last: last,
      yardCodes: yardCode != null ? [yardCode] : null,
    );

    final facetResults = {
      for (final v in meta.facets.searchTicketsFacet)
        v.key: EmrFacetResult(
          name: switch (v.value.name) {
            'DepotNo' => 'by depot no',
            'Products' => 'by product',
            'TicketStatus' => 'by ticket status',
            'TicketType' => 'by ticket type',
            'TicketCategory' => 'by ticket category',
            _ => ''
          },
          values: v.value.values
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
    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    facets.value = facetResults;
    data.value = results;

    loading.value = false;
  }

  String? getYardCode() {
    return _getStringFilter(
      LockedTicketsSearchFilterController.kYardCode,
    );
  }

  List<int>? getTicketNumbers() {
    return _getIntFilterList(
      LockedTicketsSearchFilterController.kTicketNumber,
    );
  }

  List<int>? _getIntFilterList(String key) {
    final stringValues = _getStringFilterList(key);
    return stringValues?.map(int.parse).toList();
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();

  String? _getStringFilter(String key) => queryScope.filters[key] as String?;
}
