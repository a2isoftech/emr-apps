// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'haulier_and_remaining_loads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HaulierAndRemainingLoads _$HaulierAndRemainingLoadsFromJson(
        Map<String, dynamic> json) =>
    HaulierAndRemainingLoads(
      haulierDetails: HaulierScheduleDetail.fromJson(
          json['haulierDetails'] as Map<String, dynamic>),
      remainingLoads: (json['remainingLoads'] as num).toInt(),
      jobsAndStatus: (json['jobsAndStatus'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$HaulierAndRemainingLoadsToJson(
        HaulierAndRemainingLoads instance) =>
    <String, dynamic>{
      'haulierDetails': instance.haulierDetails,
      'remainingLoads': instance.remainingLoads,
      'jobsAndStatus':
          instance.jobsAndStatus.map((k, e) => MapEntry(k.toString(), e)),
    };
