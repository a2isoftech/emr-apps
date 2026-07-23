import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trade2_media_asset.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Trade2MediaAsset {
  Trade2MediaAsset(
    this.url,
    this.sasThumbnailUrl,
    this.sasUrl,
    this.type,
  );
  factory Trade2MediaAsset.fromJson(Map<String, dynamic> json) =>
      _$Trade2MediaAssetFromJson(json);

  Map<String, dynamic> toJson() => _$Trade2MediaAssetToJson(this);

  final String url;
  final String? sasThumbnailUrl;
  final String? sasUrl;
  final Enum$Trade2MediaAssetType? type;
}
