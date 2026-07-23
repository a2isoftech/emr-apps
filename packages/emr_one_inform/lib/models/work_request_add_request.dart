import 'package:emr_one_inform/models/new_work_request_media.dart';

class WorkRequestAddRequest {
  WorkRequestAddRequest({
    required this.newRequestId,
    required this.serviceLevel,
    this.description,
    this.notes,
    this.assetId,
    this.requestType,
    this.faultSymptom,
    this.media,
  });

  factory WorkRequestAddRequest.fromJson(Map<String, dynamic> json) =>
      _$WorkRequestAddRequestFromJson(json);

  final String newRequestId;
  final String? description;
  final String? notes;
  final String? assetId;
  final String? requestType;
  final int serviceLevel;
  final String? faultSymptom;
  final List<NewWorkRequestMedia>? media;

  Map<String, dynamic> toJson() => _$WorkRequestAddRequestToJson(this);
}

WorkRequestAddRequest _$WorkRequestAddRequestFromJson(
  Map<String, dynamic> json,
) =>
    WorkRequestAddRequest(
      newRequestId: json['newRequestId'] as String,
      description: json['description'] as String?,
      notes: json['notes'] as String?,
      assetId: json['assetId'] as String?,
      requestType: json['requestType'] as String?,
      serviceLevel: json['serviceLevel'] as int,
      faultSymptom: json['faultSymptom'] as String?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => NewWorkRequestMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WorkRequestAddRequestToJson(
  WorkRequestAddRequest instance,
) =>
    <String, dynamic>{
      'newRequestId': instance.newRequestId,
      'description': instance.description,
      'notes': instance.notes,
      'assetId': instance.assetId,
      'requestType': instance.requestType,
      'serviceLevel': instance.serviceLevel,
      'faultSymptom': instance.faultSymptom,
      'media': instance.media?.map((e) => e.toJson()).toList(),
    };
