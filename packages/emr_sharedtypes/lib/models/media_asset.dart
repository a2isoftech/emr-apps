import 'package:json_annotation/json_annotation.dart';

part 'media_asset.g.dart';

@JsonSerializable()
class MediaAsset {
  MediaAsset(
    this.url, {
    this.sasUrl,
    this.createdAt,
    this.createdByUserInfoId,
    this.createdByUserName,
  });
  
  factory MediaAsset.fromJson(Map<String, dynamic> json) =>
    _$MediaAssetFromJson(json);

  Map<String, dynamic> toJson() => _$MediaAssetToJson(this);

  String url;
  String? sasUrl;
  DateTime? createdAt;
  String? createdByUserInfoId;
  String? createdByUserName;
}
