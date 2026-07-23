import 'dart:convert';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class TicketService {
  TicketService({
    required this.httpClient,
  });

  final CoreApiClient httpClient;

  Future<List<CommoditySourceTypes>> commodityServiceTypes(String query) async {
    var formattedSearchQuery = '';
    if (query.isNotEmpty) {
      final tokens = query.split(' ');
      formattedSearchQuery = '*${tokens.join('* ')}*';
    } else {
      formattedSearchQuery = '*';
    }

    final input = Input$CommoditySourceTypeInput(query: formattedSearchQuery);

    final response = await documentNodeQuerysearchCommoditySourceTypes.execute(
      httpClient,
      Query$searchCommoditySourceTypes.fromJson,
      variables: Variables$Query$searchCommoditySourceTypes(input: input),
    );

    return response.data?.searchCommoditySourceTypes
            .map((element) => CommoditySourceTypes.fromJson(element.toJson()))
            .toList() ??
        [];
  }

  Future<GraphQLResponse<List<SyncWeighbridgeTicketTask>>> syncTicketTasks(
    List<String> taskIds,
  ) =>
      documentNodeMutationsyncWeighbridgeTicketTasksSyncAll.execute(
        httpClient,
        (data) {
          final result =
              Mutation$syncWeighbridgeTicketTasksSyncAll.fromJson(data);
          return result.syncWeighbridgeTicketTasks
              .map(
                (task) => SyncWeighbridgeTicketTask.fromJson(task.toJson()),
              )
              .toList();
        },
        variables: Variables$Mutation$syncWeighbridgeTicketTasksSyncAll(
          taskIds: taskIds,
        ),
      );

  Future<
      ApiResponse<
          (
            List<SyncWeighbridgeTicketTask>,
            EmrQueryGraphQLMetadata<dynamic>
          )>> getSyncTicketTasks({
    String? query,
    List<String>? yardCodes,
    List<String>? ticketIds,
    bool? isCompleted,
    String? before,
    String? after,
    int? first,
    int? last,
    List<EmrQueryScopeSortOrder>? sortOrder,
  }) async {
    try {
      final order = sortOrder
          ?.map(
            (e) => Input$SyncWeighbridgeTicketTaskSortInput.fromJson(
              jsonDecode('{ "${e.field}": "${e.direction}" }')
                  as Map<String, dynamic>,
            ),
          )
          .toList();

      final response =
          await documentNodeQuerysearchSyncWeighbridgeTicketTasks.execute(
        httpClient,
        Query$searchSyncWeighbridgeTicketTasks.fromJson,
        variables: Variables$Query$searchSyncWeighbridgeTicketTasks(
          input: Input$SyncWeighbridgeTicketTasksSearchInput(
            isComplete: isCompleted,
            query: query,
            yardCodes: yardCodes,
            ticketIds: ticketIds,
          ),
          before: before,
          after: after,
          first: first,
          last: last,
          order: order,
        ),
      );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: response.errors!.map((error) => error.message).join(','),
        );
      }

      if (response.data == null) {
        return ApiResponse(
          success: false,
          message: 'Failed to load sync weighbridges sync ticket tasks',
        );
      }

      final ticketTasks = response.data?.searchSyncWeighbridgeTicketTasks?.nodes
              ?.map(
                (ticketTask) =>
                    SyncWeighbridgeTicketTask.fromJson(ticketTask.toJson()),
              )
              .toList() ??
          [];
      final totalRecords = ticketTasks.length;

      return ApiResponse(
        data: (
          ticketTasks,
          EmrQueryGraphQLMetadata<dynamic>(
            <dynamic, dynamic>{},
            totalRecords,
            EmrQueryGraphQLPageInfo(
              hasPreviousPage: response.data?.searchSyncWeighbridgeTicketTasks
                      ?.pageInfo.hasPreviousPage ??
                  false,
              hasNextPage: response.data?.searchSyncWeighbridgeTicketTasks
                      ?.pageInfo.hasNextPage ??
                  false,
              startCursor: response
                  .data?.searchSyncWeighbridgeTicketTasks?.pageInfo.startCursor,
              endCursor: response
                  .data?.searchSyncWeighbridgeTicketTasks?.pageInfo.endCursor,
            ),
          ),
        ),
      );
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'Failed to load sync ticket tasks',
      );
    }
  }

  Future<List<String>> searchSyncTaskTicketIdSuggestions(
    String searchText, {
    List<String>? yardCodes,
    bool? isCompleted,
  }) async {
    final results =
        await documentNodeQuerysearchSyncTaskTicketIdSuggestions.execute(
      httpClient,
      Query$searchSyncTaskTicketIdSuggestions.fromJson,
      variables: Variables$Query$searchSyncTaskTicketIdSuggestions(
        input: Input$SyncWeighbridgeTicketTasksSuggestionsInput(
          yardCodes: yardCodes,
          isCompleted: isCompleted,
        ),
        searchText: searchText,
      ),
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return results.data?.searchSyncTaskTicketIdSuggestions ?? [];
  }

  Future<LockTicketResponse> unlockTicket(String ticketId) async {
    final results = await documentNodeMutationunlockTicket.execute(
      httpClient,
      Mutation$unlockTicket.fromJson,
      variables: Variables$Mutation$unlockTicket(
        ticketIdToUnlock: ticketId,
      ),
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }
    return results.data?.lockTicket.unlockResponse != null
        ? LockTicketResponse.fromJson(
            results.data!.lockTicket.unlockResponse!.toJson(),
          )
        : LockTicketResponse(isSuccess: false, ticketId: ticketId);
  }
}
