
class FormInstanceStatusLog {
  FormInstanceStatusLog({
    required this.instanceId, 
    this.id,
    this.uuid,
    this.loggedBy,
    this.loggedByUuid,
    this.loggedDate,
    this.status,
  });

  factory FormInstanceStatusLog.fromJson(Map<String, dynamic> json) =>
      _$FormInstanceStatusLogFromJson(json);

  final int? id;
  final String? uuid;
  final int instanceId;
  final String? loggedBy;
  final String? loggedByUuid;
  final DateTime? loggedDate;
  final String? status;

  Map<String, dynamic> toJson() => _$FormInstanceStatusLogToJson(this);
}

FormInstanceStatusLog _$FormInstanceStatusLogFromJson(Map<String, dynamic> json)
 => FormInstanceStatusLog(
    id: json['id'] as int?,
    uuid: json['uuid'] as String?,
    instanceId: json['instanceId'] as int,
    loggedBy: json['loggedBy'] as String?,
    loggedByUuid: json['loggedByUuid'] as String?,
    loggedDate: json['loggedDate'] == null
            ? null
            : DateTime.parse(json['loggedDate'] as String),
    status: json['status'] as String?,
    );

Map<String, dynamic> _$FormInstanceStatusLogToJson(
  FormInstanceStatusLog instance,) 
=> <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'instanceId': instance.instanceId,
      'loggedBy': instance.loggedBy,
      'loggedByUuid': instance.loggedByUuid,
      'loggedDate': instance.loggedDate?.toIso8601String(),
      'status': instance.status,
    };
