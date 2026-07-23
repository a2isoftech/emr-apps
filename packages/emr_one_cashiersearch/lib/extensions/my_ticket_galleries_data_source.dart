import 'dart:convert';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';

class MyTicketGalleriesDataSource extends EmrQueryGraphQLDataSource<
    Query$getMyEdgeTicketGalleries$myEdgeTicketGalleries$nodes> {
  MyTicketGalleriesDataSource({required this.ticketGalleryService});

  final TicketGalleryService ticketGalleryService;

  @override
  bool get supportsFacets => false;

  @override
  Future<void> refresh() async {
    loading.value = true;

    await onRefresh.call();

    final order = queryScope.sortOrder
        .map(
          (e) => Input$EdgeTicketGallerySortInput.fromJson(
            jsonDecode('{ "${e.field}": "${e.direction}" }')
                as Map<String, dynamic>,
          ),
        )
        .toList();

    final results = await ticketGalleryService.getMyTicketGalleries(
      query: queryScope.query,
      order: order,
      before: before,
      after: after,
      first: first,
      last: last,
    );

    // Update the data source with the new data.
    // NOTE: data.value MUST ALWAYS BE SET LAST WHEN USING PAGING.
    recordCount = results.myEdgeTicketGalleries!.totalCount;
    final localPageInfo = results.myEdgeTicketGalleries!.pageInfo;
    pageInfo = EmrQueryGraphQLPageInfo(
      hasPreviousPage: localPageInfo.hasPreviousPage,
      hasNextPage: localPageInfo.hasNextPage,
      startCursor: localPageInfo.startCursor,
      endCursor: localPageInfo.endCursor,
    );

    data.value = results.myEdgeTicketGalleries!.nodes ?? [];
    loading.value = false;
  }
}
