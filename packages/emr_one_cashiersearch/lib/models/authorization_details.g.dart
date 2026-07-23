// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorizationDetails _$AuthorizationDetailsFromJson(
  Map<String, dynamic> json,
) => AuthorizationDetails(
  type: $enumDecode(_$AuthorizationModeEnumMap, json['type']),
  referenceId: json['referenceId'] as String,
);

Map<String, dynamic> _$AuthorizationDetailsToJson(
  AuthorizationDetails instance,
) => <String, dynamic>{
  'type': _$AuthorizationModeEnumMap[instance.type]!,
  'referenceId': instance.referenceId,
};

const _$AuthorizationModeEnumMap = {
  AuthorizationMode.notSet: 'NOT_SET',
  AuthorizationMode.password: 'PASSWORD',
  AuthorizationMode.workflow: 'WORKFLOW',
};
