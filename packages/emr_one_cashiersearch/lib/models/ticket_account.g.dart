// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketAccount _$TicketAccountFromJson(Map<String, dynamic> json) =>
    TicketAccount(
      accountId: json['accountId'] as String?,
      accountNumber: json['accountNumber'] as String?,
      name: json['name'] as String?,
      locationId: json['locationId'] as String?,
      locationName: json['locationName'] as String?,
      details: json['details'] == null
          ? null
          : Account.fromJson(json['details'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      sicCode: (json['sicCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TicketAccountToJson(TicketAccount instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'accountNumber': instance.accountNumber,
      'name': instance.name,
      'locationId': instance.locationId,
      'locationName': instance.locationName,
      'details': instance.details?.toJson(),
      'address': instance.address?.toJson(),
      'sicCode': instance.sicCode,
    };

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
  'geoLocation': instance.geoLocation?.toJson(),
};

LatLong _$LatLongFromJson(Map<String, dynamic> json) => LatLong(
  (json['latitude'] as num?)?.toDouble(),
  (json['longitude'] as num?)?.toDouble(),
);

Map<String, dynamic> _$LatLongToJson(LatLong instance) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
