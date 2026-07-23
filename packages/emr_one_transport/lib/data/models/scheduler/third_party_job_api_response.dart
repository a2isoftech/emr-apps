import 'package:emr_one_transport/data/models/scheduler/third_party_job.dart';
import 'package:json_annotation/json_annotation.dart';

part 'third_party_job_api_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class ThirdPartyJobApiResponse {
  ThirdPartyJobApiResponse({
    required this.haulierCode,
    required this.haulierName,
    required this.scheduledJobs,
  });

  factory ThirdPartyJobApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ThirdPartyJobApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ThirdPartyJobApiResponseToJson(this);

  String haulierCode;
  String haulierName;
  List<ThirdPartyJob> scheduledJobs;
}
