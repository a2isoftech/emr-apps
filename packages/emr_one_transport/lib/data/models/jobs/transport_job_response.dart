import 'package:json_annotation/json_annotation.dart';

part 'transport_job_response.g.dart';

@JsonSerializable(explicitToJson: true)
class TransportJobResponse {
  const TransportJobResponse({
    this.id,
    this.jobNumber,
    this.scheduledDate,
    this.dueDate,
    this.dispatchYard,
    this.source,
    this.sourceId,
    this.jobType,
    this.jobStatus,
  });

  factory TransportJobResponse.fromJson(Map<String, dynamic> json) =>
      _$TransportJobResponseFromJson(json);

  final String? id;
  final int? jobNumber;
  final DateTime? scheduledDate;
  final DateTime? dueDate;
  final String? dispatchYard;
  final String? source;
  final String? sourceId;
  final String? jobType;
  final String? jobStatus;

  Map<String, dynamic> toJson() => _$TransportJobResponseToJson(this);
}
