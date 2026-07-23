import 'package:emr_one_core/data/emr_facet_result.dart';
import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/data/emr_query_graphql_data_source.dart';
import 'package:emr_one_crm/models/guide_price_lists/guide_price_list_line.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_filter_controller.dart';
import 'package:emr_one_crm/screens/pricing-admin/gpl_query_search_filters.dart';
import 'package:emr_one_crm/services/gpl_service.dart';

class GplSearchDataSource
    extends EmrQueryGraphQLDataSource<GuidePriceListLine> {
  GplSearchDataSource({required this.gplService});

  final GplService gplService;

  @override
  bool get supportsFacets => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final partyAccountNos =
        _getStringFilterList(GplFilterController.kPartyAccountNoKey);

    final manager = _getStringFilter(GplFilterController.kManagedBuyerKey)
        ?.replaceAll(' ', '');
    final publicationId = _getIntFilter(
      GplFilterController.kPublicationIdKey,
    );
    final gradeTypes = _getStringFilterList(GplFilterController.kGradeTypeKey);
    final gradeCodes = _getStringFilterList(GplFilterController.kGradeCodeKey);
    final yardCode = _getStringFilterList(GplFilterController.kYardCode);
    final tag = _getStringFilterList(GplFilterController.kTagsKey);
    final expirationDate = _getDateTimeFilter(GplFilterController.kExpiration);
    final filters = GplQuerySearchFilters(
      managedBuyerId: manager,
      partyAccountNos: partyAccountNos,
      publicationId: publicationId,
      gradeTypes: gradeTypes,
      gradeCodes: gradeCodes,
      yardCode: yardCode,
      tag: tag,
      expirationDate: expirationDate,
    );

    final (results, meta) = await gplService.searchPriceLists(
      filters,
      queryScope.query,
      first,
      before,
      after,
      last,
    );
    final facetResults = {
      for (final v in meta.facets.priceListFacet)
        v.key: EmrFacetResult(
          name: switch (v.key) {
            'AccountNo' => 'by account no',
            'Manager' => 'by manager',
            'ProductCode' => 'by product code',
            'Yard' => 'by yard',
            'PublicationId' => 'by publication',
            _ => ''
          },
          values: v.value.values
                  ?.map(
                    (e) => EmrFacetResultValue(
                      text: e?.range?.toUpperCase() ?? '',
                      value: e?.range?.toUpperCase() ?? '',
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

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();

  String? _getStringFilter(String key) => queryScope.filters[key] as String?;
  DateTime? _getDateTimeFilter(String key) =>
      queryScope.filters[key] as DateTime?;
  int? _getIntFilter(String key) => queryScope.filters[key] as int?;
}
