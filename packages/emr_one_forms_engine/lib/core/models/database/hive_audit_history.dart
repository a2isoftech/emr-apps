import 'package:hive_flutter/hive_flutter.dart';

// part 'hive_audit_history.g.dart';

// @HiveType(typeId: 8)
class HiveAuditHistory extends HiveObject {
  HiveAuditHistory({
    required this.uuid,
    required this.instanceUuid,
    required this.componentId,
    required this.action,
    required this.details,
    required this.username,
    required this.userUuid,
    required this.createdDate,
    required this.isUploading,
  });

  @HiveField(0)
  String uuid;

  @HiveField(1)
  String instanceUuid;

  @HiveField(2)
  String componentId;

  @HiveField(3)
  String action;

  @HiveField(4)
  String details;

  @HiveField(5)
  String username;

  @HiveField(6)
  DateTime createdDate;

  @HiveField(7)
  bool isUploading;

  @HiveField(8)
  String? userUuid;
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveAuditHistoryAdapter extends TypeAdapter<HiveAuditHistory> {
  @override
  final int typeId = 8;

  @override
  HiveAuditHistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveAuditHistory(
      uuid: fields[0] as String,
      instanceUuid: fields[1] as String,
      componentId: fields[2] as String,
      action: fields[3] as String,
      details: fields[4] as String,
      username: fields[5] as String,
      userUuid: fields[8] as String?,
      createdDate: fields[6] as DateTime,
      isUploading: fields[7] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, HiveAuditHistory obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.instanceUuid)
      ..writeByte(2)
      ..write(obj.componentId)
      ..writeByte(3)
      ..write(obj.action)
      ..writeByte(4)
      ..write(obj.details)
      ..writeByte(5)
      ..write(obj.username)
      ..writeByte(6)
      ..write(obj.createdDate)
      ..writeByte(7)
      ..write(obj.isUploading)
      ..writeByte(8)
      ..write(obj.userUuid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveAuditHistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
