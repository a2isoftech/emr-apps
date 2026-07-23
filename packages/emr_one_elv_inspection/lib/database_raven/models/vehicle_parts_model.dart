import 'package:hive_flutter/hive_flutter.dart';

// part 'vehicle_parts_model.g.dart';

// @HiveType(typeId: 7)
class VehicleParts {
  VehicleParts({
    required this.vehicleKey,
    this.alloyWheelCount,
    this.steelWheelCount,
    this.chromeWheelCount,
    this.isValidVin,
    this.hasBattery,
  });

  @HiveField(0)
  String vehicleKey;

  @HiveField(1)
  int? alloyWheelCount;

  @HiveField(2)
  int? steelWheelCount;

  @HiveField(3)
  bool? isValidVin;

  @HiveField(4)
  bool? hasBattery;

  @HiveField(5)
  int? chromeWheelCount;
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VehiclePartsAdapter extends TypeAdapter<VehicleParts> {
  @override
  final int typeId = 7;

  @override
  VehicleParts read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VehicleParts(
      vehicleKey: fields[0] as String,
      alloyWheelCount: fields[1] as int?,
      steelWheelCount: fields[2] as int?,
      chromeWheelCount: fields[5] as int?,
      isValidVin: fields[3] as bool?,
      hasBattery: fields[4] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, VehicleParts obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.vehicleKey)
      ..writeByte(1)
      ..write(obj.alloyWheelCount)
      ..writeByte(2)
      ..write(obj.steelWheelCount)
      ..writeByte(3)
      ..write(obj.isValidVin)
      ..writeByte(4)
      ..write(obj.hasBattery)
      ..writeByte(5)
      ..write(obj.chromeWheelCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VehiclePartsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
