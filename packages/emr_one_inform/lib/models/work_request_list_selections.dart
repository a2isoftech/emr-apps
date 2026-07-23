import 'package:emr_one_inform/models/work_request_service_level.dart';

class WorkRequestListSelections {
  WorkRequestListSelections({
    this.serviceLevels,
    this.requestTypes,
  });

  factory WorkRequestListSelections.fromJson(Map<String, dynamic> json) =>
      _$WorkRequestListSelectionsFromJson(json);

  final List<WorkRequestServiceLevel>? serviceLevels;
  final List<String>? requestTypes;

  Map<String, dynamic> toJson() => _$WorkRequestListSelectionsToJson(this);
}

WorkRequestListSelections _$WorkRequestListSelectionsFromJson(
  Map<String, dynamic> json,
) =>
    WorkRequestListSelections(
      serviceLevels: (json['serviceLevels'] as List<dynamic>?)
          ?.map(
            (e) => WorkRequestServiceLevel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      requestTypes: (json['requestTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$WorkRequestListSelectionsToJson(
  WorkRequestListSelections instance,
) =>
    <String, dynamic>{
      'serviceLevels': instance.serviceLevels,
      'requestTypes': instance.requestTypes,
    };
