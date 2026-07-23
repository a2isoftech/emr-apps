import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/common_service.dart';

/// Data controller for trailer locator filter values
/// Provides filter options like yards, trailer types, and statuses
class TrailerLocatorDataController {
  TrailerLocatorDataController({required this.service});

  final CommonService service;

  List<DispatchYards> allYards = [];
  List<ListDetails> allTrailerTypes = [];
  List<String> allStatuses = [];

  /// Load filter values from service
  /// Note: trailerTypes key may need adjustment based on backend
  Future<void> getFilterValues() async {
    allYards = await service.getDispatchYardsForUser();
    allTrailerTypes = await service.getListByType('trailerTypes');

    // Trailer location status values using constants
    allStatuses = [
      StringConstants.containerLocationStatusYard,
      StringConstants.containerLocationStatusCustomer,
      StringConstants.containerLocationStatusTruck,
    ];
    allStatuses.sort();
  }
}
