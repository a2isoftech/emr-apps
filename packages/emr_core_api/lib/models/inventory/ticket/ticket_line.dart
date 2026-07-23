import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_line.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class TicketLine {
  TicketLine({
    this.isActive = true,
    this.deductions = const [],
    this.mediaAssets = const [],
    this.totalCostImpact = 0,
    this.extendedProperties = const {},
    this.price = 0,
    this.provPrice = 0,
    this.confPrice = 0,
    this.elvQuoteIds = const [],
  });

  factory TicketLine.fromJson(Map<String, dynamic> json) =>
      _$TicketLineFromJson(json);

  Map<String, dynamic> toJson() => _$TicketLineToJson(this);

  int? lineNumber;
  String? productId;
  String? stockAsProductId;
  String? locationId;
  String? weightSerial;
  UomValue? grossWeight;
  UomValue? netWeight;
  UomValue? rate;
  List<Deduction> deductions;
  List<InventoryMediaAsset> mediaAssets;
  double totalCostImpact;
  Map<String, dynamic> extendedProperties;
  List<String> elvQuoteIds;
  bool isActive;
  String? contractId;
  String? binNo;
  String? sealNo;
  String? consignmentNoteNo;
  double provPrice;
  double confPrice;
  double price;
  UomValue? totalTareWeight;
  UomValue? totalDirtDeduction;
  double? totalCostDeduction;
  InspectionDetails? inspectionDetails;
  String? scaleIdentifier;
  Created? created;
  DateTime? archivedDate;
  String? manualGrossWeightReason;
  bool isGrossFromPreviousWeight = false;
  bool hasSeenZero = false;
}
