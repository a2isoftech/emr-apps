import 'package:hive_flutter/hive_flutter.dart';

// part 'vehicle_documents_model.g.dart';

// @HiveType(typeId: 6)
class VehicleDocuments {
  VehicleDocuments(this.documentType, this.documentPath, this.vehicleKey);

  @HiveField(0)
  String documentType;

  @HiveField(1)
  String documentPath;

  @HiveField(2)
  String vehicleKey;
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VehicleDocumentsAdapter extends TypeAdapter<VehicleDocuments> {
  @override
  final int typeId = 6;

  @override
  VehicleDocuments read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VehicleDocuments(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, VehicleDocuments obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.documentType)
      ..writeByte(1)
      ..write(obj.documentPath)
      ..writeByte(2)
      ..write(obj.vehicleKey);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VehicleDocumentsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
