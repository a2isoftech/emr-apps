import 'package:hive_flutter/hive_flutter.dart';

// part 'vehicle_parts_catalytic_model.g.dart';

// @HiveType(typeId: 8)
class VehiclePartsCatalytic {
  VehiclePartsCatalytic({
    required this.vehicleId,
    this.catID,
    this.catalyticImagePath,
  });

  @HiveField(0)
  int vehicleId;

  @HiveField(1)
  int? catID;

  @HiveField(2)
  String? catalyticImagePath;
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VehiclePartsCatalyticAdapter extends TypeAdapter<VehiclePartsCatalytic> {
  @override
  final int typeId = 8;

  @override
  VehiclePartsCatalytic read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VehiclePartsCatalytic(
      vehicleId: fields[0] as int,
      catID: fields[1] as int?,
      catalyticImagePath: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, VehiclePartsCatalytic obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.vehicleId)
      ..writeByte(1)
      ..write(obj.catID)
      ..writeByte(2)
      ..write(obj.catalyticImagePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VehiclePartsCatalyticAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
