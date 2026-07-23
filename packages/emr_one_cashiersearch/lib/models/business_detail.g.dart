// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BusinessDetail _$BusinessDetailFromJson(Map<String, dynamic> json) =>
    BusinessDetail(
      json['paymentTerm'] == null
          ? null
          : PaymentTerm.fromJson(json['paymentTerm'] as Map<String, dynamic>),
      json['licenseExemption'] == null
          ? null
          : LicenseExemption.fromJson(
              json['licenseExemption'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$BusinessDetailToJson(BusinessDetail instance) =>
    <String, dynamic>{
      'paymentTerm': instance.paymentTerm,
      'licenseExemption': instance.licenseExemption,
    };

LicenseExemption _$LicenseExemptionFromJson(Map<String, dynamic> json) =>
    LicenseExemption(
      wasteRegCarrierNumber: json['wasteRegCarrierNumber'] as String?,
    );

Map<String, dynamic> _$LicenseExemptionToJson(LicenseExemption instance) =>
    <String, dynamic>{'wasteRegCarrierNumber': instance.wasteRegCarrierNumber};
