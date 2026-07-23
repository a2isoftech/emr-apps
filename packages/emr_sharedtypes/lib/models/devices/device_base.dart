import 'package:json_annotation/json_annotation.dart';

part 'device_base.g.dart';

@JsonSerializable()
class DeviceBase {
  DeviceBase({
    this.name = '',
  });

  factory DeviceBase.fromJson(Map<String, dynamic> json) =>
      _$DeviceBaseFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceBaseToJson(this);

  final String name;
}
