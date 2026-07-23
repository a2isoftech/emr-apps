import 'package:emr_one_forms_engine/core/services/interfaces/ihttp_service.dart';

import 'instance_audit_log_entry.dart';

class InstanceSaveRequest implements IJsonEncodable {
  final String id;
  final String? document;
  final String scheduledItemId;
  final String? appVersion;

  final List<InstanceAuditLogEntry>? historyRecords;

  InstanceSaveRequest(
      {required this.id,
      this.document,
      required this.scheduledItemId,
      this.appVersion,
      this.historyRecords});

  @override
  Map<String, dynamic> toJson() =>
      {'id': id, 'document': document, 'scheduledItemId': scheduledItemId, 'appVersion': appVersion};
}
