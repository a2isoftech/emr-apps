import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inspection_response_model.g.dart';

@JsonSerializable()
class InspectionResponseModel {
  InspectionResponseModel({
    required this.quoteStatus,
    required this.quote,
    required this.vehicleDetail,
    this.batchQuoteId,
  });

  factory InspectionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$InspectionResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$InspectionResponseModelToJson(this);

  final String quoteStatus;
  final InspectionQuoteResponseModel quote;
  final InspectionVehicleDetailResponseModel vehicleDetail;
  final int? batchQuoteId;
}
