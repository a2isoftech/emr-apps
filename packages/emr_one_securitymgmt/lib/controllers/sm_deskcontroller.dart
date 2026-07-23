import 'dart:convert';

import 'package:emr_one_securitymgmt/data/graph_client.dart';
import 'package:emr_one_securitymgmt/models/layout.dart';
import 'package:emr_one_securitymgmt/models/schedule_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

enum SmDeskLoadStatus { idle, loading, loaded }

class SmDeskController extends ChangeNotifier {
  SmDeskController(this._client);

  List<SmScheduleResult> get seatSchedules => _seatSchedules;

  SmDeskLoadStatus get status => _status;

  GraphClient get client => _client;

  SmDeskLoadStatus _status = SmDeskLoadStatus.idle;

  final GraphClient _client;

  List<SmScheduleResult> _seatSchedules = [];

  void setSelectedDate(String date) {
    notifyListeners();
  }

  Future<SmLayout> getLayout(String filename) async {
    final jsonString = await rootBundle
        .loadString('packages/emr_one_securitymgmt/assets/$filename');

    final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;

    return SmLayout.fromJson(jsonMap);
  }

  Future<void> getSeatingData(
    String dateFrom,
    String dateTo,
  ) async {
    _status = SmDeskLoadStatus.loading;

    notifyListeners();

    _seatSchedules = await _client.getSeatingData(dateFrom, dateTo);

    _status = SmDeskLoadStatus.loaded;

    notifyListeners();
  }
}
