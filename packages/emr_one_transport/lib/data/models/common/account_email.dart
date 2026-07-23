import 'package:json_annotation/json_annotation.dart';

part 'account_email.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class AccountEmail {
  const AccountEmail({
    required this.code,
    required this.contactName,
    required this.email,
    required this.contactType,
  });
  factory AccountEmail.fromJson(Map<String, dynamic> json) =>
      _$AccountEmailFromJson(json);
  final String code;
  final String contactName;
  final String email;
  final String contactType;

  Map<String, dynamic> toJson() => _$AccountEmailToJson(this);
}
