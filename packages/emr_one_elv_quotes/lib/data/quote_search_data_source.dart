import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_quotes/extensions/quote_search_extensions.dart';
import 'package:emr_one_elv_quotes/models/quote_search/quote_search_input.dart';
import 'package:emr_one_elv_quotes/models/quote_search/quote_search_record.dart';
import 'package:emr_one_elv_quotes/services/quote_search_service.dart';

class QuoteSearchDataSource
    extends EmrQueryGraphQLDataSource<QuoteSearchRecord> {
  QuoteSearchDataSource({
    required this.quoteSearchService,
  });

  final QuoteSearchService quoteSearchService;
  final ExportDataService exportDataService = ExportDataService();
  String? territoryCode;

  @override
  bool get autoPopulate => true;

  @override
  bool get supportsFacets => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    final searchInput = getSearchInput();

    final response = await quoteSearchService.searchElvBatchQuotes(
      quoteSearchInput: searchInput,
      sortOrder: queryScope.sortOrder.isEmpty
          ? [
              EmrQueryScopeSortOrder(
                field: 'createdDate',
                direction: EmrQueryScopeSortOrderDirection.desc,
              ),
            ]
          : queryScope.sortOrder,
      before: before,
      after: after,
      first: first,
      last: last,
    );

    if (response.success == false || response.data == null) {
      loading.value = false;
      return;
    }

    final quotes = response.data!.$1;
    final meta = response.data!.$2;

    // Update the data source with the new data.
    // NOTE: data.value MUST ALWAYS BE SET LAST WHEN USING PAGING.
    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    facets.value = meta.facets as Map<String, EmrFacetResult>;
    data.value = quotes;

    loading.value = false;
  }

  QuoteSearchInput getSearchInput() {
    final yardCodes = _getStringFilterList(QuoteSearchConstants.kYardCode);

    final statuses = _getStringFilterList(QuoteSearchConstants.kStatus)
        ?.map((e) => e.replaceAll(' ', '').facetTermToQuoteStatusEnum())
        .toList();

    final acquisitionTypes = _getStringFilterList(
      QuoteSearchConstants.kAcquisitionType,
    )
        ?.map((e) => e.replaceAll(' ', '').facetTermToAcquisitionTypeEnum())
        .toList();

    final collectionStatuses = _getStringFilterList(
      QuoteSearchConstants.kCollectionStatus,
    )
        ?.map((e) => e.replaceAll(' ', '').facetTermToCollectionStatusEnum())
        .toList();

    final leadSources = _getStringFilterList(QuoteSearchConstants.kLeadSource)
        ?.map((e) => e.replaceAll(' ', '').facetTermToLeadSourceEnum())
        .toList();

    final collectionDateRangeFilter =
        _getDateRangeFilter(QuoteSearchConstants.kCollectionDateRange);

    final createdDateRangeFilter =
        _getDateRangeFilter(QuoteSearchConstants.kCreatedDateRange);

    return QuoteSearchInput(
      queryScope.query,
      yardCodes,
      statuses,
      acquisitionTypes,
      collectionStatuses,
      leadSources,
      collectionDateRangeFilter?.startDate,
      collectionDateRangeFilter?.endDate,
      createdDateRangeFilter?.startDate,
      createdDateRangeFilter?.endDate,
      territoryCode,
    );
  }

  Future<void> exportQuoteSearchData() async {
    loading.value = true;
    final quoteSearchInput = getSearchInput();
    final exportData = await quoteSearchService.exportQuotes(quoteSearchInput);
    final exportFileName = getFileName('ExportedQuotes', 'csv');

    loading.value = false;

    if (exportData == null) {
      return;
    }

    return exportDataService.downloadFileWeb(
      fileName: exportFileName,
      data: exportData,
    );
  }

  String getFileName(String prefix, String extension) {
    final date = DateTime.now();
    return '${prefix}_${date.year}_${date.month}_'
        '${date.day}_${date.hour}_${date.second}.$extension';
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();

  EmrDateRangeValue? _getDateRangeFilter(String key) =>
      queryScope.filters[key] as EmrDateRangeValue?;
}
