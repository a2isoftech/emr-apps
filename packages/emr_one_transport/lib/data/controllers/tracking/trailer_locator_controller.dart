import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/tracking/base_asset_locator_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/tracking/asset_geo_search_request.dart';
import 'package:emr_one_transport/data/models/tracking/asset_location.dart';
/// Trailer-specific locator controller extending base asset locator
/// functionality.
///
/// The base class handles:
/// - Map display and marker management
/// - GPS tracking and polyline rendering
/// - Info window positioning and auto-pan
/// - Marker caching and color-based selection
/// - All generic asset tracking logic
///
/// This class only needs to implement trailer-specific behavior:
/// - Asset type constants
/// - Status-to-color mapping
/// - Status count calculations
/// - Service method invocation
class TrailerLocatorController extends BaseAssetLocatorController {
  TrailerLocatorController({
    required super.service,
  });

  // ===== ABSTRACT METHOD IMPLEMENTATIONS =====

  /// Asset type enum for trailers
  @override
  AssetType get assetType => AssetType.trailer;

  /// Map trailer status to marker color category
  @override
  String getMarkerColorForStatus(String? status) {
    if (status == null) return StringConstants.assetLocatorMarkerColorYard;

    final normalizedStatus = status.toUpperCase();
    switch (normalizedStatus) {
      case StringConstants.containerLocationStatusCustomer:
      case StringConstants.containerLocationStatusCustomerSITE:
        return StringConstants.assetLocatorMarkerColorCustomer;
      case StringConstants.containerLocationStatusYard:
      case StringConstants.containerLocationStatusTruck:
      default:
        return StringConstants.assetLocatorMarkerColorYard;
    }
  }

  /// Get counts of trailers by status category
  @override
  Map<String, int> getStatusCounts() {
    var yard = 0;
    var truck = 0;
    var customer = 0;

    for (final asset in assets) {
      final status = asset.status?.toUpperCase();
      if (status == null) continue;

      if (status == StringConstants.containerLocationStatusYard) {
        yard++;
      } else if (status == StringConstants.containerLocationStatusTruck) {
        truck++;
      } else if (status == StringConstants.containerLocationStatusCustomer ||
          status == StringConstants.containerLocationStatusCustomerSITE) {
        customer++;
      }
    }

    return {
      StringConstants.assetLocatorStatusYard: yard,
      StringConstants.assetLocatorStatusTruck: truck,
      StringConstants.assetLocatorStatusCustomer: customer,
    };
  }

  /// Fetch trailers from service for given geographic bounds
  @override
  Future<List<AssetLocation>> fetchAssetsFromService(
    AssetGeoSearchRequest request,
  ) async {
    final response = await service.getAssetLocations(request);

    if (!response.isSuccess) {
      throw Exception('Failed to fetch trailer locations.');
    }

    return response.data ?? [];
  }
}
