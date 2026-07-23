import 'package:json_annotation/json_annotation.dart';

part 'open_job_report.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class OpenJobReport {
  const OpenJobReport({
    required this.haulierCodes,
    required this.startDate,
    required this.endDate,
    required this.isHaulageRateIncluded,
    required this.isFuelSurchargeIncluded,
    this.regionIds = const [],
  });

  factory OpenJobReport.fromJson(Map<String, dynamic> json) =>
      _$OpenJobReportFromJson(json);
  final List<String> haulierCodes;
  final DateTime startDate;
  final DateTime endDate;
  final bool isHaulageRateIncluded;
  final bool isFuelSurchargeIncluded;
  final List<String> regionIds;

  Map<String, dynamic> toJson() => _$OpenJobReportToJson(this);
}
