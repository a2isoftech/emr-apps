import 'package:emr_one_core/emr_one_core.dart';

class AccountManagementGridDataSource<T> extends EmrQueryGraphQLDataSource<T> {
  AccountManagementGridDataSource({
    required this.gridData,
    this.toObjectString,
  });

  final List<T> gridData;
  final String Function(T)? toObjectString;

  @override
  bool get autoPopulate => true;

  @override
  bool get supportsPaging => false;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final gridDataFiltered = toObjectString == null ? gridData : filterData();

    // Update the data source with the new data.
    // NOTE: data.value MUST ALWAYS BE SET LAST WHEN USING PAGING.
    recordCount = gridDataFiltered.length;
    pageInfo = EmrQueryGraphQLPageInfo(
      hasPreviousPage: false,
      hasNextPage: false,
      startCursor: '',
      endCursor: '',
    );
    data.value = gridDataFiltered;

    loading.value = false;
  }

  List<T> filterData() {
    if (queryScope.query.isEmpty) return gridData;
    return gridData
        .where(
          (item) => toObjectString!(item)
              .toLowerCase()
              .contains(queryScope.query.toLowerCase()),
        )
        .toList();
  }
}
