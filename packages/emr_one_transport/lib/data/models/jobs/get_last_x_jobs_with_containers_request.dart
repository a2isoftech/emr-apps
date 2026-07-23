import 'package:json_annotation/json_annotation.dart';

part 'get_last_x_jobs_with_containers_request.g.dart';

@JsonSerializable()
class GetLastXJobsWithContainersRequest {
  const GetLastXJobsWithContainersRequest({
    required this.count,
    required this.assetNumbers,
  });

  factory GetLastXJobsWithContainersRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GetLastXJobsWithContainersRequestFromJson(json);

  final int count;
  final List<String> assetNumbers;

  Map<String, dynamic> toJson() =>
      _$GetLastXJobsWithContainersRequestToJson(this);
}
