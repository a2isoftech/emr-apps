import 'package:emr_one_core/services/emr_background_service/background_upload.dart';
import 'package:json_annotation/json_annotation.dart';

part 'background_data.g.dart';

@JsonSerializable()
class BackgroundData {
  BackgroundData(this.uploads);

  factory BackgroundData.fromJson(Map<String, dynamic> json) =>
      _$BackgroundDataFromJson(json);

  Map<String, dynamic> toJson() => _$BackgroundDataToJson(this);

  List<BackgroundUpload> uploads = [];
}
