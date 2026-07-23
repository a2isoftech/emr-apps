import 'dart:convert';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/extensions/extensions.dart';
import 'package:emr_one_tickets/screens/tickets_filter_controller.dart';
import 'package:emr_one_tickets/services/services.dart';

class TicketsDataSource extends EmrQueryGraphQLDataSource<
    Query$SearchTrade2Tickets$searchTrade2Tickets$nodes> {
  TicketsDataSource({required this.ticketsService});

  final TicketsService ticketsService;

  @override
  bool get supportsFacets => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final ticketCategory =
        _getStringFilter(TicketsFilterController.kTicketCategory)
            ?.replaceAll(' ', '')
            .facetTermToEnum$Trade2TicketCategory();

    final ticketStatus = _getStringFilter(TicketsFilterController.kTicketStatus)
        ?.replaceAll(' ', '')
        .facetTermToEnum$Trade2TicketStatus();

    final ticketType = _getStringFilter(TicketsFilterController.kTicketType)
        ?.replaceAll(' ', '')
        .facetTermToEnum$Trade2TicketType();

    final order = queryScope.sortOrder
        .map(
          (e) => Input$Trade2TicketSortInput.fromJson(
            jsonDecode('{ "${e.field}": "${e.direction}" }')
                as Map<String, dynamic>,
          ),
        )
        .toList();

    final (results, meta) = await ticketsService.searchTickets(
      query: queryScope.query,
      depotFilters: _getStringFilterList(TicketsFilterController.kDepotNo),
      gradeFilters: _getStringFilterList(TicketsFilterController.kGrades),
      ticketCategory: ticketCategory,
      ticketStatus: ticketStatus,
      ticketType: ticketType,
      epochMin: _getDateTimeFilter(TicketsFilterController.kStartDate)
          ?.millisecondsSinceEpoch,
      epochMax: _getDateTimeFilter(TicketsFilterController.kEndDate)
          ?.add(const Duration(days: 1))
          .millisecondsSinceEpoch,
      order: order,
      before: before,
      after: after,
      first: first,
      last: last,
    );

    final facetResults = {
      for (final v in meta.facets.searchTrade2TicketsFacet)
        v.key: EmrFacetResult(
          name: switch (v.value.name) {
            'DepotNo' => 'by depot no',
            'Grades' => 'by grade',
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
