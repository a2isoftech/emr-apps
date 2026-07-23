import 'package:json_annotation/json_annotation.dart';

part 'depot_response_model.g.dart';

@JsonSerializable()
class DepotResponseModel {
  DepotResponseModel({
    required this.depotName,
    required this.depotNumber,
    required this.depotShortName,
    required this.territoryCode,
  });

  /// Connect the generated [_$DepotResponseModelFromJson] function to the
  /// `fromJson` factory.
  factory DepotResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DepotResponseModelFromJson(json);

  String depotNumber;
  String depotName;
  String depotShortName;
  String territoryCode;
}
