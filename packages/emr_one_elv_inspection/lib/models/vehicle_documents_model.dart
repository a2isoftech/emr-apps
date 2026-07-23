import 'package:json_annotation/json_annotation.dart';

part 'vehicle_documents_model.g.dart';

@JsonSerializable()
class VehicleDocumentsModel {
  VehicleDocumentsModel({
    required this.imageType,
    this.path,
    this.documentType,
    this.documentSubType,
  });

  factory VehicleDocumentsModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleDocumentsModelFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleDocumentsModelToJson(this);

  final String imageType;
  final String? path;
  final String? documentType;
  final String? documentSubType;
}
