import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';

class GroupsService {
  GroupsService({
    required this.httpClient,
    required this.defaultCacheTtl,
    required this.emrCacheProvider,
  });
  final ResilientHttpClient httpClient;
  final Duration defaultCacheTtl;

  final EmrCacheProvider? emrCacheProvider;

  Future<PaginatedResponse<List<AdGroup>>> getGroups({
    String? after,
    String? before,
    int? first,
    int? last,
    String? sortBy,
    List<String>? groupIds,
  }) async {
    final results = await documentNodeQueryGetGroups.execute(
      httpClient,
      Query$GetGroups.fromJson,
      variables: Variables$Query$GetGroups(
        after: after,
        before: before,
        first: first,
        last: last,
        groupIds: groupIds,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return PaginatedResponse(
      (results.data?.groups?.nodes ?? [])
          .map(
            (u) => AdGroup(
              azureId: u.azureId ?? '',
              name: u.name,
              users: u.users,
              lastUpdatedFromAzureAdOn: u.lastUpdatedFromAzureAdOn,
              id: u.id,
              accessPoints: _mapAccessPointsFromGql(u.accessPoints),
            ),
          )
          .toList(),
      EmrQueryGraphQLPageInfo(
        endCursor: results.data?.groups?.pageInfo.endCursor,
        hasNextPage: results.data?.groups?.pageInfo.hasNextPage ?? false,
        hasPreviousPage:
            results.data?.groups?.pageInfo.hasPreviousPage ?? false,
        startCursor: results.data?.groups?.pageInfo.startCursor,
      ),
      results.data?.groups?.totalCount ?? 0,
    );
  }

  Future<List<AdGroup>> getAllGroups({List<String>? groupIds}) async {
    final results = await documentNodeQueryGetAllGroups.execute(
      httpClient,
      Query$GetAllGroups.fromJson,
      variables: Variables$Query$GetAllGroups(groupIds: groupIds),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (results.data?.allGroups ?? [])
        .map(
          (u) => AdGroup(
            azureId: u.azureId ?? '',
            name: u.name,
            users: u.users,
            lastUpdatedFromAzureAdOn: u.lastUpdatedFromAzureAdOn,
            id: u.id,
            accessPoints: _mapAccessPointsFromGqlAllGroups(u.accessPoints),
          ),
        )
        .toList();
  }

  Map<String, AccessProfile> _mapAccessPointsFromGql(
    List<Query$GetGroups$groups$nodes$accessPoints>? list,
  ) {
    if (list == null) return {};

    return {
      for (final item in list)
        item.key: AccessProfile(
          externalId: item.value.externalId,
          name: item.value.name,
          description: item.value.description,
        ),
    };
  }

  Map<String, AccessProfile> _mapAccessPointsFromGqlAllGroups(
    List<Query$GetAllGroups$allGroups$accessPoints>? list,
  ) {
    if (list == null) return {};

    return {
      for (final item in list)
        item.key: AccessProfile(
          externalId: item.value.externalId,
          name: item.value.name,
          description: item.value.description,
        ),
    };
  }

  Future<List<AdGroup>> searchAdGroups({required String searchQuery}) async {
    final results = await documentNodeQuerySearchAdGroups.execute(
      httpClient,
      Query$SearchAdGroups.fromJson,
      variables: Variables$Query$SearchAdGroups(searchQuery: searchQuery),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (results.data?.adGroups ?? [])
        .map((u) => AdGroup(azureId: u.azureId ?? '', name: u.name, id: u.id))
        .toList();
  }

  Future<bool> pullNewGroupFromAAD({required String groupId}) async {
    final response = await documentNodeMutationPullNewGroupFromAD.execute(
      httpClient,
      Mutation$PullNewGroupFromAD.fromJson,
      variables: Variables$Mutation$PullNewGroupFromAD(groupId: groupId),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    final result = response.data?.pullNewGroupFromAD ?? false;

    StaticData.ignoreCache = result;

    return result;
  }
}
