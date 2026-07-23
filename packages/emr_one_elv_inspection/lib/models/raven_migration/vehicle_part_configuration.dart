import 'package:emr_one_elv_inspection/models/raven_migration/catalytic_converter_configuration.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/part_info.dart';
import 'package:emr_sharedtypes/models/media_asset.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_part_configuration.g.dart';

@JsonSerializable()
class VehiclePartConfiguration {
  VehiclePartConfiguration({
    required this.partKey,
    required this.partInfo,
    required this.partPhotos,
  });

  factory VehiclePartConfiguration.fromJson(Map<String, dynamic> json) {
    final type = json['__typename'] as String?;

    if (type == 'CatalyticConverterConfig') {
      return CatalyticConverterConfiguration.fromJson(json);
    }

    return _$VehiclePartConfigurationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VehiclePartConfigurationToJson(this);

  final String partKey;
  final PartInfo partInfo;
  List<MediaAsset> partPhotos;
}
