import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
import 'package:json_annotation/json_annotation.dart';

part 'vehicle_documents_response_model.g.dart';

@JsonSerializable()
class VehicleDocumentsResponseModel {
  VehicleDocumentsResponseModel({
    required this.imageType,
    required this.documentType,
    required this.documentSubType,
    required this.updatedAt,
    this.path,
  });

  factory VehicleDocumentsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleDocumentsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleDocumentsResponseModelToJson(this);

  @VehicleDocumentConverter()
  final String imageType;

  @VerificationTypeDocumentConverter()
  final VerificationTypeEnum documentType;

  @VerificationSubTypeDocumentConverter()
  final VerificationSubTypeEnum documentSubType;
  final DateTime updatedAt;
  final String? path;
}
