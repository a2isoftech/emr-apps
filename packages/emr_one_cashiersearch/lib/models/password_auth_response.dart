import 'package:json_annotation/json_annotation.dart';

part 'password_auth_response.g.dart';

@JsonSerializable(explicitToJson: true)
class PasswordAuthResponse {
  PasswordAuthResponse({
    required this.isSuccess,
    required this.errorMessage,
  });
  factory PasswordAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$PasswordAuthResponseFromJson(json);

  final bool isSuccess;
  final String? errorMessage;

  Map<String, dynamic> toJson() => _$PasswordAuthResponseToJson(this);
}
