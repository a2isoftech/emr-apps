import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_record_ticket.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentRecordTicket {
  PaymentRecordTicket({
    this.account,
    this.id,
    this.currency,
    this.ticketNumber,
    this.price,
    this.provPrice,
    this.yardCode,
  });

  factory PaymentRecordTicket.fromJson(Map<String, dynamic> json) =>
      _$PaymentRecordTicketFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentRecordTicketToJson(this);

  TicketAccount? account;
  String? id;
  String? currency;
  double? ticketNumber;
  double? price;
  double? provPrice;
  String? yardCode;
}
