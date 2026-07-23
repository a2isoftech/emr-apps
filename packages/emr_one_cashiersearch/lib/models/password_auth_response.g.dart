// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordAuthResponse _$PasswordAuthResponseFromJson(
  Map<String, dynamic> json,
) => PasswordAuthResponse(
  isSuccess: json['isSuccess'] as bool,
  errorMessage: json['errorMessage'] as String?,
);

Map<String, dynamic> _$PasswordAuthResponseToJson(
  PasswordAuthResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'errorMessage': instance.errorMessage,
};
