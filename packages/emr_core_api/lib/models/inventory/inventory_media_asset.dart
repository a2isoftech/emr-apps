import 'package:emr_sharedtypes/models/media_asset.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inventory_media_asset.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class InventoryMediaAsset extends MediaAsset {
  InventoryMediaAsset(
    super.url,
    this.sasThumbnailUrl,
    String? sasUrl,
  ) : super(sasUrl: sasUrl);
  factory InventoryMediaAsset.fromJson(Map<String, dynamic> json) =>
      _$InventoryMediaAssetFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InventoryMediaAssetToJson(this);

  final String? sasThumbnailUrl;
}
