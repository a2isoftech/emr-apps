import 'package:emr_one_transport/data/models/jobs/transport_job_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'last_x_jobs_with_container_response.g.dart';

@JsonSerializable(explicitToJson: true)
class LastXJobsWithContainerResponse {
  const LastXJobsWithContainerResponse({
    required this.jobs,
    required this.assetNumber,
  });

  factory LastXJobsWithContainerResponse.fromJson(Map<String, dynamic> json) =>
      _$LastXJobsWithContainerResponseFromJson(json);

  final List<TransportJobResponse> jobs;
  final String assetNumber;

  Map<String, dynamic> toJson() => _$LastXJobsWithContainerResponseToJson(this);
}
