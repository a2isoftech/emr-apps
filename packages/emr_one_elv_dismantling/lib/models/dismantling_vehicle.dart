import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_elv_dismantling/models/vehicle_location.dart';
import 'package:emr_one_elv_dismantling/models/vehicle_part.dart';
import 'package:emr_one_elv_dismantling/models/weight.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dismantling_vehicle.g.dart';

@JsonSerializable()
class DismantlingVehicle {
  DismantlingVehicle({
    required this.id,
    required this.vehicleStatus,
    required this.location,
    this.vin = '',
    this.vrn = '',
    this.year = 0,
    this.manufacturer = '',
    this.model = '',
    this.trim = '',
    this.fuelType = '',
    this.weight,
    this.active = false,
    List<VehiclePart>? vehicleParts,
  }) : vehicleParts = vehicleParts ?? [];

  factory DismantlingVehicle.fromJson(Map<String, dynamic> json) =>
      _$DismantlingVehicleFromJson(json);

  final String id;
  final Enum$VehicleStatus vehicleStatus;
  final VehicleLocation location;
  final String vin;
  final String vrn;
  final int year;
  final String manufacturer;
  final String model;
  final String trim;
  final String fuelType;
  final Weight? weight;
  final bool active;
  final List<VehiclePart> vehicleParts;

  Map<String, dynamic> toJson() => _$DismantlingVehicleToJson(this);
}
