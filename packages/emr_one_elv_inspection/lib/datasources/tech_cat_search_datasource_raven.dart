import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/techemat_manual_cat.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection_raven_migration.dart';

class TechCatSearchDatasource
    extends EmrQueryGraphQLDataSource<TechemetManualCat> {
  TechCatSearchDatasource({required this.yardCode, required this.service});

  final String yardCode;
  final InspectionServiceRaven service;

  @override
  bool get supportsFacets => false;

  @override
  bool get supportsPaging => true;

  @override
  bool get autoPopulate => true;

  @override
  Future<void> refresh() async {
    try {
      loading.value = true;

      await onRefresh.call();

      final response = await service.manualCatsSearch(
        yardCode: yardCode,
        filter: '*${queryScope.query}*',
        first: first,
        last: last,
        before: before,
        after: after,
      );
      if (response != null) {
        recordCount = response.totalCount;
        pageInfo = response.pageInfo;
        facets.value = response.facets;
        data.value = response.data;
      }
    } finally {
      loading.value = false;
    }
  }
}
