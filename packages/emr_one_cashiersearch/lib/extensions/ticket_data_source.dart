import 'dart:convert';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';

class EdgeTicketsDataSource extends EmrQueryGraphQLDataSource<
    Query$SearchEdgeTickets$searchTickets$nodes> {
  EdgeTicketsDataSource({required this.ticketsService});

  final EdgeTicketsService ticketsService;

  @override
  bool get supportsFacets => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final ticketCategory =
        _getStringFilter(EdgeTicketsFilterController.kTicketCategory)
            ?.replaceAll(' ', '')
            .facetTermToEnum$TicketCategory();

    final ticketStatus =
        _getStringFilter(EdgeTicketsFilterController.kTicketStatus)
            ?.replaceAll(' ', '')
            .facetTermToEnum$TicketStatus();

    final ticketType = _getStringFilter(EdgeTicketsFilterController.kTicketType)
        ?.replaceAll(' ', '')
        .facetTermToEnum$TicketType();

    final order = queryScope.sortOrder
        .map(
          (e)=> Input$SearchTicketsSortInput.fromJson(
            jsonDecode('{ "${e.field}": "${e.direction}" }')
                as Map<String, dynamic>,
          ),
        )
        .toList();

    final (results, meta) = await ticketsService.searchTickets(
      query: queryScope.query,
      yardCodes: _getStringFilterList(EdgeTicketsFilterController.kDepotNo),
      productFilters:
          _getStringFilterList(EdgeTicketsFilterController.kProducts),
      ticketCategory: ticketCategory,
      ticketStatus: ticketStatus,
      ticketType: ticketType,
      epochMin: _getDateTimeFilter(EdgeTicketsFilterController.kStartDate)
          ?.millisecondsSinceEpoch,
      epochMax: _getDateTimeFilter(EdgeTicketsFilterController.kEndDate)
          ?.add(const Duration(days: 1))
          .millisecondsSinceEpoch,
      partyAccountNames:
          _getStringFilterList(EdgeTicketsFilterController.kPartyName),
      partyAccountNos:
          _getStringFilterList(EdgeTicketsFilterController.kPartyAccountNumber),
      contractOrderBookTypeNames: _getStringFilterList(
        EdgeTicketsFilterController.kContractOrderBookTypeName,
      ),
      contractNumbers: _getStringFilterList(
        EdgeTicketsFilterController.kContractNumber,
      ),
      order: order,
      before: before,
      after: after,
      first: first,
      last: last,
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

    // Update the data source with the new data.
    // NOTE: data.value MUST ALWAYS BE SET LAST WHEN USING PAGING.
    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    facets.value = facetResults;
    data.value = results;

    loading.value = false;
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();

  String? _getStringFilter(String key) => queryScope.filters[key] as String?;

  DateTime? _getDateTimeFilter(String key) =>
      queryScope.filters[key] as DateTime?;
}
