import 'package:json_annotation/json_annotation.dart';

part 'import_api_response.g.dart';

@JsonSerializable()
class ImportApiResponse {
  ImportApiResponse({this.errors, this.infos, this.successes, this.warnings});

  factory ImportApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ImportApiResponseFromJson(json);
  List<String>? errors;
  List<String>? infos;
  List<String>? successes;
  List<String>? warnings;

  Map<String, dynamic> toJson() => _$ImportApiResponseToJson(this);
}
