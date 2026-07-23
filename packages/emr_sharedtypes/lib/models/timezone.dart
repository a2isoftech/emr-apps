import 'package:json_annotation/json_annotation.dart';

part 'timezone.g.dart';

@JsonSerializable()
class Timezone {
  Timezone({
    this.timeZoneId = '',
    this.displayName = '',
  });
  factory Timezone.fromJson(Map<String, dynamic> json) =>
      _$TimezoneFromJson(json);

  Map<String, dynamic> toJson() => _$TimezoneToJson(this);

  final String timeZoneId;

  final String displayName;
}
