import 'package:json_annotation/json_annotation.dart';

part 'driver_event_data.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class DriverEventData {
  DriverEventData({
    required this.id,
   required  this.value,
  });

  factory DriverEventData.fromJson(Map<String, dynamic> json) =>
      _$DriverEventDataFromJson(json);

  Map<String, dynamic> toJson() => _$DriverEventDataToJson(this);

  String id;
  String value;
}
