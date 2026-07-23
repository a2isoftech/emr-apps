// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransportDetails _$TransportDetailsFromJson(Map<String, dynamic> json) =>
    TransportDetails(
      transportType: $enumDecode(_$TransportTypeEnumMap, json['transportType']),
      jobNumber: (json['jobNumber'] as num?)?.toInt(),
      vehicleReg: json['vehicleReg'] as String?,
      deliveryNote: json['deliveryNote'] as String?,
    );

Map<String, dynamic> _$TransportDetailsToJson(TransportDetails instance) =>
    <String, dynamic>{
      'jobNumber': instance.jobNumber,
      'vehicleReg': instance.vehicleReg,
      'deliveryNote': instance.deliveryNote,
      'transportType': _$TransportTypeEnumMap[instance.transportType]!,
    };

const _$TransportTypeEnumMap = {TransportType.truck: 'TRUCK'};
