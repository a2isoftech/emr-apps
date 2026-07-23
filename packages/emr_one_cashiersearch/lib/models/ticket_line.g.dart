// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketLine _$TicketLineFromJson(Map<String, dynamic> json) =>
    TicketLine(
        isActive: json['isActive'] as bool,
        productId: json['productId'] as String?,
        product: json['product'] == null
            ? null
            : Product.fromJson(json['product'] as Map<String, dynamic>),
        lineNumber: (json['lineNumber'] as num?)?.toInt(),
        rate: json['rate'] == null
            ? null
            : UomValue.fromJson(json['rate'] as Map<String, dynamic>),
        partyContractRef: json['partyContractRef'] as String?,
        locationId: json['locationId'] as String?,
        price: (json['price'] as num?)?.toDouble() ?? 0,
        elvQuoteIds:
            (json['elvQuoteIds'] as List<dynamic>?)
                ?.map((e) => e as String)
                .toList() ??
            const [],
        extendedProperties:
            json['extendedProperties'] as Map<String, dynamic>? ?? const {},
        deductions:
            (json['deductions'] as List<dynamic>?)
                ?.map((e) => Deductions.fromJson(e as Map<String, dynamic>))
                .toList() ??
            const [],
        deductionCharges: (json['deductionCharges'] as num?)?.toDouble() ?? 0,
        payableAfterCostAndDeduction:
            (json['payableAfterCostAndDeduction'] as num?)?.toDouble() ?? 0,
        payableBeforeCostAndDeduction:
            (json['payableBeforeCostAndDeduction'] as num?)?.toDouble() ?? 0,
        prorateDeductions:
            (json['prorateDeductions'] as List<dynamic>?)
                ?.map((e) => BaseDeduction.fromJson(e as Map<String, dynamic>))
                .toList() ??
            const [],
        mediaAssets:
            (json['mediaAssets'] as List<dynamic>?)
                ?.map((e) => MediaAsset.fromJson(e as Map<String, dynamic>))
                .toList() ??
            const [],
        grossWeightDateTime: json['grossWeightDateTime'] == null
            ? null
            : DateTime.parse(json['grossWeightDateTime'] as String),
      )
      ..grossWeight = json['grossWeight'] == null
          ? null
          : UomValue.fromJson(json['grossWeight'] as Map<String, dynamic>)
      ..netWeight = json['netWeight'] == null
          ? null
          : UomValue.fromJson(json['netWeight'] as Map<String, dynamic>)
      ..location = json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>)
      ..costs = (json['costs'] as List<dynamic>?)
          ?.map((e) => Costs.fromJson(e as Map<String, dynamic>))
          .toList()
      ..internalComments = (json['internalComments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList()
      ..totalTareWeight = json['totalTareWeight'] == null
          ? null
          : UomValue.fromJson(json['totalTareWeight'] as Map<String, dynamic>)
      ..totalDirtDeduction = json['totalDirtDeduction'] == null
          ? null
          : UomValue.fromJson(
              json['totalDirtDeduction'] as Map<String, dynamic>,
            )
      ..totalCostDeduction = (json['totalCostDeduction'] as num?)?.toDouble()
      ..created = json['created'] == null
          ? null
          : Created.fromJson(json['created'] as Map<String, dynamic>)
      ..modified = json['modified'] == null
          ? null
          : Modified.fromJson(json['modified'] as Map<String, dynamic>)
      ..ewcCode = json['ewcCode'] as String?;

Map<String, dynamic> _$TicketLineToJson(TicketLine instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'product': instance.product?.toJson(),
      'lineNumber': instance.lineNumber,
      'rate': instance.rate?.toJson(),
      'grossWeight': instance.grossWeight?.toJson(),
      'netWeight': instance.netWeight?.toJson(),
      'partyContractRef': instance.partyContractRef,
      'locationId': instance.locationId,
      'price': instance.price,
      'location': instance.location?.toJson(),
      'deductions': instance.deductions.map((e) => e.toJson()).toList(),
      'costs': instance.costs?.map((e) => e.toJson()).toList(),
      'internalComments': instance.internalComments
          ?.map((e) => e.toJson())
          .toList(),
      'totalTareWeight': instance.totalTareWeight?.toJson(),
      'totalDirtDeduction': instance.totalDirtDeduction?.toJson(),
      'totalCostDeduction': instance.totalCostDeduction,
      'isActive': instance.isActive,
      'created': instance.created?.toJson(),
      'modified': instance.modified?.toJson(),
      'extendedProperties': instance.extendedProperties,
      'elvQuoteIds': instance.elvQuoteIds,
      'ewcCode': instance.ewcCode,
      'deductionCharges': instance.deductionCharges,
      'payableBeforeCostAndDeduction': instance.payableBeforeCostAndDeduction,
      'payableAfterCostAndDeduction': instance.payableAfterCostAndDeduction,
      'prorateDeductions': instance.prorateDeductions
          .map((e) => e.toJson())
          .toList(),
      'mediaAssets': instance.mediaAssets.map((e) => e.toJson()).toList(),
      'grossWeightDateTime': instance.grossWeightDateTime.toIso8601String(),
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  code: json['code'] as String,
  description: json['description'] as String,
  id: json['id'] as String,
  active: json['active'] as bool?,
);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'code': instance.code,
  'active': instance.active,
  'description': instance.description,
  'id': instance.id,
};

Cost _$CostFromJson(Map<String, dynamic> json) => Cost()
  ..costType = json['costType'] as String?
  ..chargedRate = json['chargedRate'] == null
      ? null
      : UomValue.fromJson(json['chargedRate'] as Map<String, dynamic>)
  ..confirmedRate = json['confirmedRate'] == null
      ? null
      : UomValue.fromJson(json['confirmedRate'] as Map<String, dynamic>)
  ..costParty = json['costParty'] as String?
  ..costStatus = json['costStatus'] as String?
  ..confirmedValue = json['confirmedValue'] as String?
  ..provRate = json['provRate'] == null
      ? null
      : UomValue.fromJson(json['provRate'] as Map<String, dynamic>)
  ..costSource = json['costSource'] as String?
  ..provValue = json['provValue'] as String?
  ..tHSierInvoiceRef = json['tHSierInvoiceRef'] as String?
  ..confirmedby = json['confirmedby'] as String?
  ..eMRInvoice = json['eMRInvoice'] as String?;

Map<String, dynamic> _$CostToJson(Cost instance) => <String, dynamic>{
  'costType': instance.costType,
  'chargedRate': instance.chargedRate?.toJson(),
  'confirmedRate': instance.confirmedRate?.toJson(),
  'costParty': instance.costParty,
  'costStatus': instance.costStatus,
  'confirmedValue': instance.confirmedValue,
  'provRate': instance.provRate?.toJson(),
  'costSource': instance.costSource,
  'provValue': instance.provValue,
  'tHSierInvoiceRef': instance.tHSierInvoiceRef,
  'confirmedby': instance.confirmedby,
  'eMRInvoice': instance.eMRInvoice,
};

CommodityDetail _$CommodityDetailFromJson(Map<String, dynamic> json) =>
    CommodityDetail()
      ..productDescription = json['productDescription'] as String?
      ..grossDatetime = json['grossDatetime'] == null
          ? null
          : DateTime.parse(json['grossDatetime'] as String)
      ..priceOrigin = json['priceOrigin'] as String?
      ..tareSeqNo = json['tareSeqNo'] as String?
      ..weighedBy = json['weighedBy'] as String?
      ..externalGross = json['externalGross'] as String?
      ..commodityComment = json['commodityComment'] as String?
      ..eWCCode = json['eWCCode'] as String?
      ..dirtDeduction = json['dirtDeduction'] as String?
      ..manualGrossreason = json['manualGrossreason'] as String?
      ..internalTare = json['internalTare'] as String?
      ..consignmentNoteno = json['consignmentNoteno'] as String?
      ..reviewStatus = json['reviewStatus'] as String?
      ..grossSeqNo = json['grossSeqNo'] as String?
      ..tareDatetime = json['tareDatetime'] == null
          ? null
          : DateTime.parse(json['tareDatetime'] as String)
      ..partyWasteStreamNo = json['partyWasteStreamNo'] as String?
      ..exchangeRate = json['exchangeRate'] == null
          ? null
          : UomValue.fromJson(json['exchangeRate'] as Map<String, dynamic>)
      ..purityPercentage = json['purityPercentage'] as String?
      ..externalTare = json['externalTare'] as String?
      ..internalGross = json['internalGross'] as String?
      ..adjustmentPercentage = json['adjustmentPercentage'] as String?
      ..tareGrossReason = json['tareGrossReason'] as String?;

Map<String, dynamic> _$CommodityDetailToJson(CommodityDetail instance) =>
    <String, dynamic>{
      'productDescription': instance.productDescription,
      'grossDatetime': instance.grossDatetime?.toIso8601String(),
      'priceOrigin': instance.priceOrigin,
      'tareSeqNo': instance.tareSeqNo,
      'weighedBy': instance.weighedBy,
      'externalGross': instance.externalGross,
      'commodityComment': instance.commodityComment,
      'eWCCode': instance.eWCCode,
      'dirtDeduction': instance.dirtDeduction,
      'manualGrossreason': instance.manualGrossreason,
      'internalTare': instance.internalTare,
      'consignmentNoteno': instance.consignmentNoteno,
      'reviewStatus': instance.reviewStatus,
      'grossSeqNo': instance.grossSeqNo,
      'tareDatetime': instance.tareDatetime?.toIso8601String(),
      'partyWasteStreamNo': instance.partyWasteStreamNo,
      'exchangeRate': instance.exchangeRate?.toJson(),
      'purityPercentage': instance.purityPercentage,
      'externalTare': instance.externalTare,
      'internalGross': instance.internalGross,
      'adjustmentPercentage': instance.adjustmentPercentage,
      'tareGrossReason': instance.tareGrossReason,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
  id: json['id'] as String,
  code: json['code'] as String,
  description: json['description'] as String,
  yardId: json['yardId'] as String?,
);

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
  'description': instance.description,
  'code': instance.code,
  'yardId': instance.yardId,
  'id': instance.id,
};

Deductions _$DeductionsFromJson(Map<String, dynamic> json) => Deductions(
  weight: json['weight'] == null
      ? null
      : UomValue.fromJson(json['weight'] as Map<String, dynamic>),
  typeId: json['typeId'] as String,
  created: Created.fromJson(json['created'] as Map<String, dynamic>),
  modified: Modified.fromJson(json['modified'] as Map<String, dynamic>),
  isTareFromPreviousWeight: json['isTareFromPreviousWeight'] as bool? ?? false,
  hasSeenZero: json['hasSeenZero'] as bool? ?? false,
  mediaAssets:
      (json['mediaAssets'] as List<dynamic>?)
          ?.map((e) => MediaAsset.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  comments:
      (json['comments'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
)..value = (json['value'] as num?)?.toDouble();

Map<String, dynamic> _$DeductionsToJson(Deductions instance) =>
    <String, dynamic>{
      'comments': instance.comments.map((e) => e.toJson()).toList(),
      'created': instance.created.toJson(),
      'modified': instance.modified.toJson(),
      'isTareFromPreviousWeight': instance.isTareFromPreviousWeight,
      'hasSeenZero': instance.hasSeenZero,
      'weight': instance.weight?.toJson(),
      'value': instance.value,
      'typeId': instance.typeId,
      'mediaAssets': instance.mediaAssets.map((e) => e.toJson()).toList(),
    };

Costs _$CostsFromJson(Map<String, dynamic> json) =>
    Costs(typeId: json['typeId'] as String)
      ..value = (json['value'] as num?)?.toDouble()
      ..rate = json['rate'] == null
          ? null
          : UomValue.fromJson(json['rate'] as Map<String, dynamic>);

Map<String, dynamic> _$CostsToJson(Costs instance) => <String, dynamic>{
  'typeId': instance.typeId,
  'value': instance.value,
  'rate': instance.rate?.toJson(),
};

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
  content: json['content'] as String,
  created: Created.fromJson(json['created'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
  'content': instance.content,
  'created': instance.created.toJson(),
};

Created _$CreatedFromJson(Map<String, dynamic> json) => Created(
  userInfoId: json['userInfoId'] as String,
  userName: json['userName'] as String,
  at: DateTime.parse(json['at'] as String),
);

Map<String, dynamic> _$CreatedToJson(Created instance) => <String, dynamic>{
  'userInfoId': instance.userInfoId,
  'userName': instance.userName,
  'at': instance.at.toIso8601String(),
};

Modified _$ModifiedFromJson(Map<String, dynamic> json) => Modified(
  userInfoId: json['userInfoId'] as String,
  userName: json['userName'] as String,
  at: DateTime.parse(json['at'] as String),
);

Map<String, dynamic> _$ModifiedToJson(Modified instance) => <String, dynamic>{
  'userInfoId': instance.userInfoId,
  'userName': instance.userName,
  'at': instance.at.toIso8601String(),
};
