import 'package:json_annotation/json_annotation.dart';

part 'report_details.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class ReportDetails {
  ReportDetails(
    this.id,
    this.reportName,
    this.displayName,
    this.reportUrl,
  );

  factory ReportDetails.fromJson(Map<String, dynamic> json) =>
      _$ReportDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ReportDetailsToJson(this);

  final String id;
  final String reportName;
  final String displayName;
  final String reportUrl;
}
