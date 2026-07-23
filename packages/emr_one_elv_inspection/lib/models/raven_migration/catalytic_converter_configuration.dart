import 'package:emr_one_elv_inspection/enums/enum.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/part_info.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/techemet_catalytic_converter.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/vehicle_part_configuration.dart';
import 'package:emr_sharedtypes/models/media_asset.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalytic_converter_configuration.g.dart';

@JsonSerializable()
class CatalyticConverterConfiguration extends VehiclePartConfiguration {
  CatalyticConverterConfiguration({
    required super.partKey,
    required super.partInfo,
    required super.partPhotos,
    required this.techemetCatId,
    required this.classification,
    this.techemetCat,
  });

  factory CatalyticConverterConfiguration.fromJson(Map<String, dynamic> json) =>
      _$CatalyticConverterConfigurationFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$CatalyticConverterConfigurationToJson(this);

  String techemetCatId;
  @JsonKey(
    name: 'classification',
    fromJson: catalyticConverterClassificationEnumFromJson,
    toJson: catalyticConverterClassificationEnumToJson,
  )
  CatalyticConverterClassificationEnum classification;
  TechemetCatalyticConverter? techemetCat;
}
