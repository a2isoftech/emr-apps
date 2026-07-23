import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/company.dart';

class CompanyDataSource extends EmrQueryGraphQLDataSource<Company> {
  CompanyDataSource({required this.coreApiService, required this.errorHandler});

  final CoreApiService coreApiService;
  final void Function(String) errorHandler;

  @override
  bool get autoPopulate => true;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final response = await coreApiService.referenceData.getCompanies(
      first: first,
      last: last,
      query: queryScope.query,
      before: before,
      after: after,
      sortOrders: queryScope.sortOrder,
    );

    if (response.success == false || response.data == null) {
      loading.value = false;
      errorHandler(response.message);
      return;
    }

    final companies = response.data!.$1;
    final meta = response.data!.$2;

    recordCount = meta.recordCount;
    pageInfo = meta.pageInfo;
    data.value = companies;

    loading.value = false;
  }
}
