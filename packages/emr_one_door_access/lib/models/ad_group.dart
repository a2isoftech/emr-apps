import 'package:emr_one_door_access/models/access_profile.dart';

class AdGroup {
  AdGroup({
    required this.name,
    this.azureId,
    List<String>? users,
    Map<String, AccessProfile>? accessPoints,
    this.id = '',
    this.lastUpdatedFromAzureAdOn,
  }) : users = users ?? [],
       accessPoints = accessPoints ?? {};

  factory AdGroup.fromJson(Map<String, dynamic> json) {
    return AdGroup(
      azureId: json['azureId'] as String?,
      name: json['name'] as String,
      users: (json['users'] as List<dynamic>?)?.cast<String>(),
      accessPoints: (json['accessPoints'] as Map<String, dynamic>?)?.map(
        (key, value) => MapEntry(
          key,
          AccessProfile.fromJson(value as Map<String, dynamic>),
        ),
      ),
      id: json['id'] as String? ?? '',
      lastUpdatedFromAzureAdOn: json['lastUpdatedFromAzureAdOn'] != null
          ? DateTime.parse(json['lastUpdatedFromAzureAdOn'] as String)
          : null,
    );
  }
  final String? azureId;
  final String name;
  final List<String> users;
  final Map<String, AccessProfile> accessPoints;

  String id;
  DateTime? lastUpdatedFromAzureAdOn;

  AdGroup copyWith({
    String? azureId,
    String? name,
    List<String>? users,
    Map<String, AccessProfile>? accessPoints,
    String? id,
    DateTime? lastUpdatedFromAzureAdOn,
    String? schedule,
  }) {
    return AdGroup(
      azureId: azureId ?? this.azureId,
      name: name ?? this.name,
      users: users ?? List.from(this.users),
      accessPoints: accessPoints ?? Map.from(this.accessPoints),
      id: id ?? this.id,
      lastUpdatedFromAzureAdOn:
          lastUpdatedFromAzureAdOn ?? this.lastUpdatedFromAzureAdOn,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'azureId': azureId,
      'name': name,
      'users': users,
      'accessPoints': accessPoints.map((k, v) => MapEntry(k, v.toJson())),
      'id': id,
      'lastUpdatedFromAzureAdOn': lastUpdatedFromAzureAdOn?.toIso8601String(),
    };
  }
}
