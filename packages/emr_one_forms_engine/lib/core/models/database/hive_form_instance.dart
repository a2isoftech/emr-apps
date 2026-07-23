// ignore_for_file: experimental_member_use

import 'package:emr_one_forms_engine/core/models/database/hive_audit_history.dart';
import 'package:emr_one_forms_engine/core/models/database/hive_captured_media.dart';
import 'package:hive_flutter/hive_flutter.dart';

// part 'hive_form_instance.g.dart';

// @HiveType(typeId: 6)
class HiveFormInstance extends HiveObject {
  HiveFormInstance({
    required this.uuid,
    required this.scheduledItemId,
    required this.json,
    required this.isUploading,
    required this.isUploaded,
    required this.isSubmitted,
    required this.isOnServer,
    required this.capturedMedia,
    required this.auditHistory,
    this.error,
    this.workOrderId,
    this.assetCode,
    this.jobType,
    this.depotNo,
  });

  @HiveField(0)
  String uuid;

  @HiveField(1)
  String scheduledItemId;

  @HiveField(2)
  String json;

  @HiveField(3)
  bool isUploading;

  @HiveField(4)
  bool isUploaded;

  @HiveField(5)
  bool isSubmitted;

  @HiveField(6)
  bool isOnServer;

  @HiveField(7)
  String? error;

  @HiveField(8)
  String? workOrderId;

  @HiveField(9)
  String? assetCode;

  @HiveField(10)
  String? jobType;

  @HiveField(11)
  String? depotNo;

  @HiveField(12)
  HiveList<HiveCapturedMedia> capturedMedia;

  @HiveField(13)
  HiveList<HiveAuditHistory> auditHistory;
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveFormInstanceAdapter extends TypeAdapter<HiveFormInstance> {
  @override
  final int typeId = 6;

  @override
  HiveFormInstance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveFormInstance(
      uuid: fields[0] as String,
      scheduledItemId: fields[1] as String,
      json: fields[2] as String,
      isUploading: fields[3] as bool,
      isUploaded: fields[4] as bool,
      isSubmitted: fields[5] as bool,
      isOnServer: fields[6] as bool,
      capturedMedia: (fields[12] as HiveList).castHiveList(),
      auditHistory: (fields[13] as HiveList).castHiveList(),
      error: fields[7] as String?,
      workOrderId: fields[8] as String?,
      assetCode: fields[9] as String?,
      jobType: fields[10] as String?,
      depotNo: fields[11] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveFormInstance obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.scheduledItemId)
      ..writeByte(2)
      ..write(obj.json)
      ..writeByte(3)
      ..write(obj.isUploading)
      ..writeByte(4)
      ..write(obj.isUploaded)
      ..writeByte(5)
      ..write(obj.isSubmitted)
      ..writeByte(6)
      ..write(obj.isOnServer)
      ..writeByte(7)
      ..write(obj.error)
      ..writeByte(8)
      ..write(obj.workOrderId)
      ..writeByte(9)
      ..write(obj.assetCode)
      ..writeByte(10)
      ..write(obj.jobType)
      ..writeByte(11)
      ..write(obj.depotNo)
      ..writeByte(12)
      ..write(obj.capturedMedia)
      ..writeByte(13)
      ..write(obj.auditHistory);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveFormInstanceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
