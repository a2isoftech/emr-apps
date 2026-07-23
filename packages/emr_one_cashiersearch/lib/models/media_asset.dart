import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_sharedtypes/models/created.dart';
import 'package:emr_sharedtypes/models/modified.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_asset.g.dart';

enum MediaType { image, video }

@JsonSerializable(explicitToJson: true)
class MediaAsset {
  MediaAsset({
    this.url,
    this.type,
    this.mediaType,
    this.thumbnailUrl = '',
    this.sasUrl = '',
    this.created,
    this.modified,
  });

  factory MediaAsset.fromJson(Map<String, dynamic> json) =>
      _$MediaAssetFromJson(json);

  final String? url;
  final MediaAssetType? type;
  final MediaType? mediaType;
  final String? thumbnailUrl;
  final String sasUrl;
  final Created? created;
  final Modified? modified;

  Map<String, dynamic> toJson() => _$MediaAssetToJson(this);
}
