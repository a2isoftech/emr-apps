import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';

class DoorAccessService {
  DoorAccessService({
    required this.httpClient,
    this.defaultCacheTtl = const Duration(minutes: cacheDurationInMin),
  }) {
    SharedPrefsCacheProvider.createFromDefaultInstance().then((value) {
      emrCacheProvider = value;
    });
  }

  static const int cacheDurationInMin = 5;

  final ResilientHttpClient httpClient;
  final Duration defaultCacheTtl;

  EmrCacheProvider? emrCacheProvider;

  late final UsersService usersService = UsersService(
    defaultCacheTtl: defaultCacheTtl,
    emrCacheProvider: emrCacheProvider,
    httpClient: httpClient,
  );

  late final MediaService mediaService = MediaService(client: httpClient);

  late final GroupsService groupsService = GroupsService(
    defaultCacheTtl: defaultCacheTtl,
    emrCacheProvider: emrCacheProvider,
    httpClient: httpClient,
  );

  late final SitesService sitesService = SitesService(
    defaultCacheTtl: defaultCacheTtl,
    emrCacheProvider: emrCacheProvider,
    httpClient: httpClient,
  );

  late final AccessControllersService accessControllersService =
      AccessControllersService(
        defaultCacheTtl: defaultCacheTtl,
        emrCacheProvider: emrCacheProvider,
        httpClient: httpClient,
      );

  late final AccessPointsService accessPointsService = AccessPointsService(
    defaultCacheTtl: defaultCacheTtl,
    emrCacheProvider: emrCacheProvider,
    httpClient: httpClient,
  );
}
