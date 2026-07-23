import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';

class UsersService {
  UsersService({
    required this.httpClient,
    required this.defaultCacheTtl,
    required this.emrCacheProvider,
  });

  final ResilientHttpClient httpClient;
  final Duration defaultCacheTtl;

  final EmrCacheProvider? emrCacheProvider;

  Future<PaginatedResponse<List<DoorAccessUser>>> getUsers({
    String? after,
    String? before,
    int? first,
    int? last,
    String? sortBy,
    List<String>? userIds,
  }) async {
    final results = await documentNodeQueryGetUsers.execute(
      httpClient,
      Query$GetUsers.fromJson,
      variables: Variables$Query$GetUsers(
        after: after,
        before: before,
        first: first,
        last: last,
        userIds: userIds,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return PaginatedResponse(
      (results.data?.users?.nodes ?? [])
          .map(
            (u) => DoorAccessUser(
              azureId: u.azureId ?? '',
              name: u.name,
              userName: u.userName,
              cardNumber: u.cardNumber,
              externalId: u.externalId,
              id: u.id,
              groups: (u.groups ?? []).map((g) => g.id).toList(),
            ),
          )
          .toList(),
      EmrQueryGraphQLPageInfo(
        endCursor: results.data?.users?.pageInfo.endCursor,
        hasNextPage: results.data?.users?.pageInfo.hasNextPage ?? false,
        hasPreviousPage: results.data?.users?.pageInfo.hasPreviousPage ?? false,
        startCursor: results.data?.users?.pageInfo.startCursor,
      ),
      results.data?.users?.totalCount ?? 0,
    );
  }

  Future<List<DoorAccessUser>> getAllUsers({List<String>? userIds}) async {
    final results = await documentNodeQueryGetAllUsers.execute(
      httpClient,
      Query$GetAllUsers.fromJson,
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (results.data?.allUsers ?? [])
        .map(
          (u) => DoorAccessUser(
            azureId: u.azureId ?? '',
            name: u.name,
            userName: u.userName,
            cardNumber: u.cardNumber,
            externalId: u.externalId,
            id: u.id,
            groups: (u.groups ?? []).map((g) => g.id).toList(),
          ),
        )
        .toList();
  }

  Future<PaginatedResponse<List<DoorAccessUser>>> getUserDetails({
    String? after,
    String? before,
    int? first,
    int? last,
    String? sortBy,
    List<String>? userIds,
  }) async {
    final results = await documentNodeQueryGetUserDetails.execute(
      httpClient,
      Query$GetUserDetails.fromJson,
      variables: Variables$Query$GetUserDetails(
        after: after,
        before: before,
        first: first,
        last: last,
        userIds: userIds,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return PaginatedResponse(
      (results.data?.users?.nodes ?? [])
          .map(
            (u) => DoorAccessUser(
              azureId: u.azureId ?? '',
              name: u.name,
              userName: u.userName,
              cardNumber: u.cardNumber,
              externalId: u.externalId,
              id: u.id,
              groupDetails: (u.groups ?? [])
                  .map(
                    (g) => AdGroup(name: g.name, id: g.id, azureId: g.azureId),
                  )
                  .toList(),
              groups: (u.groups ?? []).map((g) => g.id).toList(),
              doorAccessAttemptEvents: (u.events ?? [])
                  .map(
                    (g) => DoorAccessAttemptEvent(
                      rowId: g.rowId,
                      accessControllerId: g.accessControllerId,
                      utcTime: g.utcTime,
                      accessPointId: g.accessPointId,
                      accessPointName: g.accessPointName,
                      cardNumber: g.cardNumber,
                      email: g.email,
                      topic0: g.topic0,
                      topic1: g.topic1,
                      topic2: g.topic2,
                      userId: g.userId,
                      accessPointRestricted: g.accessPointRestricted,
                    ),
                  )
                  .toList(),
            ),
          )
          .toList(),
      EmrQueryGraphQLPageInfo(
        endCursor: results.data?.users?.pageInfo.endCursor,
        hasNextPage: results.data?.users?.pageInfo.hasNextPage ?? false,
        hasPreviousPage: results.data?.users?.pageInfo.hasPreviousPage ?? false,
        startCursor: results.data?.users?.pageInfo.startCursor,
      ),
      results.data?.users?.totalCount ?? 0,
    );
  }
}
