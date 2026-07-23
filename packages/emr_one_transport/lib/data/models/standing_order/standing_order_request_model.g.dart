// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standing_order_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StandingOrderRequestModel _$StandingOrderRequestModelFromJson(
  Map<String, dynamic> json,
) => StandingOrderRequestModel(
  id: json['id'] as String?,
  standingOrderId: json['standingOrderId'] as String?,
  territoryCode: json['territoryCode'] as String?,
  applicableDays: (json['applicableDays'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  effectiveDate: json['effectiveDate'] == null
      ? null
      : DateTime.parse(json['effectiveDate'] as String),
  expiryDate: json['expiryDate'] == null
      ? null
      : DateTime.parse(json['expiryDate'] as String),
  recurringFrequency: json['recurringFrequency'] as String?,
  repeatPerDay: (json['repeatPerDay'] as num?)?.toInt(),
  daysInAdvance: (json['daysInAdvance'] as num?)?.toInt(),
  isProcessed: json['isProcessed'] as bool?,
  jobType: $enumDecodeNullable(_$JobTypeEnumMap, json['jobType']),
  dispatchYard: json['dispatchYard'] as String?,
  active: json['active'] as bool?,
  dispatcherNotes: json['dispatcherNotes'] as String?,
  officeNotes: json['officeNotes'] as String?,
  customerLocation: json['customerLocation'] == null
      ? null
      : LocationInfo.fromJson(json['customerLocation'] as Map<String, dynamic>),
  startLocation: json['startLocation'] == null
      ? null
      : LocationInfo.fromJson(json['startLocation'] as Map<String, dynamic>),
  endLocation: json['endLocation'] == null
      ? null
      : LocationInfo.fromJson(json['endLocation'] as Map<String, dynamic>),
  haulier: json['haulier'] == null
      ? null
      : HaulierDetails.fromJson(json['haulier'] as Map<String, dynamic>),
  containers: json['containers'] == null
      ? null
      : StandingOrderContainer.fromJson(
          json['containers'] as Map<String, dynamic>,
        ),
  customer: json['customer'] == null
      ? null
      : CustomerDetails.fromJson(json['customer'] as Map<String, dynamic>),
  trailer: json['trailer'] == null
      ? null
      : JobTrailers.fromJson(json['trailer'] as Map<String, dynamic>),
  productFamily: json['productFamily'] == null
      ? null
      : ProductFamily.fromJson(json['productFamily'] as Map<String, dynamic>),
  proposedDurationMinutes:
      (json['proposedDurationMinutes'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$StandingOrderRequestModelToJson(
  StandingOrderRequestModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'standingOrderId': instance.standingOrderId,
  'territoryCode': instance.territoryCode,
  'applicableDays': instance.applicableDays,
  'effectiveDate': instance.effectiveDate?.toIso8601String(),
  'expiryDate': instance.expiryDate?.toIso8601String(),
  'recurringFrequency': instance.recurringFrequency,
  'repeatPerDay': instance.repeatPerDay,
  'daysInAdvance': instance.daysInAdvance,
  'isProcessed': instance.isProcessed,
  'jobType': _$JobTypeEnumMap[instance.jobType],
  'dispatchYard': instance.dispatchYard,
  'productFamily': instance.productFamily,
  'trailer': instance.trailer,
  'proposedDurationMinutes': instance.proposedDurationMinutes,
  'active': instance.active,
  'dispatcherNotes': instance.dispatcherNotes,
  'officeNotes': instance.officeNotes,
  'customer': instance.customer,
  'customerLocation': instance.customerLocation,
  'startLocation': instance.startLocation,
  'endLocation': instance.endLocation,
  'haulier': instance.haulier,
  'containers': instance.containers,
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
