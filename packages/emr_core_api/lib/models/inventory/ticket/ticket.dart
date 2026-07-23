import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_sharedtypes/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket.g.dart';

enum TicketType {
  @JsonValue('INWARDS')
  inwards,
  @JsonValue('OUTWARDS')
  outwards
}

enum TicketStatus {
  @JsonValue('DRAFT')
  draft,
  @JsonValue('ACTIVE')
  active,
  @JsonValue('FINISHED')
  finished,
  @JsonValue('CLOSED')
  closed,
  @JsonValue('DELETED')
  deleted,
  @JsonValue('PAYMENT_INITIATED')
  paymentInitiated,
  @JsonValue('INSTANT_QUICK_PAID')
  instantQuickPaid,
  @JsonValue('PAID')
  paid,
}

enum TicketCategory {
  @JsonValue('NORMAL')
  normal,
  @JsonValue('INTER_DEPOT')
  interDepot,
  @JsonValue('MERCHANT_TRUCK_TRADE')
  merchantTruckTrade,
  @JsonValue('TRUE_TRUCK_TRADE')
  trueTruckTrade,
  @JsonValue('INTER_YARD_TRANSFER')
  interYardTransfer
}

enum PriceOriginType {
  @JsonValue('NOT_SET')
  notSet,
  @JsonValue('GPL')
  gPL,
  @JsonValue('SPOT')
  spot,
  @JsonValue('FIXED')
  fixed,
  @JsonValue('PRICE_MATRIX')
  priceMatrix,
  @JsonValue('MANUAL')
  manual,
  @JsonValue('DIRT')
  dirt,
  @JsonValue('MANUAL_WEIGHBRIDGE')
  manualWeighbridge
}

@JsonSerializable(fieldRename: FieldRename.none)
class Ticket {
  Ticket(
    this.id,
    this.ticketStatus,
  );

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);

  Map<String, dynamic> toJson() => _$TicketToJson(this);

  final String id;
  late TicketAccount? account;
  late String yardCode;
  late int ticketNumber;
  late TicketCategory ticketCategory;
  final TicketStatus ticketStatus;
  late TicketType ticketType;
  late double price;
  late List<TicketLine> lines;
  late List<InventoryMediaAsset> mediaAssets;
  late List<InventoryMediaAsset> inspectionMedia;
  late String currency;
  late Created created;
}
