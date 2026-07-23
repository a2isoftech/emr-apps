import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/query_layout_example/controllers/fruits_filters_controller.dart';
import 'package:emr_one_data_management/screens/query_layout_example/models/fruit.dart';

/// This is the example 'Data Source' for the `FruitsScreenExample`.
///
/// This is a simple data source which sources its data from a static list
/// of fruits `kSampleFruits` defined in `fruits_sample_data.dart`.
class FruitDataSource extends EmrQueryDataSource<Fruit>
    with EmrQueryDataSourcePager<Fruit> {
  int? first = 50;

  int? last;

  @override
  bool get autoPopulate => true;

  @override
  bool get supportsFacets => false;

  @override
  Future<void> refresh() async {
    loading.value = true;

    // get a page of data from `kSampleFruits`
    final startIndex = (pageNumber - 1) * pageSize;
    final endIndex = startIndex + pageSize;

    var res = <Fruit>[];

    final colourFilter = _getStringFilter(FruitsFiltersController.kFruitColour);

    res = kSampleFruits
        .where(
          (fruit) => colourFilter == null || fruit.color == colourFilter,
        )
        .where(
          (fruit) =>
              queryScope.query.isEmpty ||
              fruit.name.toLowerCase().contains(
                    queryScope.query.toLowerCase(),
                  ),
        )
        .toList();

    final results = res.sublist(
      startIndex,
      endIndex > res.length ? res.length : endIndex,
    );

    recordCount = res.length;
    pageInfo.hasNextPage = startIndex + pageSize < kSampleFruits.length;
    pageInfo.hasPreviousPage = pageNumber > 1;

    data.value = results;

    loading.value = false;
  }

  @override
  Future<void> moveToStart() =>
      _setPageProperties(pageNumber: 1, first: pageSize);

  @override
  Future<void> moveToPrevious() => _setPageProperties(
        pageNumber: pageNumber - 1,
        last: pageSize,
      );

  @override
  Future<void> moveToNext() => _setPageProperties(
        pageNumber: pageNumber + 1,
        first: pageSize,
      );

  @override
  Future<void> moveToEnd() {
    final numberOfPages = (recordCount / pageSize).ceil();
    final numberOfRecordsOnLastPage = recordCount % pageSize;

    return _setPageProperties(
      pageNumber: numberOfPages,
      last:
          // When numberOfRecordsOnLastPage is 0, we have a full last page.
          numberOfRecordsOnLastPage == 0 ? pageSize : numberOfRecordsOnLastPage,
    );
  }

  @override
  Future<void> pageSizeChange(int newPageSize) async {
    pageSize = newPageSize;

    await moveToStart();
  }

  Future<void> _setPageProperties({
    required int pageNumber,
    int? first,
    int? last,
  }) async {
    this.pageNumber = pageNumber;
    this.first = first;
    this.last = last;

    await refresh();
  }

  String? _getStringFilter(String key) => queryScope.filters[key] as String?;
}
