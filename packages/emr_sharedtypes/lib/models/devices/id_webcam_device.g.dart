// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_webcam_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdWebcamDevice _$IdWebcamDeviceFromJson(Map<String, dynamic> json) =>
    IdWebcamDevice(
      name: json['name'] as String? ?? '',
      ipAddress: json['ipAddress'] as String? ?? '',
    );

Map<String, dynamic> _$IdWebcamDeviceToJson(IdWebcamDevice instance) =>
    <String, dynamic>{
      'name': instance.name,
      'ipAddress': instance.ipAddress,
    };
