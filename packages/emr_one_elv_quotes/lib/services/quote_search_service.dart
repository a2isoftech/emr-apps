import 'dart:convert';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/graphql/fragments/inventory/facet_response_fragment.graphql.dart';
import 'package:emr_core_api/graphql/queries/elv/search_elv_batch_quotes.graphql.dart';
import 'package:emr_core_api/graphql/queries/elv/search_elv_batch_quotes_facet.graphql.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_core/models/enums/collection_status_enum.dart';
import 'package:emr_one_elv_core/models/enums/lead_source_enum.dart';
import 'package:emr_one_elv_quotes/models/quote_search/quote_search_facets.dart';
import 'package:emr_one_elv_quotes/models/quote_search/quote_search_input.dart';
import 'package:emr_one_elv_quotes/models/quote_search/quote_search_record.dart';
import 'package:http/http.dart';

class QuoteSearchService {
  QuoteSearchService({
    required this.httpClient,
    this.cacheTtl = const Duration(minutes: 1),
  });

  final BaseClient httpClient;
  final Duration cacheTtl;

  Future<
          ApiResponse<
              (List<QuoteSearchRecord>, EmrQueryGraphQLMetadata<dynamic>)>>
      searchElvBatchQuotes({
    required QuoteSearchInput quoteSearchInput,
    int pageSize = 50,
    String? before,
    String? after,
    int? first,
    int? last,
    List<EmrQueryScopeSortOrder>? sortOrder,
  }) async {
    final input = Input$ElvBatchQuotesSearchInput(
      query: quoteSearchInput.query,
      yardCodes: quoteSearchInput.yardCodes,
      quoteStatuses: (quoteSearchInput.quoteStatuses ?? [])
          .map((s) => Enum$QuoteStatus.values.byName(s.name.toUpperCase()))
          .toList(),
      acquisitionTypes: (quoteSearchInput.acquisitionTypes ?? [])
          .map((s) => Enum$AcquisitionType.values.byName(s.name.toUpperCase()))
          .toList(),
      collectionStatuses: (quoteSearchInput.collectionStatuses ?? [])
          .map((s) => Enum$CollectionStatus.fromJson(collectionStatusToJson(s)))
          .toList(),
      leadSources: (quoteSearchInput.leadSources ?? [])
          .map((s) => Enum$LeadSource.fromJson(leadSourceToJson(s)))
          .toList(),
      collectionDateMin: quoteSearchInput.collectionDateMin,
      collectionDateMax: quoteSearchInput.collectionDateMax,
      createdDateMin: quoteSearchInput.createdDateMin,
      createdDateMax: quoteSearchInput.createdDateMax,
      territoryCode: quoteSearchInput.territoryCode,
      includeExpiredQuotes: quoteSearchInput.includeExpiredQuotes,
    );

    final order = sortOrder
        ?.map(
          (e) => Input$ElvBatchQuotesSearchResultSortInput.fromJson(
            jsonDecode('{ "${e.field}": "${e.direction}" }')
                as Map<String, dynamic>,
          ),
        )
        .toList();

    final response = await documentNodeQuerySearchElvBatchQuotes.execute(
      httpClient,
      Query$SearchElvBatchQuotes.fromJson,
      variables: Variables$Query$SearchElvBatchQuotes(
        before: before,
        after: after,
        first: first,
        last: last,
        order: order,
        input: input,
      ),
    );

    final facets = await searchElvBatchQuoteFacets(
      elvBatchQuoteSearchInput: input,
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    if (response.data?.searchElvBatchQuotes?.nodes == null) {
      return ApiResponse(
        success: false,
        message: 'Failed to load quotes',
      );
    }

    final quotes = _convertToQuoteSearchRecord(
      response.data?.searchElvBatchQuotes?.nodes ?? [],
    );

    final totalRecords = response.data?.searchElvBatchQuotes?.totalCount ?? 0;

    return ApiResponse(
      data: (
        quotes,
        EmrQueryGraphQLMetadata<dynamic>(
          facets,
          totalRecords,
          EmrQueryGraphQLPageInfo(
            hasPreviousPage:
                response.data?.searchElvBatchQuotes?.pageInfo.hasPreviousPage ??
                    false,
            hasNextPage:
                response.data?.searchElvBatchQuotes?.pageInfo.hasNextPage ??
                    false,
            startCursor:
                response.data?.searchElvBatchQuotes?.pageInfo.startCursor,
            endCursor: response.data?.searchElvBatchQuotes?.pageInfo.endCursor,
          ),
        )
      ),
    );
  }

  Future<dynamic> searchElvBatchQuoteFacets({
    required Input$ElvBatchQuotesSearchInput elvBatchQuoteSearchInput,
  }) async {
    final response = await documentNodeQuerySearchElvBatchQuoteFacets.execute(
      httpClient,
      Query$SearchElvBatchQuoteFacets.fromJson,
      variables: Variables$Query$SearchElvBatchQuoteFacets(
        input: elvBatchQuoteSearchInput,
      ),
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    final facetResults = {
      for (final v in response.data!.searchElvBatchQuoteFacets)
        v.key: EmrFacetResult(
          name: 'BY ${QuoteSearchFacets.getFacetTitle(v.key)}',
          values: v.value.values
                  ?.map(
                    (e) => _getFacetValue(v.key, e),
                  )
                  .toList() ??
              [],
        ),
    };

    return facetResults;
  }

  List<QuoteSearchRecord> _convertToQuoteSearchRecord(
    List<Query$SearchElvBatchQuotes$searchElvBatchQuotes$nodes> nodes,
  ) {
    return nodes
        .map(
          (e) => QuoteSearchRecord(
            id: e.id,
            batchQuoteBundleId: e.batchQuoteBundleId,
            accountCode: e.accountCode ?? '',
            accountName: e.accountName ?? '',
            quoteValue: e.quoteValue,
            yardCode: e.yardCode,
            yardName: e.yardName,
            postCode: e.postCode,
            vehiclesQuoted: e.vehiclesQuoted,
            vinList: e.vinList ?? [],
            vrnList: e.vrnList ?? [],
            quoteStatus: e.status.name,
            quoteSource: e.quoteSource.name.replaceAll('_', ' '),
            leadSource: e.leadSource.name.replaceAll('_', ' '),
            priceType: e.acquisitionType.name,
            collectionStatus: e.collectionStatus.name.replaceAll('_', ' '),
            collectionOperatorAccountCode: e.collectionOperatorAccountCode,
            collectionOperatorAccountName: e.collectionOperatorAccountName,
            collectionDate: e.collectionDate,
            createdDate: e.createdDate,
          ),
        )
        .toList();
  }

  Future<String?> exportQuotes(
    QuoteSearchInput searchInput,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('api/quoteSearch/export'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(searchInput.toJson()),
      );

      if (response.statusCode == 200) {
        return response.body;
      }

      EmrLogger.error(
        'Failed to export quotes: ${response.statusCode} - ${response.body}',
      );
      return null;
    } catch (e) {
      EmrLogger.error('Failed to export quotes: $e');
      return null;
    }
  }

  EmrFacetResultValue _getFacetValue(
    String key,
    Fragment$FacetResponse$value$values? e,
  ) =>
      switch (key) {
        QuoteSearchConstants.kCollectionStatus =>
          getCollectionStatusFacetValue(e),
        QuoteSearchConstants.kLeadSource => getLeadSourceFacetValue(e),
        _ => EmrFacetResultValue(
            text: e?.range?.toUpperCase() ?? '-',
            value: e?.range?.toUpperCase() ?? '-',
            count: e?.count ?? 0,
          ),
      };

  EmrFacetResultValue getCollectionStatusFacetValue(
    Fragment$FacetResponse$value$values? e,
  ) {
    final label = CollectionStatusEnum.getLabel(e?.range ?? '-');

    return EmrFacetResultValue(
      text: label,
      textShort: label,
      value: e?.range ?? '-',
      count: e?.count ?? 0,
    );
  }

  EmrFacetResultValue getLeadSourceFacetValue(
    Fragment$FacetResponse$value$values? e,
  ) {
    final label = LeadSourceEnum.getLabel(e?.range ?? '-');

    return EmrFacetResultValue(
      text: label,
      textShort: label,
      value: e?.range ?? '-',
      count: e?.count ?? 0,
    );
  }
}
