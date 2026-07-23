// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preference_thirdparty_haulier_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPreferenceThirdPartyHaulierRequest
    _$UserPreferenceThirdPartyHaulierRequestFromJson(
            Map<String, dynamic> json) =>
        UserPreferenceThirdPartyHaulierRequest(
          json['accountId'] as String,
          haulierCode: json['haulierCode'] as String,
          haulierName: json['haulierName'] as String,
          isSelected: json['isSelected'] as bool,
        );

Map<String, dynamic> _$UserPreferenceThirdPartyHaulierRequestToJson(
        UserPreferenceThirdPartyHaulierRequest instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'haulierCode': instance.haulierCode,
      'haulierName': instance.haulierName,
      'isSelected': instance.isSelected,
    };
