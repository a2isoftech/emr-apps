// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadDocumentModel _$UploadDocumentModelFromJson(Map<String, dynamic> json) =>
    UploadDocumentModel(
      fileId: json['fileId'] as String,
      fileName: json['fileName'] as String,
      filePath: json['filePath'] as String,
      documentTypeID:
          Enum$IdentificationType.fromJson(json['documentTypeID'] as String),
      documentSubTypeID: Enum$IdentificationSubType.fromJson(
          json['documentSubTypeID'] as String),
      expirationDate: json['expirationDate'] == null
          ? null
          : DateTime.parse(json['expirationDate'] as String),
      documentNumber: json['documentNumber'] as String?,
    );

Map<String, dynamic> _$UploadDocumentModelToJson(
        UploadDocumentModel instance) =>
    <String, dynamic>{
      'fileId': instance.fileId,
      'fileName': instance.fileName,
      'filePath': instance.filePath,
      'documentTypeID': instance.documentTypeID,
      'documentSubTypeID': instance.documentSubTypeID,
      'expirationDate': instance.expirationDate?.toIso8601String(),
      'documentNumber': instance.documentNumber,
    };
