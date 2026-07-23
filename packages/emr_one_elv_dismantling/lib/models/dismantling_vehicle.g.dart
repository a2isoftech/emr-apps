// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dismantling_vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DismantlingVehicle _$DismantlingVehicleFromJson(Map<String, dynamic> json) =>
    DismantlingVehicle(
      id: json['id'] as String,
      vehicleStatus:
          Enum$VehicleStatus.fromJson(json['vehicleStatus'] as String),
      location:
          VehicleLocation.fromJson(json['location'] as Map<String, dynamic>),
      vin: json['vin'] as String? ?? '',
      vrn: json['vrn'] as String? ?? '',
      year: (json['year'] as num?)?.toInt() ?? 0,
      manufacturer: json['manufacturer'] as String? ?? '',
      model: json['model'] as String? ?? '',
      trim: json['trim'] as String? ?? '',
      fuelType: json['fuelType'] as String? ?? '',
      weight: json['weight'] == null
          ? null
          : Weight.fromJson(json['weight'] as Map<String, dynamic>),
      active: json['active'] as bool? ?? false,
      vehicleParts: (json['vehicleParts'] as List<dynamic>?)
          ?.map((e) => VehiclePart.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DismantlingVehicleToJson(DismantlingVehicle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicleStatus': instance.vehicleStatus,
      'location': instance.location,
      'vin': instance.vin,
      'vrn': instance.vrn,
      'year': instance.year,
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'trim': instance.trim,
      'fuelType': instance.fuelType,
      'weight': instance.weight,
      'active': instance.active,
      'vehicleParts': instance.vehicleParts,
    };
