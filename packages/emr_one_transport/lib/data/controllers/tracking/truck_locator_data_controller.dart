import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/common_service.dart';

/// Data controller for truck locator filter values.
/// Provides filter options (yards only - trucks don't have types
/// or status filters like containers/trailers).
class TruckLocatorDataController {
  TruckLocatorDataController({required this.service});

  final CommonService service;

  List<DispatchYards> allYards = [];

  /// Load filter values from service
  Future<void> getFilterValues() async {
    allYards = await service.getDispatchYardsForUser();
  }
}
