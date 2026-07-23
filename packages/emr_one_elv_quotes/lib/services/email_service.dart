import 'dart:convert';
import 'dart:io';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_elv_core/functions/decoder.dart';
import 'package:emr_one_elv_core/models/api_response.dart';
import 'package:emr_one_elv_quotes/models/api/request_models/email_quote_response.dart';
import 'package:emr_one_elv_quotes/models/api/request_models/send_quote_email_request.dart';
import 'package:http/http.dart';

class EmailService {
  EmailService({
    required this.client,
    required this.appConfig,
  });

  final BaseClient client;
  final AppConfig appConfig;

  Future<ApiResponse<EmailQuoteResponse?>> sendEmailForBatchQuote({
    required int batchQuoteId,
    required bool showKerbWeight,
    required bool showWheelDetails,
    required bool showCatDetails,
    required bool showVehicleDetails,
    required bool showBatteryDetails,
    required bool isDraft,
    required String territoryCode,
    List<String>? emails,
  }) async {
    final endpoint = Uri.parse(
      '${appConfig.quoteServiceApiUrl}/api/batchquote/$batchQuoteId/email',
    );

    final response = await client.post(
      endpoint,
      body: jsonEncode(
        SendQuoteEmailRequest(
          showCatDetails: showCatDetails,
          showKerbWeight: showKerbWeight,
          showVehicleDetails: showVehicleDetails,
          showWheelDetails: showWheelDetails,
          showBatteryDetails: showBatteryDetails,
          isDraft: isDraft,
          emails: emails,
          territoryCode: territoryCode,
        ).toJson(),
      ),
    );

    if (response.statusCode >= HttpStatus.badRequest ||
        !(response.body.isNotEmpty &&
            response.statusCode != HttpStatus.noContent) ||
        response.body.contains('SendEmailFailed')) {
      return ApiResponse(
        null,
        isOk: false,
        errorMessage: response.body.contains('SendEmailFailed')
            ? 'Send Email Failed'
            : 'Bad Request',
      );
    }

    return ApiResponse(
      EmailQuoteResponse.fromJson(
        jsonDecode(
          await decodeBodyBytes(response),
        ),
      ),
    );
  }
}
