import 'package:emr_one_forms_engine/core/models/database/hive_captured_media.dart';

class ClientDiagnosticModel {
  ClientDiagnosticModel({
    required this.instanceId,
    required this.scheduledItemId,
    required this.json,
    required this.isUploading,
    required this.isUploaded,
    required this.isSubmitted,
    required this.isOnServer,
    required this.capturedMedia,
    // required this.auditHistory,
    this.error,
    this.workOrderId,
    this.assetCode,
    this.jobType,
    this.depotNo,
  });

  String instanceId;

  String scheduledItemId;

  String json;

  bool isUploading;

  bool isUploaded;

  bool isSubmitted;

  bool isOnServer;

  String? error;

  String? workOrderId;

  String? assetCode;

  String? jobType;

  String? depotNo;

  List<HiveCapturedMedia> capturedMedia;

  // HiveList<HiveAuditHistory> auditHistory;
}
