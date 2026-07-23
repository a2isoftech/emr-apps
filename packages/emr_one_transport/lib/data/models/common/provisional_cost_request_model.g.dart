// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provisional_cost_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProvisionalCostRequestModel _$ProvisionalCostRequestModelFromJson(
        Map<String, dynamic> json) =>
    ProvisionalCostRequestModel(
      firstLocationCode: json['firstLocationCode'] as String,
      secondLocationCodes: (json['secondLocationCodes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      startDate: DateTime.parse(json['startDate'] as String),
      haulierAccountNo: json['haulierAccountNo'] as String,
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$ProvisionalCostRequestModelToJson(
        ProvisionalCostRequestModel instance) =>
    <String, dynamic>{
      'firstLocationCode': instance.firstLocationCode,
      'secondLocationCodes': instance.secondLocationCodes,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'haulierAccountNo': instance.haulierAccountNo,
    };
