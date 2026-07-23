import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/services/cat_service.dart';

class TechCatSearchDatasource
    extends EmrQueryGraphQLDataSource<TechCatSearchModel> {
  TechCatSearchDatasource({required this.yardCode, required this.catService});

  final String yardCode;
  final CatRepository catService;

  @override
  bool get supportsFacets => false;

  @override
  Future<void> refresh() async {
    try {
      loading.value = true;

      await onRefresh.call();

      final response = await catService.manualCatsSearch(
        yardCode: yardCode,
        filter: '*${queryScope.query}*',
        first: first,
        last: last,
        before: before,
        after: after,
      );
      if (response.isOk) {
        recordCount = response.response!.totalCount;
        pageInfo = response.response!.pageInfo;
        facets.value = response.response!.facets;
        data.value = response.response!.data;
      }
    } finally {
      loading.value = false;
    }
  }

  @override
  bool get supportsPaging => true;
}
