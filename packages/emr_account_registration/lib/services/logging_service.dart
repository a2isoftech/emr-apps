import 'package:emr_account_registration/emr_account_registration_constants.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class LoggingService {
  static void logGraphQlFailure(
    String operationName,
    GraphQLResponse<dynamic> apiResponse, {
    String? partyAccountNo,
    String? userId,
  }) {
    EmrLogger.event(
      operationName,
      type: 'Portal',
      params: {
        'party': partyAccountNo ?? '',
        'userId': userId ?? '',
        AccountRegistrationTelemetry.kSuccessParamName: 'false',
        'apiErrors': apiResponse.hasErrors()
            ? apiResponse.errors!.map((err) => err.toString()).join('\n')
            : EmrOneCoreTelemetry.kUnknown,
      },
    );
  }

  static void logFailure(
    String operationName,
    Object err, {
    String? partyAccountNo,
    String? userId,
  }) {
    EmrLogger.event(
      operationName,
      type: 'Portal',
      params: {
        'party': partyAccountNo ?? '',
        'userId': userId ?? '',
        AccountRegistrationTelemetry.kSuccessParamName: 'false',
        'apiErrors': err.toString(),
      },
    );
  }

  static void logToConsole(String message) {
    debugPrint(message);
  }
}
