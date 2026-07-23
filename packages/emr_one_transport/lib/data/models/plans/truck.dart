import 'package:json_annotation/json_annotation.dart';

part 'truck.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Truck {
  Truck(
    this.assetNumber,
    this.vrm,
    this.friendlyName,
    this.serialNumber,
    this.make,
    this.model,
  );

  factory Truck.fromJson(Map<String, dynamic> json) => _$TruckFromJson(json);

  Map<String, dynamic> toJson() => _$TruckToJson(this);

  final String assetNumber;
  final String vrm;
  final String? friendlyName;
  final String? serialNumber;
  final String? make;
  final String? model;
}
