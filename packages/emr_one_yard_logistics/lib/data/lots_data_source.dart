import 'package:emr_one_core/data/emr_facet_result_value.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_yard_logistics/data/lots_data.dart';
import 'package:emr_one_yard_logistics/helpers/lot_helpers.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';

class LotsDataSource extends EmrQueryDataSource<Lot>
    with EmrQueryDataSourcePager<Lot> {
  LotsDataSource({required this.ylService});

  final YardLogisticsService ylService;
  final ExportDataService exportDataService = ExportDataService();
  late List<LotCompositionAcronym> lotCompositionAcronyms;

  @override
  bool get autoPopulate => true;

  @override
  bool get supportsFacets => true;

  @override
  Future<void> refresh() async {
    lotCompositionAcronyms =
        await ylService.fetchLotCompositionAcronymsFromCache();

    loading.value = true;

    final listingRequest = getSearchInput();

    final response = await ylService.listLots(listingRequest);

    final facetResults = await ylService.listLotFacets(listingRequest);

    facets.value = facetResults.data!.map(
      (k, v) => MapEntry(
        k,
        EmrFacetResult(
          name: 'BY ${getFacetTitle(k)}',
          values: v.values
              .map(
                (e) => _getFacetValue(k, e),
              )
              .toList(),
        ),
      ),
    );

    recordCount = response.data!.$1;

    pageInfo.hasNextPage = pageNumber < (recordCount ~/ pageSize) + 1;
    pageInfo.hasPreviousPage = pageNumber > 1;

    data.value = response.data!.$2;

    loading.value = false;
  }

  EmrFacetResultValue _getFacetValue(String key, FacetResponseValue e) =>
      switch (key) {
        LotsDataConstants.kTypeFacet => getLotTypeFacetValue(e),
        LotsDataConstants.kStateFacet => getLotStateFacetValue(e),
        LotsDataConstants.kOuterCasingFacet => getOuterInnerFacetValue(e),
        LotsDataConstants.kInnerCompositionFacet => getOuterInnerFacetValue(e),
        LotsDataConstants.kCircumferenceFacet =>
          getLotAssessFacetValue(e, LotsDataConstants.kCircumferenceFacet),
        LotsDataConstants.kDryCopperPercentageFacet => getLotAssessFacetValue(
            e,
            LotsDataConstants.kDryCopperPercentageFacet,
          ),
        LotsDataConstants.kLeadPercentageFacet =>
          getLotAssessFacetValue(e, LotsDataConstants.kLeadPercentageFacet),
        LotsDataConstants.kGreasyCopperPercentageFacet =>
          getLotAssessFacetValue(
            e,
            LotsDataConstants.kGreasyCopperPercentageFacet,
          ),
        LotsDataConstants.kAluminiumPercentageFacet => getLotAssessFacetValue(
            e,
            LotsDataConstants.kAluminiumPercentageFacet,
          ),
        LotsDataConstants.kYardFacet => getYardFacetValue(e),
        _ => EmrFacetResultValue(
            text: e.range ?? '-',
            value: e.range ?? '-',
            count: e.count.toInt(),
          ),
      };

  EmrFacetResultValue getLotStateFacetValue(FacetResponseValue e) {
    final label = switch (e.range) {
      'createdintrade' => 'Created in T2',
      'new' => 'New (Open)',
      _ => e.range ?? '-',
    };

    final labelShort = switch (e.range) {
      'createdintrade' => 'T2',
      'new' => 'New',
      _ => e.range ?? '-',
    };

    return EmrFacetResultValue(
      text: label,
      textShort: labelShort,
      value: e.range ?? '-',
      count: e.count.toInt(),
    );
  }

  EmrFacetResultValue getLotTypeFacetValue(FacetResponseValue e) {
    final label = switch (e.range) {
      'sticks' => 'Sticks/Cable',
      'unknown' => 'Unknown',
      _ => e.range ?? '-',
    };

    final labelShort = switch (e.range) {
      'sticks' => 'Stick',
      'unknown' => 'Unk.',
      _ => e.range ?? '-',
    };

    return EmrFacetResultValue(
      text: label,
      textShort: labelShort,
      value: e.range ?? '-',
      count: e.count.toInt(),
    );
  }

  EmrFacetResultValue getYardFacetValue(FacetResponseValue e) {
    return EmrFacetResultValue(
      text: e.range!.toUpperCase(),
      textShort: e.range!,
      value: e.range ?? '-',
      count: e.count.toInt(),
    );
  }

  EmrFacetResultValue getOuterInnerFacetValue(FacetResponseValue e) {
    final acronym =
        LotHelpers.getAcronymFromComposition(lotCompositionAcronyms, e.range!);
    final longWord = '${e.range!.toUpperCase()} ($acronym)';

    return EmrFacetResultValue(
      text: longWord,
      textShort: acronym,
      value: e.range ?? '-',
      count: e.count.toInt(),
    );
  }

  EmrFacetResultValue getLotAssessFacetValue(
    FacetResponseValue e,
    String percentageFacet,
  ) {
    final label = e.range!
        .replaceAll(percentageFacet, '')
        .replaceAll('between', '')
        .replaceAll('and', 'to');

    return EmrFacetResultValue(
      text: label,
      textShort: label,
      value: e.range ?? '-',
      count: e.count.toInt(),
    );
  }

  @override
  Future<void> moveToStart() async {
    pageNumber = 1;
    await refresh();
  }

  @override
  Future<void> moveToPrevious() async {
    if (pageNumber > 1) {
      pageNumber--;
      await refresh();
    }
  }

  @override
  Future<void> moveToNext() async {
    pageNumber++;
    await refresh();
  }

  @override
  Future<void> moveToEnd() async {
    pageNumber = (recordCount ~/ pageSize) + 1;
    await refresh();
  }

  @override
  Future<void> pageSizeChange(int newPageSize) {
    pageSize = newPageSize;
    pageNumber = 1;
    return refresh();
  }

  String getFacetTitle(String k) => switch (k) {
        LotsDataConstants.kTypeFacet => 'Type',
        LotsDataConstants.kYardFacet => 'Yard',
        LotsDataConstants.kStateFacet => 'State',
        LotsDataConstants.kOuterCasingFacet => 'Outer Casing',
        LotsDataConstants.kCircumferenceFacet => 'Circumference',
        LotsDataConstants.kInnerCompositionFacet => 'Inner Composition',
        LotsDataConstants.kDryCopperPercentageFacet => 'Dry Copper Percentage',
        LotsDataConstants.kLeadPercentageFacet => 'Lead Percentage',
        LotsDataConstants.kGreasyCopperPercentageFacet =>
          'Greasy Copper Percentage',
        LotsDataConstants.kAluminiumPercentageFacet => 'Aluminium Percentage',
        _ => k,
      };

  LotListing getSearchInput() {
    final dateRange = queryScope.filters[LotsDataConstants.kDateRange] != null
        ? queryScope.filters[LotsDataConstants.kDateRange] as EmrDateRangeValue
        : EmrDateRangeValue(null, null);

    return LotListing(
      search: queryScope.query,
      skip: pageSize * (pageNumber - 1),
      take: pageSize,
      orderBy: ['-id'],
      outerCasingFilter:
          queryScope.filters[LotsDataConstants.kOuterCasingFacet] != null
              ? queryScope.filters[LotsDataConstants.kOuterCasingFacet]
                  as List<String>
              : [],
      innerCompositionFilter:
          queryScope.filters[LotsDataConstants.kInnerCompositionFacet] != null
              ? queryScope.filters[LotsDataConstants.kInnerCompositionFacet]
                  as List<String>
              : [],
      startDate: dateRange.startDate,
      endDate: dateRange.endDate,
      yards: queryScope.filters[LotsDataConstants.kYardFacet] != null
          ? queryScope.filters[LotsDataConstants.kYardFacet] as List<String>
          : [],
      lotTypes:
          _getAndConvertLotTypeStringIntoEnum(LotsDataConstants.kTypeFacet),
    );
  }

  List<LotType> _getAndConvertLotTypeStringIntoEnum(String key) {
    final filterValues = (queryScope.filters[key] as List<String?>?)
        ?.whereType<String>()
        .toList();
    if (filterValues != null) {
      final statuses = LotType.values.where(
        (element) => filterValues
            .map((x) => x.toLowerCase())
            .contains(element.name.toLowerCase()),
      );
      return statuses.toList();
    } else {
      return [];
    }
  }

  Future<void> exportLotsData() async {
    loading.value = true;
    final listingRequest = getSearchInput();
    final exportData = await ylService.exportLots(listingRequest);
    final exportFileName = getFileName('ExportedLots', 'csv');
    loading.value = false;

    return exportDataService.downloadFileWeb(
      fileName: exportFileName,
      data: exportData.data,
    );
  }

  String getFileName(String prefix, String extension) {
    final date = DateTime.now();
    return '${prefix}_${date.year}_${date.month}_'
        '${date.day}_${date.hour}_${date.second}.$extension';
  }
}
