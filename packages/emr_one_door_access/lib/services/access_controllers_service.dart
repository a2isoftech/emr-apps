import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:emr_one_door_access/models/door_schedule_state.dart';

class AccessControllersService {
  AccessControllersService({
    required this.httpClient,
    required this.defaultCacheTtl,
    required this.emrCacheProvider,
  });
  final ResilientHttpClient httpClient;
  final Duration defaultCacheTtl;

  final EmrCacheProvider? emrCacheProvider;
  String source = 'AccessControllersService';

  Future<PaginatedResponse<List<AccessController>>> getAccessControllers({
    String? after,
    String? before,
    int? first,
    int? last,
    String? sortBy,
    String? siteId,
    EmrCacheProvider? emrCacheProvider,
  }) async {
    final results = await documentNodeQueryGetAccessControllers.execute(
      httpClient,
      Query$GetAccessControllers.fromJson,
      variables: Variables$Query$GetAccessControllers(
        after: after,
        before: before,
        first: first,
        last: last,
        siteId: siteId,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return PaginatedResponse(
      (results.data?.accessControllers?.nodes ?? [])
          .map(
            (u) => AccessController(
              id: u.id,
              name: u.name,
              site: u.site,
              location: LatLong(
                latitude: u.location.latitude,
                longitude: u.location.longitude,
              ),
              uri: u.uri,
              username: u.username,
              password: '',
              active: u.active,
              accessPoints: (u.accessPoints ?? []).map((a) => a.id).toList(),
              externalId: u.externalId,
              externalName: u.externalName,
              accessPointObjects: u.accessPoints
                  ?.map(
                    (a) => AccessPoint(
                      id: a.id,
                      restricted: a.restricted,
                      externalId: a.externalId,
                      entity: a.entity,
                      accessControllerId: u.id,
                      name: a.name,
                      groups: [],
                    ),
                  )
                  .toList(),
              schedules: u.schedules
                  ?.map(
                    (s) => Schedule(
                      token: s.token,
                      name: s.name,
                      description: s.description,
                      scheduleDefinition: '',
                      attribute: [],
                      exceptionScheduleDefinition: '',
                    ),
                  )
                  .toList(),
              doors: [],
            ),
          )
          .toList(),
      EmrQueryGraphQLPageInfo(
        endCursor: results.data?.accessControllers?.pageInfo.endCursor,
        hasNextPage:
            results.data?.accessControllers?.pageInfo.hasNextPage ?? false,
        hasPreviousPage:
            results.data?.accessControllers?.pageInfo.hasPreviousPage ?? false,
        startCursor: results.data?.accessControllers?.pageInfo.startCursor,
      ),
      results.data?.accessControllers?.totalCount ?? 0,
    );
  }

  Future<PaginatedResponse<List<AccessCredential>>> searchAccessCredentials({
    required Input$SearchAccessCredentialsInput input,
    String? after,
    String? before,
    int? first,
    int? last,
    String? sortBy,
    EmrCacheProvider? emrCacheProvider,
  }) async {
    final results = await documentNodeQueryGetAccessCredentials.execute(
      httpClient,
      Query$GetAccessCredentials.fromJson,
      variables: Variables$Query$GetAccessCredentials(
        after: after,
        before: before,
        first: first,
        last: last,
        input: input,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return PaginatedResponse(
      (results.data?.searchAccessCredentials?.nodes ?? [])
          .map(
            (u) => AccessCredential(
              id: u.id,
              accessPointId: u.accessPointId,
              createdInDoorControllerOn: u.createdInDoorControllerOn,
              createdOn: u.createdOn,
              deletedInDoorControllerOn: u.deletedInDoorControllerOn,
              deletedOn: u.deletedOn,
              modifiedBy: u.modifiedBy,
              modifiedOn: u.modifiedOn,
              accessController: AccessController(
                id: u.accessControllers.id,
                name: u.accessControllers.name,
                site: '',
                location: LatLong(latitude: 0, longitude: 0),
                uri: '',
                username: '',
                password: '',
                accessPoints: [],
                externalId: '',
                externalName: '',
                doors: [],
              ),
              accessPoint: AccessPoint(
                id: u.accessPoints.id,
                restricted: u.accessPoints.restricted,
                externalId: '',
                entity: '',
                accessControllerId: u.accessControllers.id,
                name: u.accessPoints.name,
                groups: [],
              ),
              user: User(
                id: u.users.id,
                name: u.users.name,
                active: u.users.active,
                userName: u.users.userName,
                azureId: u.users.azureId ?? '',
                cardNumber: u.users.cardNumber,
                externalId: u.users.externalId ?? '',
              ),
              group: Group(
                azureId: u.groups.azureId ?? '',
                active: u.groups.active,
                name: u.groups.name,
                id: u.groups.id,
              ),
              active: u.active,
              externalId: u.externalId ?? '',
            ),
          )
          .toList(),
      EmrQueryGraphQLPageInfo(
        endCursor: results.data?.searchAccessCredentials?.pageInfo.endCursor,
        hasNextPage:
            results.data?.searchAccessCredentials?.pageInfo.hasNextPage ??
            false,
        hasPreviousPage:
            results.data?.searchAccessCredentials?.pageInfo.hasPreviousPage ??
            false,
        startCursor:
            results.data?.searchAccessCredentials?.pageInfo.startCursor,
      ),
      results.data?.searchAccessCredentials?.totalCount ?? 0,
    );
  }

  Future<List<AccessController>> getAllAccessControllers({
    String? siteId,
  }) async {
    final results = await documentNodeQueryGetAllAccessControllers.execute(
      httpClient,
      Query$GetAllAccessControllers.fromJson,
      variables: Variables$Query$GetAllAccessControllers(siteId: siteId),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (results.data?.allAccessControllers ?? [])
        .map(
          (u) => AccessController(
            id: u.id,
            name: u.name,
            site: u.site,
            location: LatLong(
              latitude: u.location.latitude,
              longitude: u.location.longitude,
            ),
            uri: u.uri,
            username: u.username,
            password: '',
            accessPoints: (u.accessPoints ?? []).map((a) => a.id).toList(),
            externalId: u.externalId,
            externalName: u.externalName,
            doors: [],
            accessPointObjects: u.accessPoints
                ?.map(
                  (a) => AccessPoint(
                    id: a.id,
                    restricted: a.restricted,
                    externalId: a.externalId,
                    entity: a.entity,
                    accessControllerId: u.id,
                    name: a.name,
                    groups: [],
                  ),
                )
                .toList(),
            schedules: u.schedules
                ?.map(
                  (s) => Schedule(
                    token: s.token,
                    name: s.name,
                    description: s.description,
                    scheduleDefinition: '',
                    attribute: [],
                    exceptionScheduleDefinition: '',
                  ),
                )
                .toList(),
          ),
        )
        .toList();
  }

  Future<List<AccessController>> getDoorDetails({
    String? accessControllerId,
  }) async {
    final results = await documentNodeQueryGetDoorDetails.execute(
      httpClient,
      Query$GetDoorDetails.fromJson,
      variables: Variables$Query$GetDoorDetails(
        accessControllerId: accessControllerId,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (results.data?.allAccessControllers ?? [])
        .map(
          (u) => AccessController(
            id: u.id,
            name: u.name,
            site: u.site,
            location: LatLong(latitude: 0, longitude: 0),
            uri: '',
            username: '',
            password: '',
            accessPoints: [],
            externalId: u.externalId,
            externalName: u.externalName,
            doors: u.doors
                .map(
                  (d) => Door(
                    externalId: d.externalId,
                    name: d.name,
                    description: d.description,
                    accessTime: d.accessTime,
                    openTooLongTime: d.openTooLongTime,
                    preAlarmTime: d.preAlarmTime,
                    extendedAccessTime: d.extendedAccessTime,
                    extendedOpenTooLongTime: d.extendedOpenTooLongTime,
                    heartbeatInterval: d.heartbeatInterval,
                    defaultPriority: d.defaultPriority,
                    priorityConfiguration: DoorPriorityConfiguration(
                      externalId: d.priorityConfiguration?.externalId ?? '',
                      name: d.priorityConfiguration?.name ?? '',
                      defaultPriority:
                          d.priorityConfiguration?.defaultPriority ?? '',
                      doorPriorityActions:
                          (d.priorityConfiguration?.doorPriorityAction ?? [])
                              .map(
                                (pa) => DoorPriorityAction(
                                  priorityLevel: pa.priorityLevel,
                                  doorAction: pa.doorAction,
                                ),
                              )
                              .toList(),
                    ),
                    scheduleConfiguration: DoorScheduleConfiguration(
                      externalId: d.scheduleConfiguration?.externalId ?? '',
                      name: d.scheduleConfiguration?.name ?? '',
                      description: d.scheduleConfiguration?.description ?? '',
                      doorSchedule:
                          d.scheduleConfiguration?.doorSchedule
                              .map(
                                (dc) => DoorScheduleItem(
                                  priorityLevel: dc.priorityLevel,
                                  scheduledState: dc.scheduledState
                                      .map(
                                        (ss) => DoorScheduledState(
                                          scheduleToken: ss.scheduleToken,
                                          enterAction: ss.enterAction,
                                        ),
                                      )
                                      .toList(),
                                ),
                              )
                              .toList() ??
                          [],
                    ),
                  ),
                )
                .toList(),
          ),
        )
        .toList();
  }

  Future<bool> syncAccessPoints(String id) async {
    final result = await documentNodeMutationSyncAccessPoints.execute(
      httpClient,
      Mutation$SyncAccessPoints.fromJson,
      variables: Variables$Mutation$SyncAccessPoints(accessControllerId: id),
    );

    var errorText = '';
    if (result.hasErrors()) {
      result.errors?.forEach((error) {
        if (error.extensions?['message'] != null) {
          errorText = error.extensions?['message'] as String;
        } else {
          errorText = 'Error';
        }
      });

      EmrLogger.event(
        'Error syncing access points',
        params: {'accessControllerId': id, 'error': errorText},
        type: EmrOneCoreTelemetry.kTypeResult,
        severity: EmrLogLevel.error,
        source: source,
      );
      return false;
    }

    return result.data?.syncAccessPoints ?? false;
  }

  Future<bool> deleteAccessController(String id) async {
    final result = await documentNodeMutationDeleteAccessController.execute(
      httpClient,
      Mutation$DeleteAccessController.fromJson,
      variables: Variables$Mutation$DeleteAccessController(
        accessControllerId: id,
      ),
    );

    var errorText = '';
    if (result.hasErrors()) {
      result.errors?.forEach((error) {
        if (error.extensions?['message'] != null) {
          errorText = error.extensions?['message'] as String;
        } else {
          errorText = 'Error';
        }
      });

      EmrLogger.event(
        'Error deleting access controller',
        params: {'accessControllerId': id, 'error': errorText},
        type: EmrOneCoreTelemetry.kTypeResult,
        severity: EmrLogLevel.error,
        source: source,
      );
      return false;
    }

    return result.data?.deleteAccessController ?? false;
  }

  Future<bool> restoreAccessConroller(String id) async {
    final result = await documentNodeMutationRestoreAccessController.execute(
      httpClient,
      Mutation$RestoreAccessController.fromJson,
      variables: Variables$Mutation$RestoreAccessController(
        accessControllerId: id,
      ),
    );

    var errorText = '';
    if (result.hasErrors()) {
      result.errors?.forEach((error) {
        if (error.extensions?['message'] != null) {
          errorText = error.extensions?['message'] as String;
        } else {
          errorText = 'Error';
        }
      });

      EmrLogger.event(
        'Error restoring access controller',
        params: {'accessControllerId': id, 'error': errorText},
        type: EmrOneCoreTelemetry.kTypeResult,
        severity: EmrLogLevel.error,
        source: source,
      );
      return false;
    }

    return result.data?.restoreAccessController ?? false;
  }

  Future<bool> syncAccessCredential(String accessCredentialId) async {
    final result = await documentNodeMutationSyncCredential.execute(
      httpClient,
      Mutation$SyncCredential.fromJson,
      variables: Variables$Mutation$SyncCredential(
        accessCredentialId: accessCredentialId,
      ),
    );

    var errorText = '';
    if (result.hasErrors()) {
      result.errors?.forEach((error) {
        if (error.extensions?['message'] != null) {
          errorText = error.extensions?['message'] as String;
        } else {
          errorText = 'Error';
        }
      });

      EmrLogger.event(
        'Error syncing access credential',
        params: {'accessCredentialId': accessCredentialId, 'error': errorText},
        type: EmrOneCoreTelemetry.kTypeResult,
        severity: EmrLogLevel.error,
        source: source,
      );
      return false;
    }

    return result.data?.syncCredential ?? false;
  }

  Future<PaginatedResponse<List<Schedule>>> getSchedules({
    required String accessControllerId,
    String? after,
    String? before,
    int? first,
    int? last,
    String? sortBy,
  }) async {
    final results = await documentNodeQueryGetSchedules.execute(
      httpClient,
      Query$GetSchedules.fromJson,
      variables: Variables$Query$GetSchedules(
        after: after,
        before: before,
        first: first,
        last: last,
        accessControllerId: accessControllerId,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return PaginatedResponse(
      (results.data?.schedules?.nodes ?? [])
          .map(
            (s) => Schedule(
              token: s.token,
              name: s.name,
              description: s.description,
              scheduleDefinition: s.scheduleDefinition,
              attribute: s.attribute
                  .map((a) => AttributeItem(key: a.name, value: a.value))
                  .toList(),
              exceptionScheduleDefinition: s.exceptionScheduleDefinition,
            ),
          )
          .toList(),
      EmrQueryGraphQLPageInfo(
        endCursor: results.data?.schedules?.pageInfo.endCursor,
        hasNextPage: results.data?.schedules?.pageInfo.hasNextPage ?? false,
        hasPreviousPage:
            results.data?.schedules?.pageInfo.hasPreviousPage ?? false,
        startCursor: results.data?.schedules?.pageInfo.startCursor,
      ),
      results.data?.schedules?.totalCount ?? 0,
    );
  }

  Future<List<Schedule>> getAllSchedules({
    required String accessControllerId,
  }) async {
    final results = await documentNodeQueryGetAllSchedules.execute(
      httpClient,
      Query$GetAllSchedules.fromJson,
      variables: Variables$Query$GetAllSchedules(
        accessControllerId: accessControllerId,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (results.data?.allSchedules ?? [])
        .map(
          (s) => Schedule(
            token: s.token,
            name: s.name,
            description: s.description,
            scheduleDefinition: s.scheduleDefinition,
            attribute: s.attribute
                .map((a) => AttributeItem(key: a.name, value: a.value))
                .toList(),
            exceptionScheduleDefinition: s.exceptionScheduleDefinition,
          ),
        )
        .toList();
  }

  Future<PaginatedResponse<List<DoorAccessAttemptEvent>>>
  searchDoorAccessAttempts({
    required Input$SearchDoorAccessAttemptsInput input,
    String? after,
    String? before,
    int? first,
    int? last,
    String? sortBy,
  }) async {
    final results = await documentNodeQuerySearchDoorAccessAttempts.execute(
      httpClient,
      Query$SearchDoorAccessAttempts.fromJson,
      variables: Variables$Query$SearchDoorAccessAttempts(
        after: after,
        before: before,
        first: first,
        last: last,
        input: input,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return PaginatedResponse(
      (results.data?.searchDoorAccessAttempts?.nodes ?? [])
          .map(
            (g) => DoorAccessAttemptEvent(
              rowId: g.rowId,
              accessControllerId: g.accessControllerId,
              utcTime: g.utcTime,
              accessPointId: g.accessPointId,
              accessPointName: g.accessPointName,
              cardNumber: g.cardNumber,
              rawCardNumber: g.rawCardNumber,
              email: g.email,
              topic0: g.topic0,
              topic1: g.topic1,
              topic2: g.topic2,
              userId: g.userId,
              accessResponse: g.accessResponse,
              siteId: g.siteId,
              siteName: g.siteName,
              userFullName: g.name,
              accessPointRestricted: g.accessPointRestricted,
            ),
          )
          .toList(),
      EmrQueryGraphQLPageInfo(
        endCursor: results.data?.searchDoorAccessAttempts?.pageInfo.endCursor,
        hasNextPage:
            results.data?.searchDoorAccessAttempts?.pageInfo.hasNextPage ??
            false,
        hasPreviousPage:
            results.data?.searchDoorAccessAttempts?.pageInfo.hasPreviousPage ??
            false,
        startCursor:
            results.data?.searchDoorAccessAttempts?.pageInfo.startCursor,
      ),
      results.data?.searchDoorAccessAttempts?.totalCount ?? 0,
    );
  }

  Future<PaginatedResponse<List<DoorAccessAttemptEvent>>>
  searchDoorAccessAttemptSnapshots({
    required Input$SearchDoorAccessAttemptsInput input,
    String? after,
    String? before,
    int? first,
    int? last,
    String? sortBy,
  }) async {
    final results = await documentNodeQuerySearchDoorAccessAttemptSnapshots
        .execute(
          httpClient,
          Query$SearchDoorAccessAttemptSnapshots.fromJson,
          variables: Variables$Query$SearchDoorAccessAttemptSnapshots(
            after: after,
            before: before,
            first: first,
            last: last,
            input: input,
          ),
          cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
          cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
        );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return PaginatedResponse(
      (results.data?.searchDoorAccessAttemptSnapshots?.nodes ?? [])
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
              accessResponse: g.accessResponse,
              siteId: g.siteId,
              siteName: g.siteName,
              userFullName: g.name,
              accessPointRestricted: g.accessPointRestricted,
              snapshotReason: g.snapshotReason?.name,
              snapshotUrl: g.snapshotUrl,
            ),
          )
          .toList(),
      EmrQueryGraphQLPageInfo(
        endCursor:
            results.data?.searchDoorAccessAttemptSnapshots?.pageInfo.endCursor,
        hasNextPage:
            results
                .data
                ?.searchDoorAccessAttemptSnapshots
                ?.pageInfo
                .hasNextPage ??
            false,
        hasPreviousPage:
            results
                .data
                ?.searchDoorAccessAttemptSnapshots
                ?.pageInfo
                .hasPreviousPage ??
            false,
        startCursor: results
            .data
            ?.searchDoorAccessAttemptSnapshots
            ?.pageInfo
            .startCursor,
      ),
      results.data?.searchDoorAccessAttemptSnapshots?.totalCount ?? 0,
    );
  }

  Future<PaginatedResponse<List<DoorAccessAttemptEvent>>>
  searchDeniedDoorAccessAttempts({
    required Input$SearchDoorAccessAttemptsInput input,
    String? after,
    String? before,
    int? first,
    int? last,
    String? sortBy,
  }) async {
    final results = await documentNodeQuerySearchDeniedDoorAccessAttempts
        .execute(
          httpClient,
          Query$SearchDeniedDoorAccessAttempts.fromJson,
          variables: Variables$Query$SearchDeniedDoorAccessAttempts(
            after: after,
            before: before,
            first: first,
            last: last,
            input: input,
          ),
          cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
          cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
        );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return PaginatedResponse(
      (results.data?.searchDoorAccessAttempts?.nodes ?? [])
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
              accessResponse: g.accessResponse,
              siteId: g.siteId,
              siteName: g.siteName,
              userFullName: g.name,
              accessPointRestricted: g.accessPointRestricted,
            ),
          )
          .toList(),
      EmrQueryGraphQLPageInfo(
        endCursor: results.data?.searchDoorAccessAttempts?.pageInfo.endCursor,
        hasNextPage:
            results.data?.searchDoorAccessAttempts?.pageInfo.hasNextPage ??
            false,
        hasPreviousPage:
            results.data?.searchDoorAccessAttempts?.pageInfo.hasPreviousPage ??
            false,
        startCursor:
            results.data?.searchDoorAccessAttempts?.pageInfo.startCursor,
      ),
      results.data?.searchDoorAccessAttempts?.totalCount ?? 0,
    );
  }

  Future<PaginatedResponse<List<ScheduleUpdateEvent>>> searchScheduleUpdates({
    required Input$SearchScheduleUpdateInput input,
    String? after,
    String? before,
    int? first,
    int? last,
    String? sortBy,
  }) async {
    final results = await documentNodeQuerySearchScheduleUpdates.execute(
      httpClient,
      Query$SearchScheduleUpdates.fromJson,
      variables: Variables$Query$SearchScheduleUpdates(
        after: after,
        before: before,
        first: first,
        last: last,
        input: input,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return PaginatedResponse(
      (results.data?.searchScheduleUpdates?.nodes ?? [])
          .map(
            (g) => ScheduleUpdateEvent(
              rowId: g.rowId,
              accessControllerId: g.accessControllerId,
              utcTime: g.utcTime,
              scheduleToken: g.scheduleToken,
              accessControllerName: g.accessControllerName ?? '',
              topic2: g.topic2,
              siteId: g.siteId,
              siteName: g.siteName,
            ),
          )
          .toList(),
      EmrQueryGraphQLPageInfo(
        endCursor: results.data?.searchScheduleUpdates?.pageInfo.endCursor,
        hasNextPage:
            results.data?.searchScheduleUpdates?.pageInfo.hasNextPage ?? false,
        hasPreviousPage:
            results.data?.searchScheduleUpdates?.pageInfo.hasPreviousPage ??
            false,
        startCursor: results.data?.searchScheduleUpdates?.pageInfo.startCursor,
      ),
      results.data?.searchScheduleUpdates?.totalCount ?? 0,
    );
  }

  Future<bool> createAccessController({
    required String name,
    required String url,
    required String username,
    required String password,
    required String siteId,
  }) async {
    final response = await documentNodeMutationCreateAccessController.execute(
      httpClient,
      Mutation$CreateAccessController.fromJson,
      variables: Variables$Mutation$CreateAccessController(
        input: Input$CreateAccessControllerInput(
          url: url,
          username: username,
          password: password,
          siteId: siteId,
          name: name,
        ),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    final result = response.data?.createAccessController ?? false;

    StaticData.ignoreCache = result;

    return result;
  }

  Future<bool> updateAccessController({
    required String id,
    required String? name,
    required String? username,
    required String? password,
    required String? siteId,
  }) async {
    final response = await documentNodeMutationUpdateAccessController.execute(
      httpClient,
      Mutation$UpdateAccessController.fromJson,
      variables: Variables$Mutation$UpdateAccessController(
        input: Input$UpdateAccessControllerInput(
          id: id,
          username: username,
          password: password,
          siteId: siteId,
          name: name,
        ),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    final result = response.data?.updateAccessController != null;

    StaticData.ignoreCache = result;

    return result;
  }

  Future<bool> createSchedule({
    required String accessControllerId,
    required String token,
    required String scheduleName,
    required String definition,
  }) async {
    final response = await documentNodeMutationCreateSchedule.execute(
      httpClient,
      Mutation$CreateSchedule.fromJson,
      variables: Variables$Mutation$CreateSchedule(
        input: Input$CreateScheduleInput(
          accessControllerId: accessControllerId,
          definition: definition,
          scheduleName: scheduleName,
          token: token,
        ),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    final result = response.data?.createSchedule ?? false;

    StaticData.ignoreCache = result;

    return result;
  }

  Future<bool> linkGroupAndAccessPoint({
    required String groupId,
    required String accessPointId,
    required List<String> schedules,
  }) async {
    final response = await documentNodeMutationLinkGroupAndAccessPoint.execute(
      httpClient,
      Mutation$LinkGroupAndAccessPoint.fromJson,
      variables: Variables$Mutation$LinkGroupAndAccessPoint(
        input: Input$CreateGroupAndAccessPointLinkInput(
          groupId: groupId,
          accessPointIds: [accessPointId],
          schedules: schedules.where((x) => x.isNotEmpty).toList(),
        ),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    final result = response.data?.linkGroupAndAccessPoint ?? false;

    StaticData.ignoreCache = result;
    return result;
  }

  Future<bool> delinkGroupAndAccessPoint({
    required String groupId,
    required String accessPointId,
  }) async {
    final response = await documentNodeMutationDeLinkGroupAndAccessPoint
        .execute(
          httpClient,
          Mutation$DeLinkGroupAndAccessPoint.fromJson,
          variables: Variables$Mutation$DeLinkGroupAndAccessPoint(
            input: Input$DelinkGroupAndAccessPointInput(
              groupId: groupId,
              accessPointIds: [accessPointId],
            ),
          ),
        );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    final result = response.data?.deLinkGroupAndAccessPoint ?? false;

    StaticData.ignoreCache = result;
    return result;
  }

  Future<PaginatedResponse<List<DoorSearchResult>>> searchDoors({
    required Input$SearchDoorInput input,
    String? after,
    String? before,
    int? first,
    int? last,
    String? sortBy,
  }) async {
    final results = await documentNodeQuerySearchDoors.execute(
      httpClient,
      Query$SearchDoors.fromJson,
      variables: Variables$Query$SearchDoors(
        after: after,
        before: before,
        first: first,
        last: last,
        input: input,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return PaginatedResponse(
      (results.data?.searchDoors?.nodes ?? [])
          .map(
            (g) => DoorSearchResult(
              accessControllerId: g.accessControllerId,
              accessControllerName: g.accessControllerName,
              doorExternalId: g.doorExternalId,
              doorName: g.doorName,
              defaultPriority: g.defaultPriority,
              priorityConfigId: g.priorityConfigId,
              priorityConfigName: g.priorityConfigName,
              scheduleConfigId: g.scheduleConfigId,
              scheduleConfigName: g.scheduleConfigName,
              siteId: g.siteId,
              siteName: g.siteName,
            ),
          )
          .toList(),
      EmrQueryGraphQLPageInfo(
        endCursor: results.data?.searchDoors?.pageInfo.endCursor,
        hasNextPage: results.data?.searchDoors?.pageInfo.hasNextPage ?? false,
        hasPreviousPage:
            results.data?.searchDoors?.pageInfo.hasPreviousPage ?? false,
        startCursor: results.data?.searchDoors?.pageInfo.startCursor,
      ),
      results.data?.searchDoors?.totalCount ?? 0,
    );
  }

  Future<bool> upsertFullDoorConfiguration({
    required Input$UpsertFullDoorConfigurationInput input,
  }) async {
    final response = await documentNodeMutationUpsertFullDoorConfiguration
        .execute(
          httpClient,
          Mutation$UpsertFullDoorConfiguration.fromJson,
          variables: Variables$Mutation$UpsertFullDoorConfiguration(
            upsertDoorConfiguration: input,
          ),
        );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    final result = response.data?.upsertFullDoorConfiguration != null;

    StaticData.ignoreCache = result;

    return result;
  }

  Future<bool> upsertPartialDoorConfiguration({
    required List<Input$UpsertPartialDoorConfigurationInput> input,
  }) async {
    final response = await documentNodeMutationUpsertPartialDoorConfiguration
        .execute(
          httpClient,
          Mutation$UpsertPartialDoorConfiguration.fromJson,
          variables: Variables$Mutation$UpsertPartialDoorConfiguration(
            upsertDoorConfigurations: input,
          ),
        );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    final result = response.data?.upsertPartialDoorConfiguration != null;

    StaticData.ignoreCache = result;

    return result;
  }

  Future<DoorAndPriorityState> getDoorPriorityState({
    required String accessControllerId,
    required String doorExternalId,
  }) async {
    final results = await documentNodeQueryGetDoorAndPriorityState.execute(
      httpClient,
      Query$GetDoorAndPriorityState.fromJson,
      variables: Variables$Query$GetDoorAndPriorityState(
        accessControllerId: accessControllerId,
        doorExternalId: doorExternalId,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return DoorAndPriorityState(
      doorState: DoorState(
        doorMode: results.data?.doorAndPriorityState?.doorState.doorMode ?? '',
      ),
      priorityStates: (results.data?.doorAndPriorityState?.priorityStates ?? [])
          .map(
            (ps) => DoorPriorityState(
              priorityLevel: ps.priorityLevel,
              doorAction: ps.doorAction,
            ),
          )
          .toList(),
    );
  }
}
