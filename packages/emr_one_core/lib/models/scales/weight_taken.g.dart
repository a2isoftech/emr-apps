// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_taken.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScaleResponse _$ScaleResponseFromJson(Map<String, dynamic> json) =>
    ScaleResponse()
      ..id = json['id'] as String?
      ..type = json['type'] as String?
      ..payload = json['payload'] == null
          ? null
          : Payload.fromJson(json['payload'] as Map<String, dynamic>);

Map<String, dynamic> _$ScaleResponseToJson(ScaleResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'payload': instance.payload,
    };

Payload _$PayloadFromJson(Map<String, dynamic> json) => Payload(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PayloadToJson(Payload instance) => <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      weightTaken: json['weightTaken'] == null
          ? null
          : WeightTaken.fromJson(json['weightTaken'] as Map<String, dynamic>),
      archivedWeight: json['archivedWeight'] == null
          ? null
          : WeightTaken.fromJson(
              json['archivedWeight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'weightTaken': instance.weightTaken,
      'archivedWeight': instance.archivedWeight,
    };

WeightTaken _$WeightTakenFromJson(Map<String, dynamic> json) => WeightTaken(
      scaleIdentifier: json['scaleIdentifier'] as String?,
      value: (json['value'] as num?)?.toDouble(),
      uomCode: json['uomCode'] as String?,
      uomId: (json['uomId'] as num?)?.toInt(),
      errMsg: json['errMsg'] as String?,
      isSteady: json['isSteady'] as bool?,
      isArchivedWeight: json['isArchivedWeight'] as bool?,
      serialNo: json['serialNo'] as String?,
      isPersistentError: json['isPersistentError'] as bool?,
      hasSeenZero: json['hasSeenZero'] as bool?,
      consecutiveWeighingNumber:
          (json['consecutiveWeighingNumber'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WeightTakenToJson(WeightTaken instance) =>
    <String, dynamic>{
      'scaleIdentifier': instance.scaleIdentifier,
      'value': instance.value,
      'uomCode': instance.uomCode,
      'uomId': instance.uomId,
      'errMsg': instance.errMsg,
      'isSteady': instance.isSteady,
      'isArchivedWeight': instance.isArchivedWeight,
      'serialNo': instance.serialNo,
      'isPersistentError': instance.isPersistentError,
      'hasSeenZero': instance.hasSeenZero,
      'consecutiveWeighingNumber': instance.consecutiveWeighingNumber,
    };
