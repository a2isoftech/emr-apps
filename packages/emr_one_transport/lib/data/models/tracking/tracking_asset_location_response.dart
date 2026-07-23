import 'package:emr_one_transport/data/models/tracking/location_row.dart';
import 'package:json_annotation/json_annotation.dart';

export 'package:emr_one_transport/data/models/tracking/location_row.dart';

part 'tracking_asset_location_response.g.dart';

@JsonSerializable(createToJson: false)
class TrackingAssetLocationResponse {

  TrackingAssetLocationResponse({
    required this.assetNumber,
    required this.vrm,
    required this.locationRows,
  });

  factory TrackingAssetLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$TrackingAssetLocationResponseFromJson(json);
  final String? assetNumber;
  final String? vrm;
  final List<LocationRow>? locationRows;
}
