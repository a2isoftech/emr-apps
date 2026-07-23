import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upload_document_model.g.dart';

@JsonSerializable()
class UploadDocumentModel {
  UploadDocumentModel({
    required this.fileId,
    required this.fileName,
    required this.filePath,
    required this.documentTypeID,
    required this.documentSubTypeID,
    required this.expirationDate,
    required this.documentNumber,
  });

  factory UploadDocumentModel.fromJson(Map<String, dynamic> json) =>
      _$UploadDocumentModelFromJson(json);

  UploadDocumentModel.init();

  late String fileId;
  late String fileName;
  late String filePath;
  late Enum$IdentificationType documentTypeID;
  late Enum$IdentificationSubType documentSubTypeID;
  late DateTime? expirationDate;
  late String? documentNumber;

  Map<String, dynamic> toJson() => _$UploadDocumentModelToJson(this);
}
