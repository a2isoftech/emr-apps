import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'asset_location.g.dart';

@JsonSerializable()
class AssetLocation {
  AssetLocation({
    required this.id,
    required this.assetNumber,
    required this.latitude,
    required this.longitude,
    required this.assetType,
    this.assetTypeName,
    this.status,
    this.yardCode,
    this.typeId,
    this.comments,
    this.length,
    this.locationCode,
    this.accountCode,
    this.accountName,
  });

  factory AssetLocation.fromJson(Map<String, dynamic> json) =>
      _$AssetLocationFromJson(json);

  Map<String, dynamic> toJson() => _$AssetLocationToJson(this);

  final String id;
  final String assetNumber;
  final double latitude;
  final double longitude;

  final AssetType assetType;

  final String? assetTypeName;
  final String? status;
  final String? yardCode;
  final String? typeId;
  final String? comments;
  final int? length;
  final String? locationCode;
  final String? accountCode;
  final String? accountName;
}
