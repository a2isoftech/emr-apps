import 'dart:convert';
import 'dart:core';

import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:emr_sharedtypes/models/consignment/consignment_note.dart';
import 'package:emr_sharedtypes/models/ticket/sync_weighbridge_ticket_task.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket.g.dart';

@JsonSerializable(explicitToJson: true)
class Ticket {
  Ticket({
    required this.id,
    required this.yardId,
    required this.yardCode,
    required this.date,
    // required this.createdDate,
    required this.price,
    required this.ticketCategory,
    required this.ticketNumber,
    // required this.ticketDate,
    required this.ticketStatus,
    required this.ticketType,
    required this.account,
    required this.transportDetails,
    required this.currency,
    required this.extendedProperties,
    this.paymentValidationResult,
    this.isPayableAtEdge = false,
    this.isPaymentAuthorizationRequired = false,
    this.defaultPaymentMethod,
    this.paymentDeduction,
    this.acceptedConsignmentNote,
    this.rejectedConsignmentNote,
    this.syncWeighbridgeTicketTask,
    this.syncWeighbridgeTicketTasks,
    this.remittanceDetails,
    this.haulageCharge,
    this.deductions = const [],
    this.mediaAssets = const [],
    this.haulagePrice = 0,
    this.metadata = const {},
  });

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);

  String id;
  // int? trade2Key;
  String yardId;
  String yardCode;
  int ticketNumber;
  TicketType ticketType;
  TicketCategory ticketCategory;
  TicketStatus ticketStatus;
  String? currency;
  ServiceType? serviceType;
  double haulagePrice;
  HaulageCharge? haulageCharge;
  List<BaseDeduction> deductions;
  DateTime date;
  Created? created;
  TicketAccount account;
  TransportDetails transportDetails;
  TicketRemittance? remittanceDetails;
  // String? accountAccountNo;
  // String? accountName;
  // String? locationCode;
  // String? locationName;
  List<TicketLine>? lines;
  // DateTime? publishedToTrade;
  // DateTime createdDate;
  // String? createdBy;
  // DateTime? modifiedDate;
  // String? modifiedBy;
  double? price;
  // String? vehicleNo;
  // String? deliveryNote;
  // String? transportJobNumber;
  // String? contractRef;
  // List<MediaAsset>? mediaAssets;
  // DateTime ticketDate;
  // String? vehicleMake;
  // String? vehicleModel;
  // String? vehicleColour;
  // String? emrInvoiceNumber;
  TicketAccount? haulier;
  // DateTime? confiredDate;
  // String? confirmedBy;
  // String? commodityStatus;
  // String? traderInvRef;
  // String? transportMode;
  // String? provExRate;
  // String? confExRate;
  // String? vhibNumber;
  Map<String, dynamic> extendedProperties;
  PaymentRecord? paymentRecord;
  bool isPayableAtEdge;
  bool isPaymentAuthorizationRequired;
  PaymentMethod? defaultPaymentMethod;
  PaymentValidationResult? paymentValidationResult;
  PaymentDeductions? paymentDeduction;
  ConsignmentNote? acceptedConsignmentNote;
  ConsignmentNote? rejectedConsignmentNote;
  SyncWeighbridgeTicketTask? syncWeighbridgeTicketTask;
  List<SyncWeighbridgeTicketTask>? syncWeighbridgeTicketTasks;
  List<MediaAsset> mediaAssets;
  final Map<String, dynamic> metadata;

  Map<String, dynamic> toJson() => _$TicketToJson(this);

  Ticket copyWith({Map<String, dynamic>? changes}) {
    final json = toJson();
    if (changes != null) {
      json.addAll(changes);
    }
    return Ticket.fromJson(
      jsonDecode(jsonEncode(json)) as Map<String, dynamic>,
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AccountIdentification {
  AccountIdentification({required this.url, required this.documentTypeID});

  factory AccountIdentification.fromJson(Map<String, dynamic> json) =>
      _$AccountIdentificationFromJson(json);
  String url;
  String documentTypeID;

  Map<String, dynamic> toJson() => _$AccountIdentificationToJson(this);
}
