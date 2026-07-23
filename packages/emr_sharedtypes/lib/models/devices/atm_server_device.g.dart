// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atm_server_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AtmServerDevice _$AtmServerDeviceFromJson(Map<String, dynamic> json) =>
    AtmServerDevice(
      name: json['name'] as String? ?? '',
      ipAddress: json['ipAddress'] as String? ?? '',
      encryptionKey: json['encryptionKey'] as String? ?? '',
      deviceId: json['deviceId'] as String? ?? '',
      apiKey: json['apiKey'] as String? ?? '',
      paymentAPIEndPoint: json['paymentAPIEndPoint'] as String? ?? '',
      authorisationAPIEndpoint:
          json['authorisationAPIEndpoint'] as String? ?? '',
      atmServerDeviceType: $enumDecodeNullable(
          _$AtmServerDeviceTypeEnumMap, json['atmServerDeviceType']),
    );

Map<String, dynamic> _$AtmServerDeviceToJson(AtmServerDevice instance) =>
    <String, dynamic>{
      'name': instance.name,
      'ipAddress': instance.ipAddress,
      'encryptionKey': instance.encryptionKey,
      'deviceId': instance.deviceId,
      'apiKey': instance.apiKey,
      'paymentAPIEndPoint': instance.paymentAPIEndPoint,
      'authorisationAPIEndpoint': instance.authorisationAPIEndpoint,
      'atmServerDeviceType':
          _$AtmServerDeviceTypeEnumMap[instance.atmServerDeviceType],
    };

const _$AtmServerDeviceTypeEnumMap = {
  AtmServerDeviceType.ezCash: 'EZ_CASH',
  AtmServerDeviceType.consillion: 'CONSILLION',
};
