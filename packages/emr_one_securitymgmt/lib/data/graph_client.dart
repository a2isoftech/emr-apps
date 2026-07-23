// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:emr_one_core/auth/auth.dart';
import 'package:emr_one_securitymgmt/extensions/extensions.dart';
import 'package:emr_one_securitymgmt/models/attendee_model.dart';
import 'package:emr_one_securitymgmt/models/create_event_model.dart';
import 'package:emr_one_securitymgmt/models/date_query_model.dart';
import 'package:emr_one_securitymgmt/models/desk_query_model.dart';
import 'package:emr_one_securitymgmt/models/event_response_model.dart';
import 'package:emr_one_securitymgmt/models/location_model.dart';
import 'package:emr_one_securitymgmt/models/schedule_result.dart';
import 'package:emr_one_securitymgmt/securitymgmt.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:uuid/uuid.dart';

class GraphClient {
  GraphClient();

  Future<List<SmScheduleResult>> getSeatingData(
    String dateFrom,
    String dateTo,
  ) async {
    final model = SmDeskQueryModel(
      List<String>.generate(
        36,
        (index) => 'YCENCGHotDesk${index + 1}@emrgroup.com',
      ),
      SmDateQueryModel(dateFrom, 'GMT Standard Time'),
      SmDateQueryModel(dateTo, 'GMT Standard Time'),
    );
    final json = jsonEncode(model.toJson());

    final response = await _invokePost(
      '${SmConstants.kMicrosoftGraphEndpoint}/v1.0/me/calendar/getSchedule',
      json,
    );

    final map = jsonDecode(response) as Map<String, dynamic>;
    final items = map['value'] as List<dynamic>;

    final results = items
        .map((e) => _loadFromJson(e as Map<String, dynamic>))
        .toList();

    return results;
  }

  SmScheduleResult _loadFromJson(Map<String, dynamic> json) {
    try {
      return SmScheduleResult.fromJson(json);
    } catch (e) {
      return SmScheduleResult(
        json['scheduleId'] as String,
        '',
        [],
        isFaulted: true,
      );
    }
  }

  Future<SmEventResponseModel?> createEvent(
    DateTime start,
    DateTime end,
    String subject,
    String location,
    String showAs,
    List<SmAttendeeModel> attendees,
  ) async {
    const uuid = Uuid();

    final model = SmCreateEventModel(
      SmDateQueryModel(start.toIso8601String(), 'GMT Standard Time'),
      SmDateQueryModel(end.toIso8601String(), 'GMT Standard Time'),
      subject,
      SmLocationModel(location),
      showAs,
      attendees,
      uuid.v4(),
    );

    final modelJson = jsonEncode(model.toJson());

    final response = await _invokePost(
      '${SmConstants.kMicrosoftGraphEndpoint}/v1.0/me/events',
      modelJson,
    );

    final responseJson = jsonDecode(response) as Map<String, dynamic>;

    final resultModel = SmEventResponseModel.fromJson(responseJson);

    if (resultModel.responseStatus.response == 'organizer') {
      return resultModel;
    }

    return null;
  }

  Future<String> _invokePost(
    String uri,
    String body, {
    Map<String, String>? extraHeaders,
  }) async {
    final token = await FirebaseLogin.getOAuthToken();

    final response = await _invokePostInternal(
      token,
      uri,
      body,
      extraHeaders: extraHeaders,
    );

    if (response.statusCode.isSuccessful) {
      return response.body;
    }

    if (response.statusCode.isUnauthorized) {
      final refreshedToken = await FirebaseLogin.getOAuthToken(
        forceRefresh: true,
      );

      final result = await _invokePostInternal(
        refreshedToken,
        uri,
        body,
        extraHeaders: extraHeaders,
      );

      if (result.statusCode.isSuccessful) {
        return result.body;
      }
    }

    throw Exception();
  }

  Future<Response> _invokePostInternal(
    String token,
    String uri,
    String body, {
    Map<String, String>? extraHeaders,
  }) async {
    final requestHeaders = <String, String>{
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    if (extraHeaders != null) {
      requestHeaders.addAll(extraHeaders);
    }

    return http.post(Uri.parse(uri), headers: requestHeaders, body: body);
  }
}
