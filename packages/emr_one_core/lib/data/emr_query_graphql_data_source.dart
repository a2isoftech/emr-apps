import 'package:emr_one_core/emr_one_core.dart';

/// This class extends EmrQueryDataSource<T> and adds GraphQL properties.
abstract class EmrQueryGraphQLDataSource<T> extends EmrQueryDataSource<T> {
  /// Information about the page.
  EmrQueryGraphQLPageInfo pageInfo = EmrQueryGraphQLPageInfo(
    hasPreviousPage: false,
    hasNextPage: false,
    startCursor: null,
    endCursor: null,
  );

  String? before;

  String? after;

  int? first = 50;

  int? last;

  @override
  Future<void> moveToStart() =>
      _setPageProperties(pageNumber: 1, first: pageSize);

  @override
  Future<void> moveToPrevious() => _setPageProperties(
        pageNumber: pageNumber - 1,
        before: pageInfo.startCursor,
        last: pageSize,
      );

  @override
  Future<void> moveToNext() => _setPageProperties(
        pageNumber: pageNumber + 1,
        after: pageInfo.endCursor,
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
    String? before,
    String? after,
    int? first,
    int? last,
  }) async {
    this.pageNumber = pageNumber;
    this.before = before;
    this.after = after;
    this.first = first;
    this.last = last;

    await refresh();
  }
}
