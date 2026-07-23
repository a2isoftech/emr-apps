import 'package:emr_one_door_access/models/models.dart';

class AccessCredential {
  AccessCredential({
    required this.id,
    required this.externalId,
    required this.deletedOn,
    required this.deletedInDoorControllerOn,
    required this.createdInDoorControllerOn,
    required this.createdOn,
    required this.active,
    required this.accessPointId,
    required this.modifiedOn,
    required this.modifiedBy,
    this.accessPoint,
    this.accessController,
    this.user,
    this.group,
  });

  factory AccessCredential.fromJson(Map<String, dynamic> json) {
    return AccessCredential(
      id: json['id'] as String,
      externalId: json['externalId'] as String,
      deletedOn: json['deletedOn'] != null
          ? DateTime.parse(json['deletedOn'] as String)
          : null,
      deletedInDoorControllerOn: json['deletedInDoorControllerOn'] != null
          ? DateTime.parse(json['deletedInDoorControllerOn'] as String)
          : null,
      createdInDoorControllerOn: DateTime.parse(
        json['createdInDoorControllerOn'] as String,
      ),
      createdOn: DateTime.parse(json['createdOn'] as String),
      active: json['active'] as bool,
      accessPointId: json['accessPointId'] as String,
      modifiedOn: DateTime.parse(json['modifiedOn'] as String),
      modifiedBy: json['modifiedBy'] as String,
      accessPoint: json['accessPoint'] != null
          ? AccessPoint.fromJson(json['accessPoint'] as Map<String, dynamic>)
          : null,
      accessController: json['accessController'] != null
          ? AccessController.fromJson(
              json['accessController'] as Map<String, dynamic>,
            )
          : null,
      user: json['user'] != null
          ? User.fromJson(json['user'] as Map<String, dynamic>)
          : null,
      group: json['group'] != null
          ? Group.fromJson(json['group'] as Map<String, dynamic>)
          : null,
    );
  }
  final String id;
  final String externalId;
  final DateTime? deletedOn;
  final DateTime? deletedInDoorControllerOn;
  final DateTime? createdInDoorControllerOn;
  final DateTime createdOn;
  final bool active;
  final String accessPointId;
  final DateTime? modifiedOn;
  final String? modifiedBy;

  final AccessPoint? accessPoint;
  final AccessController? accessController;
  final User? user;
  final Group? group;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'externalId': externalId,
      'deletedOn': deletedOn?.toIso8601String(),
      'deletedInDoorControllerOn': deletedInDoorControllerOn?.toIso8601String(),
      'createdInDoorControllerOn': createdInDoorControllerOn?.toIso8601String(),
      'createdOn': createdOn.toIso8601String(),
      'active': active,
      'accessPointId': accessPointId,
      'modifiedOn': modifiedOn?.toIso8601String(),
      'modifiedBy': modifiedBy,
      'accessPoint': accessPoint?.toJson(),
      'accessController': accessController?.toJson(),
      'user': user?.toJson(),
      'group': group?.toJson(),
    };
  }
}
