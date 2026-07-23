import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delete_job_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class DeleteJobRequest {
  DeleteJobRequest(
      this.jobNumber, this.deleteReasonDescription, this.deleteComments,);

  factory DeleteJobRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteJobRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteJobRequestToJson(this);

  int jobNumber;
  String deleteReasonDescription;
  String? deleteComments;
}

class DeleteJobRequestModel {
  DeleteJobRequestModel(
    this.jobNumber,
    this.deleteReasonDescription,
    this.deleteComments,
  );

  int jobNumber;
  ValueNotifier<String> deleteReasonDescription;
  ValueNotifier<String> deleteComments;
}
