import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_record.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentRecord {
  PaymentRecord({
    required this.id,
    required this.paymentMethod,
    required this.yardCode,
    required this.ticketIds,
    required this.totalAmount,
    required this.paymentMethodDetails,
    required this.status,
    required this.needAuthorization,
    required this.tags,
    required this.extendedProperties,
    required this.created,
    required this.modified,
    required this.active,
    required this.cashDeductions,
    this.tickets = const [],
    this.authorizationDetails,
    this.advanceId,
    this.offsetInfo = const [],
    this.paymentType = PaymentType.ticket,
    this.totalFee = 0,
    this.advanceOffset = 0,
    this.roundingAdjustment = 0,
    this.haulageCharge = 0,
    this.roundingAdjustmentOnFee = 0,
    this.payableAfterCostAndDeduction = 0,
    this.payableAmount = 0,
    this.paymentRecordItems = const [],
    this.paymentPostingTask,
  });

  factory PaymentRecord.fromJson(Map<String, dynamic> json) =>
      _$PaymentRecordFromJson(json);
  final String id;
  final PaymentMethod paymentMethod;
  final String yardCode;
  final List<String> ticketIds;
  final double totalAmount;
  final double totalFee;
  final double advanceOffset;
  final double cashDeductions;
  final double roundingAdjustment;
  final double haulageCharge;
  final double roundingAdjustmentOnFee;
  final double payableAfterCostAndDeduction;
  final double payableAmount;
  Map<String, dynamic> paymentMethodDetails;
  PaymentStatus status;
  final bool needAuthorization;
  final AuthorizationDetails? authorizationDetails;
  final List<String> tags;
  final Map<String, dynamic> extendedProperties;
  final bool active;
  final Created created;
  final Modified modified;
  final List<PaymentRecordTicket> tickets;
  final PaymentType paymentType;
  final String? advanceId;
  final List<AdvanceOffsetInfo> offsetInfo;
  final List<PaymentRecordItem> paymentRecordItems;
  final PaymentPostingTask? paymentPostingTask;

  Map<String, dynamic> toJson() => _$PaymentRecordToJson(this);
}

enum PaymentStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('AWAITING_FOR_APPROVAL')
  awaitingForApproval,
  @JsonValue('APPROVED')
  approved,
  @JsonValue('READY')
  ready,
  @JsonValue('PROCESSED')
  processed,
  @JsonValue('HOLD')
  hold,
  @JsonValue('FAILED')
  failed,
  @JsonValue('UNPAID')
  unpaid,
}

PaymentStatus paymentStatusFromGraphql(String status) {
  if (status.isEmpty) {
    throw ArgumentError('Status cannot be null or empty');
  }

  final normalizedStatus = status.toUpperCase();
  return switch (normalizedStatus) {
    'PENDING' => PaymentStatus.pending,
    'AWAITING_FOR_APPROVAL' => PaymentStatus.awaitingForApproval,
    'APPROVED' => PaymentStatus.approved,
    'READY' => PaymentStatus.ready,
    'PROCESSED' => PaymentStatus.processed,
    'HOLD' => PaymentStatus.hold,
    'FAILED' => PaymentStatus.failed,
    'UNPAID' => PaymentStatus.unpaid,
    _ => throw ArgumentError('Unknown payment status: $status'),
  };
}

enum PaymentType {
  @JsonValue('TICKET')
  ticket,
  @JsonValue('ADVANCE')
  advance,
}

@JsonSerializable(explicitToJson: true)
class QuickPayTickets {
  QuickPayTickets({
    required this.ticketNo,
    required this.totalPayable,
    required this.currency,
    required this.ticketStatus,
  });
  factory QuickPayTickets.fromJson(Map<String, dynamic> json) =>
      _$QuickPayTicketsFromJson(json);
  double totalPayable;
  int ticketNo;
  String? currency;
  TicketStatus ticketStatus;

  Map<String, dynamic> toJson() => _$QuickPayTicketsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdvanceOffsetInfo {
  AdvanceOffsetInfo({required this.amount, required this.advanceId});
  factory AdvanceOffsetInfo.fromJson(Map<String, dynamic> json) =>
      _$AdvanceOffsetInfoFromJson(json);
  final double amount;
  final String advanceId;

  Map<String, dynamic> toJson() => _$AdvanceOffsetInfoToJson(this);
}
