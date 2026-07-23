import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';

class AccessPointsService {
  AccessPointsService({
    required this.httpClient,
    required this.defaultCacheTtl,
    required this.emrCacheProvider,
  });
  final ResilientHttpClient httpClient;
  final Duration defaultCacheTtl;

  final EmrCacheProvider? emrCacheProvider;

  Future<List<AccessPoint>> getAccessPointNames({
    String? siteId,
    String? accessControllerId,
    String? accessPointId,
  }) async {
    final results = await documentNodeQueryGetAccessPointNames.execute(
      httpClient,
      Query$GetAccessPointNames.fromJson,
      variables: Variables$Query$GetAccessPointNames(
        siteId: siteId,
        accessControllerId: accessControllerId,
        accessPointId: accessPointId,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (results.data?.accessPoints ?? [])
        .map(
          (u) => AccessPoint(
            id: u.id,
            name: u.name,
            restricted: u.restricted,
            accessControllerId: u.accessControllerId,
            groups: [],
            externalId: u.externalId,
            entity: u.entity,
          ),
        )
        .toList();
  }

  Future<List<AccessPoint>> getAccessPoints({
    String? siteId,
    String? accessControllerId,
    String? accessPointId,
  }) async {
    final results = await documentNodeQueryGetAccessPoints.execute(
      httpClient,
      Query$GetAccessPoints.fromJson,
      variables: Variables$Query$GetAccessPoints(
        siteId: siteId,
        accessControllerId: accessControllerId,
        accessPointId: accessPointId,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (results.data?.accessPoints ?? [])
        .map(
          (u) => AccessPoint(
            id: u.id,
            name: u.name,
            restricted: u.restricted,
            accessControllerId: u.accessControllerId,
            groups: (u.groups ?? []).map((g) => g.id).toList(),
            externalId: u.externalId,
            entity: u.entity,
            camera: u.camera == null
                ? null
                : Camera(
                    cameraName: u.camera!.cameraName,
                    ipAddress: u.camera!.ipAddress,
                    snapshotUrl: u.camera!.snapshotUrl,
                    rtspUrl: u.camera!.rtspUrl,
                    username: u.camera!.username ?? '',
                    password: '',
                    createdUtc: u.camera!.createdUtc,
                  ),
            groupScheduleLinks: (u.groups ?? []).map((g) {
              final schedules = g.accessPoints
                  .firstWhereOrNull((a) => a.key == u.id)
                  ?.value
                  .schedules;
              return GroupScheduleLink(
                adGroup: AdGroup(name: g.name, id: g.id, azureId: g.azureId),
                schedules: schedules ?? [],
                userFriendlyStrings: (schedules ?? []).map((x) {
                  return (u.schedules
                                  ?.firstWhereOrNull((s) => s.token == x)
                                  ?.userFriendlyStrings ??
                              [])
                          .map((u) => u.toString())
                          .firstOrNull ??
                      '';
                }).toList(),
              );
            }).toList(),
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
                  ),
                )
                .toList(),
          ),
        )
        .toList();
  }

  Future<List<AccessPoint>> getAccessPointsWithoutExternalData({
    String? siteId,
    String? accessControllerId,
    String? accessPointId,
  }) async {
    final results = await documentNodeQueryGetAccessPointsWithoutExternalData
        .execute(
          httpClient,
          Query$GetAccessPointsWithoutExternalData.fromJson,
          variables: Variables$Query$GetAccessPointsWithoutExternalData(
            siteId: siteId,
            accessControllerId: accessControllerId,
            accessPointId: accessPointId,
          ),
          cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
          cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
        );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (results.data?.accessPoints ?? [])
        .map(
          (u) => AccessPoint(
            id: u.id,
            name: u.name,
            restricted: u.restricted,
            accessControllerId: u.accessControllerId,
            groups: (u.groups ?? []).map((g) => g.id).toList(),
            externalId: u.externalId,
            entity: u.entity,
            camera: u.camera == null
                ? null
                : Camera(
                    cameraName: u.camera!.cameraName,
                    ipAddress: u.camera!.ipAddress,
                    snapshotUrl: u.camera!.snapshotUrl,
                    rtspUrl: u.camera!.rtspUrl,
                    username: u.camera!.username ?? '',
                    password: '',
                    createdUtc: u.camera!.createdUtc,
                  ),
          ),
        )
        .toList();
  }

  Future<bool> unlockAccessPoint({
    required String accessControllerId,
    required String accessPointToken,
    required int numberOfSeconds,
    required String reason,
  }) async {
    final response = await documentNodeMutationUnlockAccessPoint.execute(
      httpClient,
      Mutation$UnlockAccessPoint.fromJson,
      variables: Variables$Mutation$UnlockAccessPoint(
        input: Input$UnlockAccessPointInput(
          accessControllerId: accessControllerId,
          accessPointToken: accessPointToken,
          numberOfSeconds: numberOfSeconds,
          reason: reason,
        ),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data?.unlockAccessPoint ?? false;
  }

  Future<bool> restrictAccessPoint(String accessPointId) async {
    final response = await documentNodeMutationRestrictAccessPoint.execute(
      httpClient,
      Mutation$RestrictAccessPoint.fromJson,
      variables: Variables$Mutation$RestrictAccessPoint(
        accessPointId: accessPointId,
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    StaticData.ignoreCache = true;

    return response.data?.restrictAccessPoint ?? false;
  }

  Future<bool> permitAccessPoint(String accessPointId) async {
    final response = await documentNodeMutationPermitAccessPoint.execute(
      httpClient,
      Mutation$PermitAccessPoint.fromJson,
      variables: Variables$Mutation$PermitAccessPoint(
        accessPointId: accessPointId,
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    StaticData.ignoreCache = true;

    return response.data?.permitAccessPoint ?? false;
  }

  Future<bool> addCameraToAccessPoint({
    required SaveAccessPointCameraInput input,
  }) async {
    final response = await documentNodeMutationAddCameraToAccessPoint.execute(
      httpClient,
      Mutation$AddCameraToAccessPoint.fromJson,
      variables: Variables$Mutation$AddCameraToAccessPoint(
        input: Input$SaveAccessPointCameraInput(
          accessPointId: input.accessPointId,
          cameraName: input.cameraName,
          ipAddress: input.ipAddress,
          snapshotUrl: input.snapshotUrl,
          username: input.username,
          password: input.password,
        ),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data?.addCameraToAccessPoint.camera != null;
  }
}
