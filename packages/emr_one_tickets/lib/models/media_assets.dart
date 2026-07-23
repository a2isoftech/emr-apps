import 'package:emr_one_tickets/models/enumns.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_assets.g.dart';

@JsonSerializable()
class MediaAssets {
  MediaAssets({
    required this.type,
    required this.url,
    this.metaData,
  });

  factory MediaAssets.fromJson(Map<String, dynamic> json) =>
      _$MediaAssetsFromJson(json);

  Map<String, dynamic> toJson() => _$MediaAssetsToJson(this);

  final MediaAssetType type;
  final String url;
  final Map<String, String>? metaData;
}
