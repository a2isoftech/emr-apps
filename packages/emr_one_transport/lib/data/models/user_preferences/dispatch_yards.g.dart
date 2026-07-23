// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispatch_yards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DispatchYards _$DispatchYardsFromJson(Map<String, dynamic> json) =>
    DispatchYards(
      yardCode: json['yardCode'] as String?,
      yardName: json['yardName'] as String?,
      isDispatchYard: json['isDispatchYard'] as bool?,
    );

Map<String, dynamic> _$DispatchYardsToJson(DispatchYards instance) =>
    <String, dynamic>{
      'yardCode': instance.yardCode,
      'yardName': instance.yardName,
      'isDispatchYard': instance.isDispatchYard,
    };
