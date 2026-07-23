import 'package:emr_sharedtypes/models/created.dart';
import 'package:emr_sharedtypes/models/modified.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weighbridge_configuration.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class WeighbridgeConfiguration {
  WeighbridgeConfiguration({
    required this.id,
    required this.weighbridgeId,
    required this.machineName,
    required this.yardId,
    required this.ipAddress,
    required this.tags,
    required this.created,
    required this.modified,
    required this.active,
    this.configurations = const {},
  });

  factory WeighbridgeConfiguration.blank() => WeighbridgeConfiguration(
        id: '',
        weighbridgeId: '',
        machineName: '',
        yardId: '',
        ipAddress: '',
        active: true,
        created: Created(userInfoId:''),
        modified: Modified(userInfoId: ''),
        tags: [],
  );
  factory WeighbridgeConfiguration.fromJson(Map<String, dynamic> json) =>
      _$WeighbridgeConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$WeighbridgeConfigurationToJson(this);

  final String id;
  final String weighbridgeId;
  final String machineName;
  final String yardId;
  final String ipAddress;
  final Map<String, dynamic> configurations;
  final List<String> tags;
  final Created created;
  final Modified modified;
  final bool active;
}
