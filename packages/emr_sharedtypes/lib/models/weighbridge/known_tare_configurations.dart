import 'package:json_annotation/json_annotation.dart';

part 'known_tare_configurations.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class KnownTareConfigurations {
  const KnownTareConfigurations({
    this.saveKnownTares = false,
    this.knownTareExpiryDays,
  });

  factory KnownTareConfigurations.fromJson(Map<String, dynamic> json) =>
      _$KnownTareConfigurationsFromJson(json);

  Map<String, dynamic> toJson() => _$KnownTareConfigurationsToJson(this);

  final bool saveKnownTares;

  final int? knownTareExpiryDays;
}
