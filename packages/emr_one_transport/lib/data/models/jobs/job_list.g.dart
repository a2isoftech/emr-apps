// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobList _$JobListFromJson(Map<String, dynamic> json) => JobList()
  ..id = json['id'] as String?
  ..jobNumber = (json['jobNumber'] as num?)?.toInt()
  ..territoryCode = json['territoryCode'] as String?
  ..scheduledDate = json['scheduledDate'] == null
      ? null
      : DateTime.parse(json['scheduledDate'] as String)
  ..notBefore = json['notBefore'] == null
      ? null
      : DateTime.parse(json['notBefore'] as String)
  ..dueDate =
      json['dueDate'] == null ? null : DateTime.parse(json['dueDate'] as String)
  ..flowType = json['flowType'] as String?
  ..dispatchYard = json['dispatchYard'] as String?
  ..source = json['source'] as String?
  ..sourceId = json['sourceId'] as String?
  ..jobType = json['jobType'] as String?
  ..jobStatus = json['jobStatus'] as String?
  ..active = json['active'] as bool?
  ..dispatcherNotes = json['dispatcherNotes'] as String?
  ..officeNotes = json['officeNotes'] as String?
  ..driverNotes = json['driverNotes'] as String?
  ..duration = (json['duration'] as num?)?.toInt()
  ..progressMinutes = (json['progressMinutes'] as num?)?.toInt()
  ..groupId = (json['groupId'] as num?)?.toInt()
  ..isEnforceJobSequence = json['isEnforceJobSequence'] as bool?
  ..isSyncedFromTrade2 = json['isSyncedFromTrade2'] as bool?
  ..isLocked = json['isLocked'] as bool?
  ..clonedFromJobId = json['clonedFromJobId'] as String?
  ..hasJobContainerImages = json['hasJobContainerImages'] as bool?
  ..hasJobContainerImagesProcessed =
      json['hasJobContainerImagesProcessed'] as bool?
  ..productFamily = json['productFamily'] == null
      ? null
      : ProductFamily.fromJson(json['productFamily'] as Map<String, dynamic>)
  ..customer = json['customer'] == null
      ? null
      : CustomerDetails.fromJson(json['customer'] as Map<String, dynamic>)
  ..customerLocation = json['customerLocation'] == null
      ? null
      : LocationInfo.fromJson(json['customerLocation'] as Map<String, dynamic>)
  ..startLocation = json['startLocation'] == null
      ? null
      : LocationInfo.fromJson(json['startLocation'] as Map<String, dynamic>)
  ..endLocation = json['endLocation'] == null
      ? null
      : LocationInfo.fromJson(json['endLocation'] as Map<String, dynamic>)
  ..haulier = json['haulier'] == null
      ? null
      : HaulierDetails.fromJson(json['haulier'] as Map<String, dynamic>)
  ..containers = json['containers'] == null
      ? null
      : JobContainers.fromJson(json['containers'] as Map<String, dynamic>)
  ..trailer = json['trailer'] == null
      ? null
      : JobTrailers.fromJson(json['trailer'] as Map<String, dynamic>)
  ..provisionalCost = json['provisionalCost'] == null
      ? null
      : ProvisionalCostDetails.fromJson(
          json['provisionalCost'] as Map<String, dynamic>)
  ..created = json['created'] == null
      ? null
      : UserActionInfo.fromJson(json['created'] as Map<String, dynamic>)
  ..modified = json['modified'] == null
      ? null
      : UserActionInfo.fromJson(json['modified'] as Map<String, dynamic>)
  ..delays = (json['delays'] as List<dynamic>?)
      ?.map((e) => DriverEvent.fromJson(e as Map<String, dynamic>))
      .toList()
  ..jobCompletionDetails = json['jobCompletionDetails'] == null
      ? null
      : JobCompletionDetails.fromJson(
          json['jobCompletionDetails'] as Map<String, dynamic>);

Map<String, dynamic> _$JobListToJson(JobList instance) => <String, dynamic>{
      'id': instance.id,
      'jobNumber': instance.jobNumber,
      'territoryCode': instance.territoryCode,
      'scheduledDate': instance.scheduledDate?.toIso8601String(),
      'notBefore': instance.notBefore?.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'flowType': instance.flowType,
      'dispatchYard': instance.dispatchYard,
      'source': instance.source,
      'sourceId': instance.sourceId,
      'jobType': instance.jobType,
      'jobStatus': instance.jobStatus,
      'active': instance.active,
      'dispatcherNotes': instance.dispatcherNotes,
      'officeNotes': instance.officeNotes,
      'driverNotes': instance.driverNotes,
      'duration': instance.duration,
      'progressMinutes': instance.progressMinutes,
      'groupId': instance.groupId,
      'isEnforceJobSequence': instance.isEnforceJobSequence,
      'isSyncedFromTrade2': instance.isSyncedFromTrade2,
      'isLocked': instance.isLocked,
      'clonedFromJobId': instance.clonedFromJobId,
      'hasJobContainerImages': instance.hasJobContainerImages,
      'hasJobContainerImagesProcessed': instance.hasJobContainerImagesProcessed,
      'productFamily': instance.productFamily,
      'customer': instance.customer,
      'customerLocation': instance.customerLocation,
      'startLocation': instance.startLocation,
      'endLocation': instance.endLocation,
      'haulier': instance.haulier,
      'containers': instance.containers,
      'trailer': instance.trailer,
      'provisionalCost': instance.provisionalCost,
      'created': instance.created,
      'modified': instance.modified,
      'delays': instance.delays,
      'jobCompletionDetails': instance.jobCompletionDetails,
    };
