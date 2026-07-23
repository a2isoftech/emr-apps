// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanResponse _$PlanResponseFromJson(Map<String, dynamic> json) => PlanResponse(
      json['id'] as String,
      json['territoryCode'] as String,
      (json['planNumber'] as num).toInt(),
      json['planDate'] == null
          ? null
          : DateTime.parse(json['planDate'] as String),
      json['productFamily'] == null
          ? null
          : ProductFamily.fromJson(
              json['productFamily'] as Map<String, dynamic>),
      json['flowType'] as String?,
      (json['loads'] as num).toInt(),
      json['dispatchYard'] as String,
      json['uomValue'] == null
          ? null
          : UomValue.fromJson(json['uomValue'] as Map<String, dynamic>),
      json['due'] as String?,
      json['jobType'] as String?,
      json['officeNotes'] as String?,
      CustomerDetails.fromJson(json['customer'] as Map<String, dynamic>),
      LocationInfo.fromJson(json['customerLocation'] as Map<String, dynamic>),
      LocationInfo.fromJson(json['startLocation'] as Map<String, dynamic>),
      LocationInfo.fromJson(json['endLocation'] as Map<String, dynamic>),
      (json['haulierScheduleDetails'] as List<dynamic>)
          .map((e) => HaulierScheduleDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['dispatcherNotes'] as String?,
      json['containers'] == null
          ? null
          : PlanContainer.fromJson(json['containers'] as Map<String, dynamic>),
      jobStatusCount: (json['jobStatusCount'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      active: json['active'] as bool? ?? false,
    )..trailer = json['trailer'] == null
        ? null
        : PlanTrailer.fromJson(json['trailer'] as Map<String, dynamic>);

Map<String, dynamic> _$PlanResponseToJson(PlanResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'territoryCode': instance.territoryCode,
      'planNumber': instance.planNumber,
      'planDate': instance.planDate?.toIso8601String(),
      'productFamily': instance.productFamily,
      'flowType': instance.flowType,
      'loads': instance.loads,
      'dispatchYard': instance.dispatchYard,
      'uomValue': instance.uomValue,
      'due': instance.due,
      'jobType': instance.jobType,
      'officeNotes': instance.officeNotes,
      'customer': instance.customer,
      'customerLocation': instance.customerLocation,
      'startLocation': instance.startLocation,
      'endLocation': instance.endLocation,
      'haulierScheduleDetails': instance.haulierScheduleDetails,
      'dispatcherNotes': instance.dispatcherNotes,
      'containers': instance.containers,
      'trailer': instance.trailer,
      'active': instance.active,
      'jobStatusCount': instance.jobStatusCount,
    };
