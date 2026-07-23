import 'package:json_annotation/json_annotation.dart';

part 'send_haulier_report_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SendHaulierReportRequest {
  SendHaulierReportRequest({
    required this.startDateUtc,
    required this.endDateUtc,
    required this.emailTo,
    required this.ccCurrentUser,
    required this.haulierCode,
    required this.regionIds,
    this.vrm,
    this.isHaulageRateIncluded,
    this.isFuelSurchargeIncluded,
  });

  factory SendHaulierReportRequest.fromJson(Map<String, dynamic> json) =>
      _$SendHaulierReportRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SendHaulierReportRequestToJson(this);

  final DateTime startDateUtc;
  final DateTime endDateUtc;
  final List<String> emailTo;
  final String haulierCode;
  final List<String> regionIds;
  final String? vrm;
  final bool? isHaulageRateIncluded;
  final bool? isFuelSurchargeIncluded;
  final bool ccCurrentUser;
}
