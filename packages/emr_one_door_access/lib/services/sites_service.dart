import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';

class SitesService {
  SitesService({
    required this.httpClient,
    required this.defaultCacheTtl,
    required this.emrCacheProvider,
  });
  final ResilientHttpClient httpClient;
  final Duration defaultCacheTtl;
  String source = 'SiteService';

  final EmrCacheProvider? emrCacheProvider;

  Future<PaginatedResponse<List<Site>>> getSites({
    String? after,
    String? before,
    int? first,
    int? last,
    String? sortBy,
  }) async {
    final results = await documentNodeQueryGetSites.execute(
      httpClient,
      Query$GetSites.fromJson,
      variables: Variables$Query$GetSites(
        after: after,
        before: before,
        first: first,
        last: last,
      ),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return PaginatedResponse(
      (results.data?.sites?.nodes ?? [])
          .map(
            (u) => Site(
              id: u.id,
              yardCode: u.yardCode,
              createdBy: u.createdBy,
              createdOn: u.createdOn,
              name: u.name,
              modifiedBy: u.modifiedBy,
              modifiedOn: u.modifiedOn,
              active: u.active,
            ),
          )
          .toList(),
      EmrQueryGraphQLPageInfo(
        endCursor: results.data?.sites?.pageInfo.endCursor,
        hasNextPage: results.data?.sites?.pageInfo.hasNextPage ?? false,
        hasPreviousPage: results.data?.sites?.pageInfo.hasPreviousPage ?? false,
        startCursor: results.data?.sites?.pageInfo.startCursor,
      ),
      results.data?.sites?.totalCount ?? 0,
    );
  }

  Future<List<Site>> getAllSites() async {
    final results = await documentNodeQueryGetAllSites.execute(
      httpClient,
      Query$GetAllSites.fromJson,
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (results.data?.allSites ?? [])
        .map(
          (u) => Site(
            id: u.id,
            yardCode: u.yardCode,
            createdBy: u.createdBy,
            createdOn: u.createdOn,
            name: u.name,
            modifiedBy: u.modifiedBy,
            modifiedOn: u.modifiedOn,
            active: u.active,
          ),
        )
        .toList();
  }

  Future<List<FloorPlan>> getFloorPlans(String siteId) async {
    final results = await documentNodeQueryGetFloorPlans.execute(
      httpClient,
      Query$GetFloorPlans.fromJson,
      variables: Variables$Query$GetFloorPlans(siteId: siteId),
      cacheProvider: StaticData.ignoreCache ? null : emrCacheProvider,
      cacheTtl: StaticData.ignoreCache ? Duration.zero : defaultCacheTtl,
    );
    if (results.hasErrors()) {
      throw Exception(results.errors);
    }

    return (results.data?.floorPlans ?? [])
        .map(
          (u) => FloorPlan(
            id: u.id,
            createdOn: u.createdOn,
            siteId: u.siteId,
            imageUrl: u.imageUrl,
            name: u.name,
            hotspots: u.hotspots
                .map(
                  (h) => Hotspot(
                    id: h.id,
                    name: h.name,
                    x: h.x,
                    y: h.y,
                    status: HotspotStatus.open,
                    accessPointId: h.accessPointId,
                    orderIndex: h.orderIndex,
                  ),
                )
                .toList(),
          ),
        )
        .toList();
  }

  Future<Site> upsertSite({
    required String name,
    required String yardCode,
    String? id,
  }) async {
    final response = await documentNodeMutationUpsertSite.execute(
      httpClient,
      Mutation$UpsertSite.fromJson,
      variables: Variables$Mutation$UpsertSite(
        input: Input$UpsertSiteInput(yardCode: yardCode, name: name, id: id),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    StaticData.ignoreCache = true;

    return Site(
      id: response.data?.upsertSite.id ?? '',
      yardCode: response.data?.upsertSite.yardCode ?? '',
      name: response.data?.upsertSite.name ?? '',
      createdOn: response.data?.upsertSite.createdOn ?? DateTime.now(),
      createdBy: response.data?.upsertSite.createdBy ?? '',
    );
  }

  Future<bool> deleteFloorPlan(String floorPlanId) async {
    final response = await documentNodeMutationDeleteFloorPlan.execute(
      httpClient,
      Mutation$DeleteFloorPlan.fromJson,
      variables: Variables$Mutation$DeleteFloorPlan(floorPlanId: floorPlanId),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    StaticData.ignoreCache = true;

    return response.data?.deleteFloorPlan ?? false;
  }

  Future<bool> saveFloorPlan(FloorPlan floorPlan) async {
    final response = await documentNodeMutationSaveFloorPlan.execute(
      httpClient,
      Mutation$SaveFloorPlan.fromJson,
      variables: Variables$Mutation$SaveFloorPlan(
        input: Input$UpsertFloorPlanInput(
          id: floorPlan.id,
          siteId: floorPlan.siteId,
          name: floorPlan.name,
          imageUrl: floorPlan.imageUrl,
          hotSpots: floorPlan.hotspots
              .map(
                (h) => Input$HotspotInput(
                  accessPointId: h.accessPointId,
                  orderIndex: h.orderIndex,
                  id: h.id,
                  name: h.name,
                  x: h.x,
                  y: h.y,
                  status: h.status.toString(),
                ),
              )
              .toList(),
        ),
      ),
    );
    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    StaticData.ignoreCache = true;

    return response.data?.saveFloorPlan ?? false;
  }

  Future<bool> deleteSite(String id) async {
    final result = await documentNodeMutationDeleteSite.execute(
      httpClient,
      Mutation$DeleteSite.fromJson,
      variables: Variables$Mutation$DeleteSite(siteId: id),
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
        'Error deleting site',
        params: {'siteId': id, 'error': errorText},
        type: EmrOneCoreTelemetry.kTypeResult,
        severity: EmrLogLevel.error,
        source: source,
      );
      return false;
    }

    return result.data?.deleteSite ?? false;
  }

  Future<bool> restoreSite(String id) async {
    final result = await documentNodeMutationRestoreSite.execute(
      httpClient,
      Mutation$RestoreSite.fromJson,
      variables: Variables$Mutation$RestoreSite(siteId: id),
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
        'Error restoring site',
        params: {'siteId': id, 'error': errorText},
        type: EmrOneCoreTelemetry.kTypeResult,
        severity: EmrLogLevel.error,
        source: source,
      );
      return false;
    }

    return result.data?.restoreSite ?? false;
  }
}
