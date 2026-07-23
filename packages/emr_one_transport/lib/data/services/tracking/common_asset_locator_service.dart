import 'dart:typed_data';

import 'package:emr_one_core/networking/http/resilient_http_client.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/tracking/asset_geo_search_request.dart';
import 'package:emr_one_transport/data/models/tracking/asset_location.dart';
import 'package:emr_one_transport/data/models/tracking/map_viewport.dart';
import 'package:emr_one_transport/data/models/tracking/tracking_asset_location_response.dart';
import 'package:emr_one_transport/data/services/api_service.dart';
import 'package:file_saver/file_saver.dart';

/// Common service for asset locator operations.
/// Provides shared implementations for common operations
/// (containers, trailers, trucks, etc.).
/// Injected into specific services and controllers that need common API calls.
class CommonAssetLocatorService {
  CommonAssetLocatorService({required this.httpClient})
      : _apiService = ApiService(httpClient: httpClient);

  final ResilientHttpClient httpClient;
  final ApiService _apiService;

  /// Protected getter for child classes to access the API service
  ApiService get apiService => _apiService;

  /// Fetch asset locations for a geographic bounding box with optional filters
  Future<ApiResponse<List<AssetLocation>>> getAssetLocations(
    AssetGeoSearchRequest request,
  ) async {
    final response = await _apiService.postList<AssetLocation>(
      StringConstants.kAssetSearchGeoBoxTracking,
      body: request.toJson(),
      fromJsonT: AssetLocation.fromJson,
    );
    return response;
  }

  /// Get the default map viewport for this asset type
  Future<ApiResponse<MapViewport>> getDefaultViewport() async {
    final response = await _apiService.get<MapViewport>(
      StringConstants.kGetDefaultViewportUrl,
      fromJsonT: (response) =>
          MapViewport.fromJson(response as Map<String, dynamic>),
    );
    return response;
  }

  /// Download asset data as CSV export for a geographic bounding box
  Future<ApiResponse<Uint8List>> downloadAssetsExport({
    required double latNE,
    required double lngNE,
    required double latSW,
    required double lngSW,
    required AssetType assetType,
  }) async {
    final response = await _apiService.getFileBytes(
      StringConstants.exportContainersUrl,
      queryParams: {
        'latitudeNorthEast': latNE.toString(),
        'longitudeNorthEast': lngNE.toString(),
        'latitudeSouthWest': latSW.toString(),
        'longitudeSouthWest': lngSW.toString(),
        'assetType': assetType.name,
      },
    );

    if (response.isSuccess && response.data != null) {
      await FileSaver.instance.saveFile(
        name: StringConstants.containerExportFileName,
        bytes: response.data,
        mimeType: MimeType.csv,
      );
    }

    return response;
  }

  /// Get GPS points for time range (for playback and geometry)
  /// Supports trucks, containers, and trailers
  /// Set snapToRoad=true to snap coordinates to roads using Google Maps API
  Future<ApiResponse<TrackingAssetLocationResponse>> getPositionsByTimeRange({
    required String assetNumber,
    required DateTime fromDate,
    required DateTime toDate,
    AssetType assetType = AssetType.truck,
    bool snapToRoad = false,
  }) async {
    final response = await _apiService.get<TrackingAssetLocationResponse>(
      StringConstants.kPositionByTimeRange,
      queryParams: {
        'assetNumber': assetNumber,
        'fromDate': fromDate.toUtc().toIso8601String(),
        'toDate': toDate.toUtc().toIso8601String(),
        'assetType': assetType.name,
        'snap': snapToRoad.toString(),
      },
      fromJsonT: (response) =>
          TrackingAssetLocationResponse
            .fromJson(response as Map<String, dynamic>),
    );
    return response;
  }
}
