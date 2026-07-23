import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/graphql/mutations/update_list.graphql.dart';
import 'package:emr_one_eam/graphql/queries/list_values.graphql.dart';
import 'package:emr_one_eam/graphql/queries/lists_search.graphql.dart';
import 'package:emr_one_eam/graphql/schema.graphql.dart';
import 'package:emr_one_eam/models/list_search_result.dart';
import 'package:emr_one_eam/models/list_value.dart';
import 'package:emr_one_eam/models/page_info.dart';
import 'package:emr_one_eam/models/paginated_response.dart';
import 'package:emr_one_eam/models/update_list_model.dart';

abstract class IListService extends BaseService {
  IListService({required super.httpClient});

  Future<List<ListValue>> getListValues({
    required String listName,
    String? parameter,
  });

  Future<PaginatedResponse<ListSearchResult>> getLists({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AssetManagementListSearchResultFilterInput? where,
  });
  Future<
      (
        List<Query$getLists$lists$nodes>,
        EmrQueryGraphQLMetadata<Query$getLists$lists>
      )> getQueryLists({
    String? after,
    String? before,
    int? first,
    int? last,
    List<Input$AssetManagementListSearchResultSortInput>? order,
    Input$AssetManagementListSearchResultFilterInput? where,
  });
  Future<ListSearchResult?> updateList({
    UpdateListModel? updateListModel,
  });
}

class ListService extends IListService {
  ListService({required super.httpClient});

  @override
  Future<List<ListValue>> getListValues({
    required String listName,
    String? parameter,
  }) async {
    final results = await documentNodeQueryGetListValues.execute(
      httpClient,
      Query$GetListValues.fromJson,
      variables: Variables$Query$GetListValues(
        listName: listName,
        parameter: parameter,
      ),
    );

    if (results.hasErrors() || results.data?.listValues == null) {
      return [];
    }

    return results.data!.listValues
        .map((e) => ListValue.fromJson(e.toJson()))
        .toList();
  }

  @override
  Future<
      (
        List<Query$getLists$lists$nodes>,
        EmrQueryGraphQLMetadata<Query$getLists$lists>
      )> getQueryLists({
    String? after,
    String? before,
    int? first,
    int? last,
    List<Input$AssetManagementListSearchResultSortInput>? order,
    Input$AssetManagementListSearchResultFilterInput? where,
  }) async {
    final results = await documentNodeQuerygetLists.execute(
      httpClient,
      Query$getLists.fromJson,
      variables: Variables$Query$getLists(
        after: after,
        before: before,
        first: first,
        last: last,
        where: where,
        order: order,
      ),
    );

    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (
      results.data?.lists?.nodes ?? [],
      EmrQueryGraphQLMetadata<Query$getLists$lists>(
        results.data!.lists!,
        results.data?.lists?.totalCount ?? 0,
        EmrQueryGraphQLPageInfo(
          hasPreviousPage:
              results.data?.lists?.pageInfo.hasPreviousPage ?? false,
          hasNextPage: results.data?.lists?.pageInfo.hasNextPage ?? false,
          startCursor: results.data?.lists?.pageInfo.startCursor,
          endCursor: results.data?.lists?.pageInfo.endCursor,
        ),
      )
    );
  }

  @override
  Future<PaginatedResponse<ListSearchResult>> getLists({
    String? after,
    String? before,
    int? first,
    int? last,
    Input$AssetManagementListSearchResultFilterInput? where,
  }) async {
    final results = await documentNodeQuerygetLists.execute(
      httpClient,
      Query$getLists.fromJson,
      variables: Variables$Query$getLists(
        after: after,
        before: before,
        first: first,
        last: last,
        where: where,
      ),
    );
    if (results.hasErrors() || results.data?.lists == null) {
      return PaginatedResponse(
        pageInfo: PageInfo.empty(),
        totalCount: 0,
        results: [],
      );
    }

    return PaginatedResponse(
      pageInfo: PageInfo.fromJson(results.data!.lists!.pageInfo.toJson()),
      totalCount: results.data!.lists!.totalCount,
      results: results.data!.lists!.nodes!
          .map((e) => ListSearchResult.fromJson(e.toJson()))
          .toList(),
    );
  }

  @override
  Future<ListSearchResult?> updateList({
    UpdateListModel? updateListModel,
  }) async {
    final results = await documentNodeMutationUpdateList.execute(
      httpClient,
      Mutation$UpdateList.fromJson,
      variables: Variables$Mutation$UpdateList(
        input: Input$UpdateListInput(
          id: updateListModel?.id ?? '',
          name: updateListModel?.name ?? '',
          values: updateListModel?.values
                  ?.map(
                    (e) => Input$ListValueRecordInput(
                      oldValue: Input$ListValueInput(
                        text: e.oldValue?.text ?? '',
                        value: e.oldValue?.value ?? '',
                        orderIndex: e.oldValue?.orderIndex ?? -1,
                        active: e.oldValue?.active ?? false,
                      ),
                      newValue: Input$ListValueInput(
                        text: e.newValue?.text ?? '',
                        value: e.newValue?.value ?? '',
                        orderIndex: e.newValue?.orderIndex ?? -1,
                        active: e.newValue?.active ?? false,
                      ),
                    ),
                  )
                  .toList() ??
              [],
        ),
      ),
    );

    if (results.hasErrors() || results.data?.updateList == null) {
      return null;
    }

    return ListSearchResult.fromJson(
      results.data?.updateList?.toJson() ?? ListSearchResult().toJson(),
    );
  }
}
