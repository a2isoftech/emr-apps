// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_upload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BackgroundUpload _$BackgroundUploadFromJson(Map<String, dynamic> json) =>
    BackgroundUpload(
      json['source'] as String,
      json['destinationUrl'] as String,
      id: json['id'] as String? ?? '',
      status: $enumDecodeNullable(
              _$BackgroundTransferStatusEnumMap, json['status']) ??
          BackgroundTransferStatus.pending,
      message: json['message'] as String? ?? '',
      attempts: (json['attempts'] as num?)?.toInt() ?? 0,
      connectionType: $enumDecodeNullable(
              _$BackgroundUploadConnectionTypeEnumMap,
              json['connectionType']) ??
          BackgroundUploadConnectionType.any,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$BackgroundUploadToJson(BackgroundUpload instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source': instance.source,
      'destinationUrl': instance.destinationUrl,
      'status': _$BackgroundTransferStatusEnumMap[instance.status]!,
      'message': instance.message,
      'attempts': instance.attempts,
      'timestamp': instance.timestamp.toIso8601String(),
      'connectionType':
          _$BackgroundUploadConnectionTypeEnumMap[instance.connectionType]!,
    };

const _$BackgroundTransferStatusEnumMap = {
  BackgroundTransferStatus.pending: 'pending',
  BackgroundTransferStatus.completed: 'completed',
  BackgroundTransferStatus.failed: 'failed',
  BackgroundTransferStatus.abandoned: 'abandoned',
};

const _$BackgroundUploadConnectionTypeEnumMap = {
  BackgroundUploadConnectionType.any: 'any',
  BackgroundUploadConnectionType.wifi: 'wifi',
};
