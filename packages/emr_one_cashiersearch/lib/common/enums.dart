import 'package:json_annotation/json_annotation.dart';

enum TicketType {
  @JsonValue('INWARDS')
  inwards,
  @JsonValue('OUTWARDS')
  outwards,
}

enum DeliveryMethod {
  @JsonValue('NONE')
  none,
  @JsonValue('DELIVERED')
  delivered,
  @JsonValue('COLLECTED')
  collected,
  @JsonValue('COLLECTED_LESS_CHARGE')
  collectedLessCharge,
  @JsonValue('COLLECTED_FULLY_CHARGED')
  collectedFullyCharged,
}

enum MediaAssetType {
  @JsonValue('COMMODITY_IMAGE')
  commodityImage,
  @JsonValue('INSPECTION_IMAGE')
  inspectionImage,
  @JsonValue('T2_COMMODITY_IMAGE')
  t2CommodityImage,
  @JsonValue('INVENTORY_DEFAB')
  inventoryDefab,
  @JsonValue('INVENTORY_CUTTING')
  inventoryCutting,
}

enum AccountStatus {
  @JsonValue('NONE')
  none,
  @JsonValue('DRAFT')
  draft,
  @JsonValue('LIVE')
  live,
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
  interYardTransfer,
  @JsonValue('CONTAINER')
  container,
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

enum ServiceType {
  @JsonValue('COLLECTED')
  collected,
  @JsonValue('DELIVERED')
  delivered,
}

enum Uom {
  @JsonValue('MT')
  mt,
  @JsonValue('LB')
  lb,
  @JsonValue('GT')
  gt,
  @JsonValue('NT')
  nt,
  @JsonValue('KG')
  kg,
  @JsonValue('LD')
  ld,
  @JsonValue('EA')
  ea,
  @JsonValue('LT')
  lt,
  @JsonValue('HR')
  hr,
  @JsonValue('CWT')
  cwt,
}

enum AccountType {
  @JsonValue('RETAIL')
  retail('RETAIL'),

  @JsonValue('BUSINESS')
  business('BUSINESS'),

  @JsonValue('YARD')
  yard('YARD');

  const AccountType(this.jsonValue);
  final String jsonValue;

  static AccountType fromJson(String type) => AccountType.values.firstWhere(
    (e) => e.jsonValue.toUpperCase() == type.toUpperCase(),
    orElse: () => throw ArgumentError('Invalid AccountType: $type'),
  );

  String toJson() => jsonValue;
}

enum PrepayCardIssuerType {
  @JsonValue('NONE')
  none,
  @JsonValue('QUANTUM')
  quantum,
  @JsonValue('INCENDIA')
  incendia,
  @JsonValue('TUXEDO')
  tuxedo,
  @JsonValue('TEST')
  test,
  @JsonValue('SECORE')
  secore,
}

enum TicketTabs {
  summary,
  haulege,
  attachment,
  comments,
  deductions,
  shipping,
  history,
}

enum CashierSearchView { listView, cardView }

enum AdvanceSearchView { listView, cardView }

enum AuthorizationMode {
  @JsonValue('NOT_SET')
  notSet,
  @JsonValue('PASSWORD')
  password,
  @JsonValue('WORKFLOW')
  workflow,
}

enum AdvanceStatus {
  @JsonValue('AUTHORISED')
  authorised,
  @JsonValue('PAID')
  paid,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('RECALLED')
  recalled,
  @JsonValue('DRAFT')
  draft,
  @JsonValue('POSTED')
  posted,
}

enum OffsetStatus {
  @JsonValue('NONE')
  none,
  @JsonValue('PARTIAL')
  partial,
  @JsonValue('FULL')
  full,
}

enum AdvanceReason {
  @JsonValue('COMMODITY')
  commodity,
  @JsonValue('HAULAGE')
  haulage,
  @JsonValue('COST')
  cost,
  @JsonValue('CONTRACT')
  contract,
  @JsonValue('PRE_INVOICE')
  preInvoice,
}

enum AdvanceTermType {
  @JsonValue('PERCENTAGE')
  percentage,
  @JsonValue('FIXED')
  fixed,
  @JsonValue('PARTIAL_PAY')
  partialPay,
}

enum TransactionType {
  @JsonValue('ISSUE')
  issue,
  @JsonValue('OFFSET')
  offset,
  @JsonValue('REVERSED')
  reversed,
}

enum AdvanceErrorCodes {
  @JsonValue('SAVING_ADVANCE_STATUS_NOT_DRAFT')
  savingAdvanceStatusNotDraft('SAVING_ADVANCE_STATUS_NOT_DRAFT'),

  @JsonValue('ACCOUNT_UPDATE')
  accountUpdate('ACCOUNT_UPDATE');

  const AdvanceErrorCodes(this.jsonValue);
  final String jsonValue;

  static AdvanceErrorCodes fromJson(String type) =>
      AdvanceErrorCodes.values.firstWhere(
        (e) => e.jsonValue.toUpperCase() == type.toUpperCase(),
        orElse: () => throw ArgumentError('Invalid AdvanceErrorCodes: $type'),
      );

  String toJson() => jsonValue;
}

enum DocumentType { drivingLicence, photoId, utilityBill }

enum AgreementType { celAgreement, secoreAgreement }

enum WasteRejectedReason {
  noNoteSupplied,
  noteMissingInformation,
  wasteTypeNoteAccepted,
}

enum ConsignmentTabs { consignee, waste, carrier, hazardousData, signature }

enum PaymentPostingTaskStatusEnum {
  @JsonValue('READY')
  ready,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('ERROR')
  error,
  @JsonValue('SUCCESS')
  success,
}

enum ImageType { gross, tare }

enum FlowStepType {
  ticketCreated,
  ticketFinished,
  syncTask,
  paymentRecord,
  postingTask,
}

enum TimelineStatus { notStarted, success, error, warning, pending }
