import 'package:emr_one_door_access/models/models.dart';

class AccessPoint {
  AccessPoint({
    required this.id,
    required this.externalId,
    required this.entity,
    required this.accessControllerId,
    required this.name,
    required this.groups,
    required this.restricted,
    this.schedules,
    this.doorAccessAttemptEvents,
    this.groupScheduleLinks,
    this.camera,
  });

  factory AccessPoint.fromJson(Map<String, dynamic> json) {
    return AccessPoint(
      id: json['id'] as String,
      name: json['name'] as String,
      externalId: json['externalId'] as String,
      entity: json['entity'] as String,
      restricted: json['restricted'] as bool,
      accessControllerId: json['accessControllerId'] as String,
      groups: List<String>.from(json['groups'] as List<String>),
    );
  }
  final String id;
  final String externalId;
  final String entity;
  final String accessControllerId;
  final String name;
  final List<String> groups;
  final List<Schedule>? schedules;
  final List<DoorAccessAttemptEvent>? doorAccessAttemptEvents;
  final List<GroupScheduleLink>? groupScheduleLinks;
  final bool restricted;
  final Camera? camera;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'entity': entity,
      'externalId': externalId,
      'restricted': restricted,
      'accessControllerId': accessControllerId,
      'groups': groups,
    };
  }

  AccessPoint copyWith({
    String? id,
    String? name,
    String? externalId,
    String? entity,
    String? accessControllerId,
    List<String>? groups,
    List<Schedule>? schedules,
    List<DoorAccessAttemptEvent>? doorAccessAttemptEvents,
    List<GroupScheduleLink>? groupScheduleLinks,
    bool? restricted,
  }) {
    return AccessPoint(
      id: id ?? this.id,
      name: name ?? this.name,
      externalId: externalId ?? this.externalId,
      entity: entity ?? this.entity,
      accessControllerId: accessControllerId ?? this.accessControllerId,
      groups: groups ?? List.from(this.groups),
      schedules: schedules ?? [],
      doorAccessAttemptEvents: doorAccessAttemptEvents ?? [],
      groupScheduleLinks: groupScheduleLinks ?? [],
      restricted: restricted ?? false,
    );
  }
}
