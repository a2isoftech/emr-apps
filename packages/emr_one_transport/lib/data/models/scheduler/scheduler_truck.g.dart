// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduler_truck.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchedulerTruck _$SchedulerTruckFromJson(Map<String, dynamic> json) =>
    SchedulerTruck(
      vrm: json['vrm'] as String,
      schedulerJobs: (json['schedulerJobs'] as List<dynamic>)
          .map((e) => SchedulerJob.fromJson(e as Map<String, dynamic>))
          .toList(),
      truckDescription: json['truckDescription'] as String,
      truckType: json['truckType'] as String,
      isJobSequenceEnforced: json['isJobSequenceEnforced'] as bool,
      assetNumber: json['assetNumber'] as String?,
      haulierName: json['haulierName'] as String?,
      haulierCode: json['haulierCode'] as String?,
      driverName: json['driverName'] as String?,
      vorSchedules: (json['vorSchedules'] as List<dynamic>?)
          ?.map((e) => VorSchedule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SchedulerTruckToJson(SchedulerTruck instance) =>
    <String, dynamic>{
      'driverName': instance.driverName,
      'vrm': instance.vrm,
      'haulierName': instance.haulierName,
      'assetNumber': instance.assetNumber,
      'haulierCode': instance.haulierCode,
      'truckType': instance.truckType,
      'truckDescription': instance.truckDescription,
      'isJobSequenceEnforced': instance.isJobSequenceEnforced,
      'schedulerJobs': instance.schedulerJobs,
      'vorSchedules': instance.vorSchedules,
    };
