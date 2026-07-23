import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inspection_documents_response_model.g.dart';

@JsonSerializable()
class InspectionDocumentsResponseModel {
  InspectionDocumentsResponseModel({
    required this.documents,
    required this.vehicleCats,
    required this.nonConformingParts,
    this.vehicleId,
    this.vehicleReg,
    this.vin,
  });

  factory InspectionDocumentsResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InspectionDocumentsResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$InspectionDocumentsResponseModelToJson(this);

  final List<VehicleDocumentsResponseModel> documents;
  final List<VehicleCatDetailResponseModel> vehicleCats;
  final List<NonConformingPartDocumentsModel> nonConformingParts;
  final int? vehicleId;
  final String? vehicleReg;
  final String? vin;
}
