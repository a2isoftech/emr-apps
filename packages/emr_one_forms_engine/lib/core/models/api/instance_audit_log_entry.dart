import 'package:emr_one_forms_engine/core/services/interfaces/ihttp_service.dart';

class InstanceAuditLogEntry extends IJsonEncodable {
  final String id;
  final String instanceId;
  final String componentId;
  final String action;
  final String details;
  final String userName;
  final String userUuid;
  final DateTime createdDate;

  InstanceAuditLogEntry(
      {required this.id,
      required this.instanceId,
      required this.componentId,
      required this.action,
      required this.details,
      required this.userName,
      required this.userUuid,
      required this.createdDate});

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'instanceId': instanceId,
        'componentId': componentId,
        'action': action,
        'details': details,
        'userName': userName,
        'userUuid': userUuid,
        'createdDate': createdDate.toIso8601String()
      };
}
