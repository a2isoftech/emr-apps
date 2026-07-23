// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enforce_job_sequence_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnforceJobSequenceRequest _$EnforceJobSequenceRequestFromJson(
        Map<String, dynamic> json) =>
    EnforceJobSequenceRequest(
      truckVrm: json['truckVrm'] as String,
      startDateUtc: DateTime.parse(json['startDateUtc'] as String),
      endDateUtc: DateTime.parse(json['endDateUtc'] as String),
      enforceJobSequence: json['enforceJobSequence'] as bool,
    );

Map<String, dynamic> _$EnforceJobSequenceRequestToJson(
        EnforceJobSequenceRequest instance) =>
    <String, dynamic>{
      'truckVrm': instance.truckVrm,
      'startDateUtc': instance.startDateUtc.toIso8601String(),
      'endDateUtc': instance.endDateUtc.toIso8601String(),
      'enforceJobSequence': instance.enforceJobSequence,
    };
