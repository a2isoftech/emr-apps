// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_loads_print_wrap_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveLoadsPrintWrapModel _$LiveLoadsPrintWrapModelFromJson(
        Map<String, dynamic> json) =>
    LiveLoadsPrintWrapModel(
      yard: json['yard'] as String,
      fromDate: json['fromDate'] as String,
      toDate: json['toDate'] as String,
      liveLoadsList: (json['liveLoadsList'] as List<dynamic>)
          .map((e) => LiveLoadsPrintModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LiveLoadsPrintWrapModelToJson(
        LiveLoadsPrintWrapModel instance) =>
    <String, dynamic>{
      'yard': instance.yard,
      'fromDate': instance.fromDate,
      'toDate': instance.toDate,
      'liveLoadsList': instance.liveLoadsList,
    };
