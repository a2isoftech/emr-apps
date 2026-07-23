import 'dart:convert';

import 'package:emr_one_fire_register/models/models.dart';

class FireRollCallLog {
  FireRollCallLog({
    required this.id,
    required this.loggedBy,
    required this.loggedOn,
    required this.punchData,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'loggedBy': loggedBy,
      'loggedOn': loggedOn,
      'punchData': punchData,
    };
  }

  static List<PunchEvent> jsonToPunchEvent(String punchData) {
    try {
      final json = jsonDecode(punchData) as Map<String, dynamic>;
      final punchEvents = (json['punchData'] as List)
          .map((punchEvent) => punchEvent as Map<String, dynamic>)
          .map(
            (punchEvent) => PunchEvent(
              id: punchEvent['id']! as int,
              subjectName: punchEvent['subjectName']! as String,
              subjectType: int.parse(punchEvent['subjectType']! as String),
              punchTime: DateTime.parse(punchEvent['punchTime']! as String),
              punchType: int.parse(punchEvent['punchType']! as String),
              badgeNo: punchEvent['badgeNo']! as String,
              note: punchEvent['note'] as String?,
              visitorHost: punchEvent['visitorHost'] as String?,
            ),
          )
          .toList();
      return punchEvents;
    } catch (e) {
      return [];
    }
  }

  final int id;

  final String loggedBy;

  final DateTime loggedOn;

  final List<PunchEvent> punchData;
}
