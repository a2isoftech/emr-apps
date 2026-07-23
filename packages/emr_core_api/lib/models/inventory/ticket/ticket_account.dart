import 'package:json_annotation/json_annotation.dart';

part 'ticket_account.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class TicketAccount {
  TicketAccount();

  factory TicketAccount.fromJson(Map<String, dynamic> json) =>
      _$TicketAccountFromJson(json);

  factory TicketAccount.blank() => TicketAccount()
    ..accountNumber = ''
    ..name = '';

  Map<String, dynamic> toJson() => _$TicketAccountToJson(this);

  late String accountNumber;
  late String name;
}
