// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobRequestModel _$JobRequestModelFromJson(Map<String, dynamic> json) =>
    JobRequestModel(
      isExactSchedule: json['isExactSchedule'] as bool,
      id: json['id'] as String?,
      scheduledDate: json['scheduledDate'] == null
          ? null
          : DateTime.parse(json['scheduledDate'] as String),
      proposedDueDate: json['proposedDueDate'] == null
          ? null
          : DateTime.parse(json['proposedDueDate'] as String),
      dispatchYard: json['dispatchYard'] as String?,
      source: json['source'] as String?,
      jobType: $enumDecodeNullable(_$JobTypeEnumMap, json['jobType']),
      jobStatus: $enumDecodeNullable(_$JobStatusEnumMap, json['jobStatus']),
      proposedDurationMinutes:
          (json['proposedDurationMinutes'] as num?)?.toInt(),
      isLocked: json['isLocked'] as bool?,
      dispatcherNotes: json['dispatcherNotes'] as String?,
      officeNotes: json['officeNotes'] as String?,
      productFamily: json['productFamily'] == null
          ? null
          : ProductFamily.fromJson(
              json['productFamily'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : CustomerDetails.fromJson(json['customer'] as Map<String, dynamic>),
      customerLocation: json['customerLocation'] == null
          ? null
          : LocationInfo.fromJson(
              json['customerLocation'] as Map<String, dynamic>),
      startLocation: json['startLocation'] == null
          ? null
          : LocationInfo.fromJson(
              json['startLocation'] as Map<String, dynamic>),
      endLocation: json['endLocation'] == null
          ? null
          : LocationInfo.fromJson(json['endLocation'] as Map<String, dynamic>),
      haulier: json['haulier'] == null
          ? null
          : HaulierDetails.fromJson(json['haulier'] as Map<String, dynamic>),
      containers: json['containers'] == null
          ? null
          : JobContainers.fromJson(json['containers'] as Map<String, dynamic>),
      trailer: json['trailer'] == null
          ? null
          : JobTrailers.fromJson(json['trailer'] as Map<String, dynamic>),
      provisionalCost: json['provisionalCost'] == null
          ? null
          : ProvisionalCostDetails.fromJson(
              json['provisionalCost'] as Map<String, dynamic>),
      numberOfJobsToBeCreated:
          (json['numberOfJobsToBeCreated'] as num?)?.toInt(),
      timeZoneId: json['timeZoneId'] as String?,
    )
      ..jobNumber = (json['jobNumber'] as num?)?.toInt()
      ..notBefore = json['notBefore'] == null
          ? null
          : DateTime.parse(json['notBefore'] as String)
      ..driverNotes = json['driverNotes'] as String?
      ..clonedFromJobId = json['clonedFromJobId'] as String?;

Map<String, dynamic> _$JobRequestModelToJson(JobRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jobNumber': instance.jobNumber,
      'scheduledDate': instance.scheduledDate?.toIso8601String(),
      'notBefore': instance.notBefore?.toIso8601String(),
      'proposedDueDate': instance.proposedDueDate?.toIso8601String(),
      'dispatchYard': instance.dispatchYard,
      'source': instance.source,
      'jobType': _$JobTypeEnumMap[instance.jobType],
      'jobStatus': _$JobStatusEnumMap[instance.jobStatus],
      'dispatcherNotes': instance.dispatcherNotes,
      'officeNotes': instance.officeNotes,
      'driverNotes': instance.driverNotes,
      'proposedDurationMinutes': instance.proposedDurationMinutes,
      'isLocked': instance.isLocked,
      'clonedFromJobId': instance.clonedFromJobId,
      'productFamily': instance.productFamily,
      'customer': instance.customer,
      'customerLocation': instance.customerLocation,
      'startLocation': instance.startLocation,
      'endLocation': instance.endLocation,
      'haulier': instance.haulier,
      'containers': instance.containers,
      'trailer': instance.trailer,
      'provisionalCost': instance.provisionalCost,
      'numberOfJobsToBeCreated': instance.numberOfJobsToBeCreated,
      'timeZoneId': instance.timeZoneId,
      'isExactSchedule': instance.isExactSchedule,
    };

const _$JobTypeEnumMap = {
  JobType.swap: 'swap',
  JobType.dropOff: 'dropOff',
  JobType.pickUp: 'pickUp',
  JobType.liveLoad: 'liveLoad',
  JobType.yardWork: 'yardWork',
  JobType.pullAndReturn: 'pullAndReturn',
  JobType.sales: 'sales',
  JobType.preLoad: 'preLoad',
  JobType.preLoadWithReturn: 'preLoadWithReturn',
  JobType.interCompanyUnload: 'interCompanyUnload',
  JobType.emptyContainer: 'emptyContainer',
  JobType.pullAndReturnType2: 'pullAndReturnType2',
  JobType.maintenance: 'maintenance',
};

const _$JobStatusEnumMap = {
  JobStatus.pending: 'pending',
  JobStatus.scheduling: 'scheduling',
  JobStatus.scheduled: 'scheduled',
  JobStatus.abandoned: 'abandoned',
  JobStatus.completed: 'completed',
  JobStatus.deleted: 'deleted',
  JobStatus.started: 'started',
};
