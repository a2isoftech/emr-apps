import 'package:emr_one_door_access/models/models.dart';

class AccessController {
  AccessController({
    required this.id,
    required this.name,
    required this.site,
    required this.location,
    required this.uri,
    required this.username,
    required this.password,
    required this.accessPoints,
    required this.externalId,
    required this.externalName,
    required this.doors,
    this.accessPointObjects,
    this.schedules,
    this.active,
  });

  factory AccessController.fromJson(Map<String, dynamic> json) {
    return AccessController(
      id: json['id'] as String,
      name: json['name'] as String,
      site: json['site'] as String,
      location: LatLong.fromJson(json['location'] as Map<String, dynamic>),
      uri: json['uri'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      accessPoints: List<String>.from(json['accessPoints'] as List<String>),
      externalId: json['externalId'] as String,
      externalName: json['externalName'] as String,
      doors: (json['doors'] as List<dynamic>? ?? [])
          .map((e) => Door.fromJson(e as Map<String, dynamic>))
          .toList(),
      active: json['active'] as bool?,
    );
  }

  final String id;
  final String name;
  final String site;
  final LatLong location;
  final String uri;
  final String username;
  final String password;
  final List<String> accessPoints;
  final String externalId;
  final String externalName;
  final List<Door> doors;
  final List<AccessPoint>? accessPointObjects;
  final List<Schedule>? schedules;
  final bool? active;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'site': site,
      'location': location.toJson(),
      'uri': uri,
      'username': username,
      'password': password,
      'accessPoints': accessPoints,
      'externalId': externalId,
      'externalName': externalName,
      'doors': doors.map((e) => e.toJson()).toList(),
      'active': active,
    };
  }

  AccessController copyWith({
    String? id,
    String? name,
    String? site,
    LatLong? location,
    String? uri,
    String? username,
    String? password,
    List<String>? accessPoints,
    List<Door>? doors,
    String? externalId,
    String? externalName,
    List<AccessPoint>? accessPointObjects,
    List<Schedule>? schedules,
    bool? active,
  }) {
    return AccessController(
      id: id ?? this.id,
      name: name ?? this.name,
      site: site ?? this.site,
      location: location ?? this.location,
      uri: uri ?? this.uri,
      username: username ?? this.username,
      password: password ?? this.password,
      accessPoints: accessPoints ?? List.from(this.accessPoints),
      doors: doors ?? List.from(this.doors),
      externalId: externalId ?? this.externalId,
      externalName: externalName ?? this.externalName,
      accessPointObjects: accessPointObjects ?? this.accessPointObjects,
      schedules: schedules ?? this.schedules,
      active: active ?? this.active,
    );
  }
}
