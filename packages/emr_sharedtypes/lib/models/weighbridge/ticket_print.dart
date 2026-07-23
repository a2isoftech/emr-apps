import 'package:emr_sharedtypes/models/weighbridge/weighbridge.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_print.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class TicketPrint {
  TicketPrint({
    required this.name,
    required this.headerText,
    required this.numberOfCopies,
    required this.printer,
    required this.printForTicketDirections,
    required this.ticketPrintType,
    required this.templateName,
    this.showWeightMode = ShowWeightMode.paidWeightOnly,
  });

  factory TicketPrint.fromJson(Map<String, dynamic> json) =>
      _$TicketPrintFromJson(json);

  Map<String, dynamic> toJson() => _$TicketPrintToJson(this);

  String name;
  String headerText;
  int numberOfCopies;
  Printer printer;
  PrintForTicketDirections printForTicketDirections;
  TicketPrintType ticketPrintType;
  ShowWeightMode showWeightMode;
  String templateName;
}
