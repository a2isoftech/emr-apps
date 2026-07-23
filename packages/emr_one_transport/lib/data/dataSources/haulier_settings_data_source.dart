import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/haulier_settings/haulier_settings.dart';
import 'package:emr_one_transport/data/services/haulier_settings_service.dart';

class HaulierSettingsDataSource
    extends EmrQueryGraphQLDataSource<HaulierSettings> {
  HaulierSettingsDataSource({required this.haulierSettingsService});

  final HaulierSettingsService haulierSettingsService;
  int? pageSizeForLastPage;

  @override
  bool get supportsPaging => true;

  @override
  Future<void> moveToEnd() {
    final numberOfPages = (recordCount / pageSize).ceil();
    final numberOfRecordsOnLastPage = recordCount % pageSize;
    pageSizeForLastPage =
        numberOfRecordsOnLastPage == 0 ? pageSize : numberOfRecordsOnLastPage;

    return _setPageProperties(
      pageNumber: numberOfPages,
      last:
          // When numberOfRecordsOnLastPage is 0, we have a full last page.
          numberOfRecordsOnLastPage == 0 ? pageSize : numberOfRecordsOnLastPage,
      before: base64Encode(utf8.encode(recordCount.toString())),
    );
  }

  @override
  Future<void> refresh() async {
    loading.value = true;
    final paginationInfo = PagedFilterRequest(
      searchTerm: queryScope.query.toLowerCase(),
      pageNumber,
      pageSizeForLastPage ?? pageSize,
      before: before,
      after: after,
    );
    final hauliersList =
        await haulierSettingsService.getHaulierSettings(paginationInfo);
    pageSizeForLastPage =
        pageSizeForLastPage != null ? null : pageSizeForLastPage;
    recordCount = hauliersList.totalItems;
    final hasNextPage = pageNumber < (recordCount ~/ pageSize) + 1;
    final hasPreviousPage = pageNumber > 1;
    pageInfo = EmrQueryGraphQLPageInfo(
      hasPreviousPage: hasPreviousPage,
      hasNextPage: hasNextPage,
      startCursor: hauliersList.pageInfo?.startCursor,
      endCursor: hauliersList.pageInfo?.endCursor,
    );
    data.value = hauliersList.data ?? [];
    loading.value = false;
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
