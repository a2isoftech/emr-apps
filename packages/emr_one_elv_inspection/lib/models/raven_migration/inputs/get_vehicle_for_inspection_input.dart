import 'package:json_annotation/json_annotation.dart';

part 'get_vehicle_for_inspection_input.g.dart';

@JsonSerializable()
class GetVehicleForInspectionInput {
  GetVehicleForInspectionInput({
    required this.yardCode,
    required this.quoteNumber,
    required this.vehicleKey,
    required this.territoryCode,
  });

  factory GetVehicleForInspectionInput.fromJson(Map<String, dynamic> json) =>
      _$GetVehicleForInspectionInputFromJson(json);

  Map<String, dynamic> toJson() => _$GetVehicleForInspectionInputToJson(this);

  final String yardCode;
  final String quoteNumber;
  final String vehicleKey;
  final String territoryCode;
}
