// ignore_for_file: avoid_dynamic_calls

import 'package:json_annotation/json_annotation.dart';

part 'ticket_service_api_response.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class TicketServiceApiResponse<T> {
  TicketServiceApiResponse({
    this.result,
    this.isSuccess = true,
    this.error,
    this.warning,
  });

  factory TicketServiceApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$TicketServiceApiResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$TicketServiceApiResponseToJson(this, toJsonT);

  bool isSuccess;
  T? result;
  ApiError? error;
  ApiWarning? warning;
}

@JsonSerializable(explicitToJson: true)
class ApiError {
  ApiError({
    required this.errorCode,
    required this.errorMessage,
    required this.details,
  });

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorToJson(this);

  String errorCode;
  String errorMessage;

  @JsonKey(fromJson: Helpers.detailsFromJson, toJson: Helpers.detailsToJson)
  Map<String, String> details;
}

@JsonSerializable(explicitToJson: true)
class ApiWarning {
  ApiWarning({
    required this.code,
    required this.message,
    required this.details,
  });

  factory ApiWarning.fromJson(Map<String, dynamic> json) =>
      _$ApiWarningFromJson(json);

  Map<String, dynamic> toJson() => _$ApiWarningToJson(this);

  String code;
  String message;

  @JsonKey(fromJson: Helpers.detailsFromJson, toJson: Helpers.detailsToJson)
  Map<String, String> details;
}

class Helpers {
  static Map<String, String> detailsFromJson(List<dynamic> json) {
    return {
      for (final item in json)
        if (item['key'] != null && item['value'] != null)
          item['key'] as String: item['value'] as String,
    };
  }

  static List<Map<String, String>>? detailsToJson(
    Map<String, String> details,
  ) {
    return details.entries
        .map((e) => {'key': e.key, 'value': e.value})
        .toList();
  }
}
