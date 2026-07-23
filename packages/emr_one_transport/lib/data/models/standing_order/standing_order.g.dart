// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standing_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StandingOrder _$StandingOrderFromJson(
  Map<String, dynamic> json,
) => StandingOrder(
  id: json['id'] as String?,
  territoryCode: json['territoryCode'] as String?,
  standingOrderNumber: (json['standingOrderNumber'] as num?)?.toInt(),
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
  jobType: json['jobType'] as String?,
  dispatchYard: json['dispatchYard'] as String?,
  duration: (json['duration'] as num?)?.toInt(),
  active: json['active'] as bool?,
  status: json['status'] as String?,
  dispatcherNotes: json['dispatcherNotes'] as String?,
  officeNotes: json['officeNotes'] as String?,
  productFamily: json['productFamily'] == null
      ? null
      : ProductFamily.fromJson(json['productFamily'] as Map<String, dynamic>),
  trailer: json['trailer'] == null
      ? null
      : JobTrailers.fromJson(json['trailer'] as Map<String, dynamic>),
  customer: json['customer'] == null
      ? null
      : CustomerDetails.fromJson(json['customer'] as Map<String, dynamic>),
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
  created: json['created'] == null
      ? null
      : UserActionInfo.fromJson(json['created'] as Map<String, dynamic>),
  modified: json['modified'] == null
      ? null
      : UserActionInfo.fromJson(json['modified'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StandingOrderToJson(StandingOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'territoryCode': instance.territoryCode,
      'standingOrderNumber': instance.standingOrderNumber,
      'applicableDays': instance.applicableDays,
      'effectiveDate': instance.effectiveDate?.toIso8601String(),
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'recurringFrequency': instance.recurringFrequency,
      'repeatPerDay': instance.repeatPerDay,
      'daysInAdvance': instance.daysInAdvance,
      'isProcessed': instance.isProcessed,
      'jobType': instance.jobType,
      'dispatchYard': instance.dispatchYard,
      'duration': instance.duration,
      'active': instance.active,
      'status': instance.status,
      'dispatcherNotes': instance.dispatcherNotes,
      'officeNotes': instance.officeNotes,
      'productFamily': instance.productFamily,
      'trailer': instance.trailer,
      'customer': instance.customer,
      'customerLocation': instance.customerLocation,
      'startLocation': instance.startLocation,
      'endLocation': instance.endLocation,
      'haulier': instance.haulier,
      'containers': instance.containers,
      'created': instance.created,
      'modified': instance.modified,
    };
