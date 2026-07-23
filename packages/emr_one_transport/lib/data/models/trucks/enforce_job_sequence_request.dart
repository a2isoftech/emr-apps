import 'package:json_annotation/json_annotation.dart';

part 'enforce_job_sequence_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class EnforceJobSequenceRequest {
  const EnforceJobSequenceRequest({
    required this.truckVrm,
    required this.startDateUtc,
    required this.endDateUtc,
    required this.enforceJobSequence,
  });
  factory EnforceJobSequenceRequest.fromJson(Map<String, dynamic> json) =>
      _$EnforceJobSequenceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$EnforceJobSequenceRequestToJson(this);

  final String truckVrm;
  final DateTime startDateUtc;
  final DateTime endDateUtc;
  final bool enforceJobSequence;
}
