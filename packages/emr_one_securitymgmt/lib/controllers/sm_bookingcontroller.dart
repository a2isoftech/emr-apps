import 'package:emr_one_securitymgmt/data/graph_client.dart';
import 'package:emr_one_securitymgmt/models/attendee_model.dart';
import 'package:flutter/material.dart';

enum SmDeskBookingStatus { ready, booking, booked, failed }

class SmBookingController {
  SmBookingController(this._client);

  final ValueNotifier<SmDeskBookingStatus> status =
      ValueNotifier(SmDeskBookingStatus.ready);

  final GraphClient _client;

  Future<bool> createEvent(
    DateTime start,
    DateTime end,
    String subject,
    String location,
    String showAs,
    List<SmAttendeeModel> attendees,
  ) async {
    status.value = SmDeskBookingStatus.booking;

    final result = await _client.createEvent(
          start,
          end,
          subject,
          location,
          showAs,
          attendees,
        ) !=
        null;

    if (result == false) {
      status.value = SmDeskBookingStatus.failed;
    } else {
      status.value = SmDeskBookingStatus.booked;
    }

    return true;
  }
}
