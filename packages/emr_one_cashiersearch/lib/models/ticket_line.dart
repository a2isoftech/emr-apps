import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_sharedtypes/uom/uom_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_line.g.dart';

@JsonSerializable(explicitToJson: true)
class TicketLine {
  TicketLine({
    required this.isActive,
    this.productId,
    this.product,
    this.lineNumber,
    this.rate,
    this.partyContractRef,
    this.locationId,
    this.price = 0,
    this.elvQuoteIds = const [],
    this.extendedProperties = const {},
    this.deductions = const [],
    this.deductionCharges = 0,
    this.payableAfterCostAndDeduction = 0,
    this.payableBeforeCostAndDeduction = 0,
    this.prorateDeductions = const [],
    this.mediaAssets = const [],
    DateTime? grossWeightDateTime,
  }) {
    this.grossWeightDateTime = grossWeightDateTime ?? DateTime.utc(1);
  }

  factory TicketLine.fromJson(Map<String, dynamic> json) =>
      _$TicketLineFromJson(json);

  String? productId;
  Product? product;
  int? lineNumber;
  UomValue? rate;
  UomValue? grossWeight;
  UomValue? netWeight;
  String? partyContractRef;
  String? locationId;
  double price;
  Location? location;
  List<Deductions> deductions;
  List<Costs>? costs;
  List<Comment>? internalComments;
  UomValue? totalTareWeight;
  UomValue? totalDirtDeduction;
  double? totalCostDeduction;
  bool isActive;
  Created? created;
  Modified? modified;
  Map<String, dynamic> extendedProperties;
  List<String> elvQuoteIds;
  String? ewcCode;
  double deductionCharges;
  double payableBeforeCostAndDeduction;
  double payableAfterCostAndDeduction;
  List<BaseDeduction> prorateDeductions;
  List<MediaAsset> mediaAssets;
  late DateTime grossWeightDateTime;

  Map<String, dynamic> toJson() => _$TicketLineToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Product {
  Product({
    required this.code,
    required this.description,
    required this.id,
    this.active,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  String code;
  bool? active;
  String description;
  String id;
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Cost {
  Cost();
  factory Cost.fromJson(Map<String, dynamic> json) => _$CostFromJson(json);
  String? costType;
  UomValue? chargedRate;
  UomValue? confirmedRate;
  String? costParty;
  String? costStatus;
  String? confirmedValue;
  UomValue? provRate;
  String? costSource;
  String? provValue;
  String? tHSierInvoiceRef;
  String? confirmedby;
  String? eMRInvoice;
  Map<String, dynamic> toJson() => _$CostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CommodityDetail {
  CommodityDetail();
  factory CommodityDetail.fromJson(Map<String, dynamic> json) =>
      _$CommodityDetailFromJson(json);
  String? productDescription;
  DateTime? grossDatetime;
  String? priceOrigin;
  String? tareSeqNo;
  String? weighedBy;
  String? externalGross;
  String? commodityComment;
  String? eWCCode;
  String? dirtDeduction;
  String? manualGrossreason;
  String? internalTare;
  String? consignmentNoteno;
  String? reviewStatus;
  String? grossSeqNo;
  DateTime? tareDatetime;
  String? partyWasteStreamNo;
  UomValue? exchangeRate;
  String? purityPercentage;
  String? externalTare;
  String? internalGross;
  String? adjustmentPercentage;
  String? tareGrossReason;
  Map<String, dynamic> toJson() => _$CommodityDetailToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Location {
  Location({
    required this.id,
    required this.code,
    required this.description,
    this.yardId,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  String description;
  String code;
  String? yardId;
  String id;

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Deductions {
  Deductions({
    required this.weight,
    required this.typeId,
    required this.created,
    required this.modified,
    this.isTareFromPreviousWeight = false,
    this.hasSeenZero = false,
    this.mediaAssets = const [],
    this.comments = const [],
  });

  factory Deductions.fromJson(Map<String, dynamic> json) =>
      _$DeductionsFromJson(json);

  List<Comment> comments;
  Created created;
  Modified modified;
  bool isTareFromPreviousWeight;
  bool hasSeenZero;
  UomValue? weight;
  double? value;
  String typeId;
  List<MediaAsset> mediaAssets;
  Map<String, dynamic> toJson() => _$DeductionsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Costs {
  Costs({required this.typeId});
  factory Costs.fromJson(Map<String, dynamic> json) => _$CostsFromJson(json);
  String typeId;
  double? value;
  UomValue? rate;
  Map<String, dynamic> toJson() => _$CostsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Comment {
  Comment({required this.content, required this.created});
  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
  String content;
  Created created;
  Map<String, dynamic> toJson() => _$CommentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Created {
  Created({required this.userInfoId, required this.userName, required this.at});
  factory Created.fromJson(Map<String, dynamic> json) =>
      _$CreatedFromJson(json);
  String userInfoId;
  String userName;
  DateTime at;
  Map<String, dynamic> toJson() => _$CreatedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Modified {
  Modified({
    required this.userInfoId,
    required this.userName,
    required this.at,
  });
  factory Modified.fromJson(Map<String, dynamic> json) =>
      _$ModifiedFromJson(json);
  String userInfoId;
  String userName;
  DateTime at;
  Map<String, dynamic> toJson() => _$ModifiedToJson(this);
}
