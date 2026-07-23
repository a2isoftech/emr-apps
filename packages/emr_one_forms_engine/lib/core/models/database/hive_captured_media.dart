import 'dart:typed_data';

import 'package:hive_flutter/hive_flutter.dart';

// part 'hive_captured_media.g.dart';

// @HiveType(typeId: 7)
class HiveCapturedMedia extends HiveObject {
  HiveCapturedMedia({
    required this.uuid,
    required this.instanceUuid,
    required this.componentId,
    required this.mediaType,
    required this.localPath,
    required this.url,
    required this.isDownloaded,
    required this.isUploaded,
    required this.isUploading,
    this.imageData,
  });

  @HiveField(0)
  String uuid;

  @HiveField(1)
  String instanceUuid;

  @HiveField(2)
  String componentId;

  @HiveField(3)
  String mediaType;

  @HiveField(4)
  String localPath;

  @HiveField(5)
  String url;

  @HiveField(6)
  bool isDownloaded;

  @HiveField(7)
  bool isUploading;

  @HiveField(8)
  bool isUploaded;

  @HiveField(9)
  Uint8List? imageData;
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveCapturedMediaAdapter extends TypeAdapter<HiveCapturedMedia> {
  @override
  final int typeId = 7;

  @override
  HiveCapturedMedia read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveCapturedMedia(
      uuid: fields[0] as String,
      instanceUuid: fields[1] as String,
      componentId: fields[2] as String,
      mediaType: fields[3] as String,
      localPath: fields[4] as String,
      url: fields[5] as String,
      isDownloaded: fields[6] as bool,
      isUploaded: fields[8] as bool,
      isUploading: fields[7] as bool,
      imageData: fields[9] as Uint8List?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveCapturedMedia obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.uuid)
      ..writeByte(1)
      ..write(obj.instanceUuid)
      ..writeByte(2)
      ..write(obj.componentId)
      ..writeByte(3)
      ..write(obj.mediaType)
      ..writeByte(4)
      ..write(obj.localPath)
      ..writeByte(5)
      ..write(obj.url)
      ..writeByte(6)
      ..write(obj.isDownloaded)
      ..writeByte(7)
      ..write(obj.isUploading)
      ..writeByte(8)
      ..write(obj.isUploaded)
      ..writeByte(9)
      ..write(obj.imageData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveCapturedMediaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
