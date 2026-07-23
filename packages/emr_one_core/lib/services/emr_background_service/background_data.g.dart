// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BackgroundData _$BackgroundDataFromJson(Map<String, dynamic> json) =>
    BackgroundData(
      (json['uploads'] as List<dynamic>)
          .map((e) => BackgroundUpload.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BackgroundDataToJson(BackgroundData instance) =>
    <String, dynamic>{
      'uploads': instance.uploads,
    };
