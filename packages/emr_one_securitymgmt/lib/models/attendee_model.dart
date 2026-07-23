import 'package:emr_one_securitymgmt/models/email_address_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attendee_model.g.dart';

@JsonSerializable()
class SmAttendeeModel {
  SmAttendeeModel(this.type, this.emailAddress);

  factory SmAttendeeModel.fromJson(Map<String, dynamic> json) =>
      _$SmAttendeeModelFromJson(json);

  Map<String, dynamic> toJson() => _$SmAttendeeModelToJson(this);

  final String type;
  final SmEmailAddressModel emailAddress;
}
