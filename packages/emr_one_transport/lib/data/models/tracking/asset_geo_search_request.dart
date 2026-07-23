import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'asset_geo_search_request.g.dart';

@JsonSerializable()
class AssetGeoSearchRequest {
  AssetGeoSearchRequest({
    required this.latitudeNorthEast,
    required this.longitudeNorthEast,
    required this.latitudeSouthWest,
    required this.longitudeSouthWest,
    required this.assetType,
    this.assetNumbers,
    this.accountCodes,
    this.yardCodes,
    this.typeIds,
    this.statusTypes,
    this.take = 1000,
  });

  factory AssetGeoSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$AssetGeoSearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AssetGeoSearchRequestToJson(this);

  final double latitudeNorthEast;
  final double longitudeNorthEast;
  final double latitudeSouthWest;
  final double longitudeSouthWest;
  final AssetType assetType;
  final String? assetNumbers;
  final String? accountCodes;
  final String? yardCodes;
  final String? typeIds;
  final String? statusTypes;
  final int take;
}
