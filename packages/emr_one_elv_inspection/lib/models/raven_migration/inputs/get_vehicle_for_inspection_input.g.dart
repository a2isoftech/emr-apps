// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_vehicle_for_inspection_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetVehicleForInspectionInput _$GetVehicleForInspectionInputFromJson(
        Map<String, dynamic> json) =>
    GetVehicleForInspectionInput(
      yardCode: json['yardCode'] as String,
      quoteNumber: json['quoteNumber'] as String,
      vehicleKey: json['vehicleKey'] as String,
      territoryCode: json['territoryCode'] as String,
    );

Map<String, dynamic> _$GetVehicleForInspectionInputToJson(
        GetVehicleForInspectionInput instance) =>
    <String, dynamic>{
      'yardCode': instance.yardCode,
      'quoteNumber': instance.quoteNumber,
      'vehicleKey': instance.vehicleKey,
      'territoryCode': instance.territoryCode,
    };
