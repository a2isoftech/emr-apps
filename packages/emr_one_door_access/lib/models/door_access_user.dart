import 'package:emr_one_door_access/models/models.dart';

class DoorAccessUser {
  DoorAccessUser({
    required this.azureId,
    required this.name,
    required this.userName,
    required this.cardNumber,
    List<String>? groups,
    this.id = '',
    this.externalId,
    this.doorAccessAttemptEvents,
    this.groupDetails,
  }) : groups = groups ?? [];

  factory DoorAccessUser.fromJson(Map<String, dynamic> json) {
    return DoorAccessUser(
      azureId: json['azureId'] as String,
      name: json['name'] as String,
      userName: json['userName'] as String,
      cardNumber: json['cardNumber'] as String,
      groups: (json['groups'] as List<dynamic>?)?.cast<String>(),
      id: json['id'] as String? ?? '',
      externalId: json['externalId'] as String?,
    );
  }
  final String azureId;
  final String name;
  final String userName;
  final String cardNumber;
  final List<String> groups;
  final List<DoorAccessAttemptEvent>? doorAccessAttemptEvents;
  final List<AdGroup>? groupDetails;

  String id;
  String? externalId;

  DoorAccessUser copyWith({
    String? azureId,
    String? name,
    String? userName,
    String? cardNumber,
    List<String>? groups,
    String? id,
    String? externalId,
  }) {
    return DoorAccessUser(
      azureId: azureId ?? this.azureId,
      name: name ?? this.name,
      userName: userName ?? this.userName,
      cardNumber: cardNumber ?? this.cardNumber,
      groups: groups ?? List.from(this.groups),
      id: id ?? this.id,
      externalId: externalId ?? this.externalId,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'azureId': azureId,
      'name': name,
      'userName': userName,
      'cardNumber': cardNumber,
      'groups': groups,
      'id': id,
      'externalId': externalId,
    };
  }
}
