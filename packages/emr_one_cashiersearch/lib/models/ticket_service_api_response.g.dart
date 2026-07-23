// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_service_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketServiceApiResponse<T> _$TicketServiceApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => TicketServiceApiResponse<T>(
  result: _$nullableGenericFromJson(json['result'], fromJsonT),
  isSuccess: json['isSuccess'] as bool? ?? true,
  error: json['error'] == null
      ? null
      : ApiError.fromJson(json['error'] as Map<String, dynamic>),
  warning: json['warning'] == null
      ? null
      : ApiWarning.fromJson(json['warning'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TicketServiceApiResponseToJson<T>(
  TicketServiceApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'result': _$nullableGenericToJson(instance.result, toJsonT),
  'error': instance.error?.toJson(),
  'warning': instance.warning?.toJson(),
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);

ApiError _$ApiErrorFromJson(Map<String, dynamic> json) => ApiError(
  errorCode: json['errorCode'] as String,
  errorMessage: json['errorMessage'] as String,
  details: Helpers.detailsFromJson(json['details'] as List),
);

Map<String, dynamic> _$ApiErrorToJson(ApiError instance) => <String, dynamic>{
  'errorCode': instance.errorCode,
  'errorMessage': instance.errorMessage,
  'details': Helpers.detailsToJson(instance.details),
};

ApiWarning _$ApiWarningFromJson(Map<String, dynamic> json) => ApiWarning(
  code: json['code'] as String,
  message: json['message'] as String,
  details: Helpers.detailsFromJson(json['details'] as List),
);

Map<String, dynamic> _$ApiWarningToJson(ApiWarning instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'details': Helpers.detailsToJson(instance.details),
    };
