import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/graphql/queries/workspace/workspace_find_elements.graphql.dart';
import 'package:emr_one_core/graphql/schema.graphql.dart';
import 'package:emr_one_core/models/user_dashboards/extensions/extensions.dart';
import 'package:emr_one_core/models/user_dashboards/workspace_library_item.dart';

// The typename, it's so long...
typedef Nodes$$DirectQuery
    = Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery;

class WorkspaceService {
  WorkspaceService({
    required this.httpClient,
    this.defaultCacheTtl = const Duration(
      minutes: 1,
    ),
  }) {
    SharedPrefsCacheProvider.createFromDefaultInstance().then((value) {
      emrCacheProvider = value;
    });
  }

  final CoreApiClient httpClient;
  final Duration defaultCacheTtl;

  EmrCacheProvider? emrCacheProvider;

  Future<List<WorkspaceLibraryItem>> librarySearch(
    String queryText, {
    Duration? cacheTtl,
  }) async {
    final response = await documentNodeQueryworkspaceLibrarySearch.execute(
      httpClient,
      Query$workspaceLibrarySearch.fromJson,
      variables: Variables$Query$workspaceLibrarySearch(
        input: Input$SearchWorkspaceLibraryInput(
          query: queryText,
        ),
      ),
    );

    if (response.hasErrors()) {
      throw Exception(
        'Error fetching workspace library items: ${response.errors}',
      );
    }

    final results = response.data?.workspaceLibrarySearch;

    final items = <WorkspaceLibraryItem>[];

    for (final node in results?.nodes ?? []) {
      if (node is Nodes$$DirectQuery) {
        final directQuery = node.toDirectQueryDefinition();
        items.add(directQuery);
      }
    }

    return items;
  }
}
