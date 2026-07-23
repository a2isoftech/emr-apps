import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/services/user_info/user_info_service.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:emr_one_yard_app/services/location_service.dart';
import 'package:signals/signals.dart';

class LocationController {
  LocationController({
    required this.locationService,
    required this.userInfoService,
    required this.mediaUrl,
  });

  final LocationService locationService;
  final UserInfoService userInfoService;
  final String mediaUrl;
  Future<AsyncState<List<Query$Locations$inventoryLocations$nodes>>>
      searchLocations(
    String query,
    int pageCount,
  ) async {
    final yard = 'yards/${userInfoService.userInfo.defaultYard}';

    final searchQuery = query.isEmpty
        ? null
        : query.endsWith('*')
            ? query
            : '$query*';

    final input = Input$InventoryLocationsInput(
      query: searchQuery,
      yardId: yard,
    );

    final ticketData = await locationService.getLocations(
      input: input,
      count: pageCount * YardAppConstants.pageSize,
    );

    return AsyncData(ticketData);
  }
}
