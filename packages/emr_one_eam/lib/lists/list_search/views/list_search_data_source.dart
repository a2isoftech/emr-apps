import 'dart:convert';

import 'package:emr_one_core/data/emr_query_graphql_data_source.dart';
import 'package:emr_one_eam/graphql/queries/lists_search.graphql.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:emr_one_eam/lists/controllers/list_search_filter_controller.dart';
import 'package:emr_one_eam/lists/list_search/list_search.dart';

class ListSearchDataSource
    extends EmrQueryGraphQLDataSource<Query$getLists$lists$nodes> {
  ListSearchDataSource({required this.listService});
  final IListService listService;

  @override
  bool get supportsFacets => false;

  @override
  Future<void> refresh() async {
    loading.value = true;
    try {
      await onRefresh.call();
      final freeText = queryScope.query.isEmpty ? null : queryScope.query;
      final filters =
          _getStringFilterList(ListSearchFilterController.kListName);

      final order = queryScope.sortOrder
          .map(
            (e) => Input$AssetManagementListSearchResultSortInput.fromJson(
              jsonDecode('{ "${e.field}": "${e.direction}" }')
                  as Map<String, dynamic>,
            ),
          )
          .toList();
      final (results, meta) = await listService.getQueryLists(
        after: after,
        before: before,
        first: first,
        last: last,
        order: order,
        where: (freeText != null || filters != null)
            ? Input$AssetManagementListSearchResultFilterInput(
                listName: Input$StringOperationFilterInput(
                  contains: freeText,
                  or: filters
                      ?.map(
                        (e) => Input$StringOperationFilterInput(eq: e),
                      )
                      .toList(),
                ),
              )
            : null,
      );
      recordCount = meta.recordCount;
      pageInfo = meta.pageInfo;
      data.value = results;
    } finally {
      loading.value = false;
    }
  }

  List<String>? _getStringFilterList(String key) =>
      (queryScope.filters[key] as List<String?>?)?.whereType<String>().toList();
}
