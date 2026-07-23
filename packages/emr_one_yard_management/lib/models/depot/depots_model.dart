import 'package:json_annotation/json_annotation.dart';

part 'depots_model.g.dart';

@JsonSerializable()
class DepotsModel {
  DepotsModel({
    required this.depotNumber,
    required this.depotName,
    required this.depotShortName,
    required this.territoryCode,
  });

  factory DepotsModel.fromJson(Map<String, dynamic> json) =>
      _$DepotsModelFromJson(json);
  String? depotNumber;
  String? depotName;
  String? depotShortName;
  String? territoryCode;

  Map<String, dynamic> toJson() => _$DepotsModelToJson(this);
}
