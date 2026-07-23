// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImportApiResponse _$ImportApiResponseFromJson(Map<String, dynamic> json) =>
    ImportApiResponse(
      errors:
          (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      infos:
          (json['infos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      successes: (json['successes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      warnings: (json['warnings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ImportApiResponseToJson(ImportApiResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors,
      'infos': instance.infos,
      'successes': instance.successes,
      'warnings': instance.warnings,
    };
