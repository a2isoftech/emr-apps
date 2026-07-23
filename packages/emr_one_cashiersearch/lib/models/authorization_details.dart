import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'authorization_details.g.dart';

@JsonSerializable(explicitToJson: true)
class AuthorizationDetails {
  AuthorizationDetails({
    required this.type,
    required this.referenceId,
  });
  factory AuthorizationDetails.fromJson(Map<String, dynamic> json) =>
      _$AuthorizationDetailsFromJson(json);

  AuthorizationMode type;
  String referenceId;

  Map<String, dynamic> toJson() => _$AuthorizationDetailsToJson(this);
}
