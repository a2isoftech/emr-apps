import 'package:json_annotation/json_annotation.dart';

part 'send_yard_report_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SendYardReportRequest {
  SendYardReportRequest({
    required this.startDateUtc,
    required this.endDateUtc,
    required this.emailTo,
    required this.yardCodes,
    required this.ccCurrentUser,
  });

  factory SendYardReportRequest.fromJson(Map<String, dynamic> json) =>
      _$SendYardReportRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SendYardReportRequestToJson(this);

  final DateTime startDateUtc;
  final DateTime endDateUtc;
  final List<String> emailTo;
  final List<String> yardCodes;
  final bool ccCurrentUser;
}
