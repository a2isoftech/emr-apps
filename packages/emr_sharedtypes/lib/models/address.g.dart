// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      address3: json['address3'] as String?,
      address4: json['address4'] as String?,
      address5: json['address5'] as String?,
      address6: json['address6'] as String?,
      postCode: json['postCode'] as String?,
      what3Words: json['what3Words'] as String?,
      countryCode: json['countryCode'] as String?,
      geoLocation: json['geoLocation'] == null
          ? null
          : LatLong.fromJson(json['geoLocation'] as Map<String, dynamic>),
      addressKey: json['addressKey'] as String?,
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
      'geoLocation': instance.geoLocation,
      'addressKey': instance.addressKey,
    };
