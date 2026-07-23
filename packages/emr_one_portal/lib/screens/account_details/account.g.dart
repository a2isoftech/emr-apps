// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      contactName: json['contactName'] as String,
      jobTitle: json['jobTitle'] as String,
      contactEmail: json['contactEmail'] as String,
      town: json['town'] as String,
      county: json['county'] as String,
      telephoneNumber: json['telephoneNumber'] as String,
      countryCode: json['countryCode'] as String,
      houseNumber: json['houseNumber'] as String,
      postCode: json['postCode'] as String,
      mobileNumber: json['mobileNumber'] as String,
      faxNumber: json['faxNumber'] as String,
      website: json['website'] as String,
      address1: json['address1'] as String,
      address2: json['address2'] as String,
      address3: json['address3'] as String,
      vatNumber: json['vatNumber'] as String,
      eoriNumber: json['eoriNumber'] as String,
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'contactName': instance.contactName,
      'jobTitle': instance.jobTitle,
      'contactEmail': instance.contactEmail,
      'town': instance.town,
      'county': instance.county,
      'telephoneNumber': instance.telephoneNumber,
      'countryCode': instance.countryCode,
      'houseNumber': instance.houseNumber,
      'postCode': instance.postCode,
      'mobileNumber': instance.mobileNumber,
      'faxNumber': instance.faxNumber,
      'website': instance.website,
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'vatNumber': instance.vatNumber,
      'eoriNumber': instance.eoriNumber,
    };
