// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      json['address1'] as String?,
      json['address2'] as String?,
      json['address3'] as String?,
      json['address4'] as String?,
      json['address5'] as String?,
      json['address6'] as String?,
      json['postCode'] as String?,
      json['what3Words'] as String?,
      json['countryCode'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'address4': instance.address4,
      'address5': instance.address5,
      'address6': instance.address6,
      'postCode': instance.postCode,
      'what3Words': instance.what3Words,
      'countryCode': instance.countryCode,
    };
