import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_elv_dismantling/models/weight.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_part.g.dart';

@JsonSerializable()
class VehiclePart {
  VehiclePart({
    required this.type,
    required this.partStatus,
    required this.weight,
    required this.active,
    required this.extendedProperties,
    this.description,
  });

  factory VehiclePart.fromJson(Map<String, dynamic> json) =>
      _$VehiclePartFromJson(json);

  final Enum$PartType type;
  final Enum$PartStatus partStatus;
  final Weight weight;
  final bool active;
  final Map<String, String> extendedProperties;
  final String? description;
  String? get catSealNumber => extendedProperties['SealNo'];
  String? get catSerialNumber => extendedProperties['SerialNo'];

  Map<String, dynamic> toJson() => _$VehiclePartToJson(this);
}
