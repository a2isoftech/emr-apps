import 'package:emr_sharedtypes/models/media_asset.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_document.g.dart';

@JsonSerializable()
class VehicleDocument {
  VehicleDocument({
    this.frontPhoto,
    this.rearPhoto,
    this.vinPhoto,
    this.v5LogBook,
  });

  factory VehicleDocument.fromJson(Map<String, dynamic> json) =>
      _$VehicleDocumentFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleDocumentToJson(this);

  MediaAsset? frontPhoto;
  MediaAsset? rearPhoto;
  MediaAsset? vinPhoto;
  MediaAsset? v5LogBook;
}
