import '../../../schema.graphql.dart';
import 'media_asset_fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'ticket_deduction_fragment.graphql.dart';
import 'uom_value.graphql.dart';

class Fragment$TicketLineFields {
  Fragment$TicketLineFields({
    required this.lineNumber,
    required this.productId,
    required this.locationId,
    this.weightSerial,
    required this.deductions,
    required this.mediaAssets,
    this.inspectionDetails,
    required this.financialCostImpacts,
    required this.grossWeight,
    required this.netWeight,
    this.product,
    this.location,
    required this.rate,
    required this.totalCostImpact,
    this.contractId,
    this.extendedProperties,
    required this.elvQuoteIds,
    required this.isActive,
    required this.price,
    required this.provPrice,
    required this.confPrice,
    required this.priceOrigin,
    this.binNo,
    this.sealNo,
    this.consignmentNoteNo,
    required this.totalCostDeduction,
    this.scaleIdentifier,
    this.archivedDate,
    this.manualGrossWeightReason,
    required this.isGrossFromPreviousWeight,
    required this.hasSeenZero,
    this.ewcCode,
    this.totalTareWeight,
    this.totalDirtDeduction,
    required this.internalComments,
    required this.costs,
    required this.created,
    required this.modified,
    required this.grossWeightDateTime,
    this.$__typename = 'TicketLine',
  });

  factory Fragment$TicketLineFields.fromJson(Map<String, dynamic> json) {
    final l$lineNumber = json['lineNumber'];
    final l$productId = json['productId'];
    final l$locationId = json['locationId'];
    final l$weightSerial = json['weightSerial'];
    final l$deductions = json['deductions'];
    final l$mediaAssets = json['mediaAssets'];
    final l$inspectionDetails = json['inspectionDetails'];
    final l$financialCostImpacts = json['financialCostImpacts'];
    final l$grossWeight = json['grossWeight'];
    final l$netWeight = json['netWeight'];
    final l$product = json['product'];
    final l$location = json['location'];
    final l$rate = json['rate'];
    final l$totalCostImpact = json['totalCostImpact'];
    final l$contractId = json['contractId'];
    final l$extendedProperties = json['extendedProperties'];
    final l$elvQuoteIds = json['elvQuoteIds'];
    final l$isActive = json['isActive'];
    final l$price = json['price'];
    final l$provPrice = json['provPrice'];
    final l$confPrice = json['confPrice'];
    final l$priceOrigin = json['priceOrigin'];
    final l$binNo = json['binNo'];
    final l$sealNo = json['sealNo'];
    final l$consignmentNoteNo = json['consignmentNoteNo'];
    final l$totalCostDeduction = json['totalCostDeduction'];
    final l$scaleIdentifier = json['scaleIdentifier'];
    final l$archivedDate = json['archivedDate'];
    final l$manualGrossWeightReason = json['manualGrossWeightReason'];
    final l$isGrossFromPreviousWeight = json['isGrossFromPreviousWeight'];
    final l$hasSeenZero = json['hasSeenZero'];
    final l$ewcCode = json['ewcCode'];
    final l$totalTareWeight = json['totalTareWeight'];
    final l$totalDirtDeduction = json['totalDirtDeduction'];
    final l$internalComments = json['internalComments'];
    final l$costs = json['costs'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$grossWeightDateTime = json['grossWeightDateTime'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketLineFields(
      lineNumber: (l$lineNumber as int),
      productId: (l$productId as String),
      locationId: (l$locationId as String),
      weightSerial: (l$weightSerial as String?),
      deductions: (l$deductions as List<dynamic>)
          .map(
            (e) =>
                Fragment$DeductionFields.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Fragment$MediaAssetFields.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      inspectionDetails: l$inspectionDetails == null
          ? null
          : Fragment$TicketLineFields$inspectionDetails.fromJson(
              (l$inspectionDetails as Map<String, dynamic>),
            ),
      financialCostImpacts: (l$financialCostImpacts as List<dynamic>)
          .map(
            (e) => Fragment$TicketLineFields$financialCostImpacts.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      grossWeight: Fragment$UomValueFields.fromJson(
        (l$grossWeight as Map<String, dynamic>),
      ),
      netWeight: Fragment$UomValueFields.fromJson(
        (l$netWeight as Map<String, dynamic>),
      ),
      product: l$product == null
          ? null
          : Fragment$TicketLineFields$product.fromJson(
              (l$product as Map<String, dynamic>),
            ),
      location: l$location == null
          ? null
          : Fragment$TicketLineFields$location.fromJson(
              (l$location as Map<String, dynamic>),
            ),
      rate: Fragment$UomValueFields.fromJson((l$rate as Map<String, dynamic>)),
      totalCostImpact: (l$totalCostImpact as num).toDouble(),
      contractId: (l$contractId as String?),
      extendedProperties: (l$extendedProperties as Map<String, dynamic>?),
      elvQuoteIds: (l$elvQuoteIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      isActive: (l$isActive as bool),
      price: (l$price as num).toDouble(),
      provPrice: (l$provPrice as num).toDouble(),
      confPrice: (l$confPrice as num).toDouble(),
      priceOrigin: fromJson$Enum$PriceOriginType((l$priceOrigin as String)),
      binNo: (l$binNo as String?),
      sealNo: (l$sealNo as String?),
      consignmentNoteNo: (l$consignmentNoteNo as String?),
      totalCostDeduction: (l$totalCostDeduction as num).toDouble(),
      scaleIdentifier: (l$scaleIdentifier as String?),
      archivedDate: l$archivedDate == null
          ? null
          : DateTime.parse((l$archivedDate as String)),
      manualGrossWeightReason: (l$manualGrossWeightReason as String?),
      isGrossFromPreviousWeight: (l$isGrossFromPreviousWeight as bool),
      hasSeenZero: (l$hasSeenZero as bool),
      ewcCode: (l$ewcCode as String?),
      totalTareWeight: l$totalTareWeight == null
          ? null
          : Fragment$UomValueFields.fromJson(
              (l$totalTareWeight as Map<String, dynamic>),
            ),
      totalDirtDeduction: l$totalDirtDeduction == null
          ? null
          : Fragment$UomValueFields.fromJson(
              (l$totalDirtDeduction as Map<String, dynamic>),
            ),
      internalComments: (l$internalComments as List<dynamic>)
          .map(
            (e) => Fragment$TicketLineFields$internalComments.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      costs: (l$costs as List<dynamic>)
          .map(
            (e) => Fragment$TicketLineFields$costs.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      created: Fragment$TicketLineFields$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      modified: Fragment$TicketLineFields$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      grossWeightDateTime: DateTime.parse((l$grossWeightDateTime as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int lineNumber;

  final String productId;

  final String locationId;

  final String? weightSerial;

  final List<Fragment$DeductionFields> deductions;

  final List<Fragment$MediaAssetFields> mediaAssets;

  final Fragment$TicketLineFields$inspectionDetails? inspectionDetails;

  final List<Fragment$TicketLineFields$financialCostImpacts>
  financialCostImpacts;

  final Fragment$UomValueFields grossWeight;

  final Fragment$UomValueFields netWeight;

  final Fragment$TicketLineFields$product? product;

  final Fragment$TicketLineFields$location? location;

  final Fragment$UomValueFields rate;

  final double totalCostImpact;

  final String? contractId;

  final Map<String, dynamic>? extendedProperties;

  final List<String> elvQuoteIds;

  final bool isActive;

  final double price;

  final double provPrice;

  final double confPrice;

  final Enum$PriceOriginType priceOrigin;

  final String? binNo;

  final String? sealNo;

  final String? consignmentNoteNo;

  final double totalCostDeduction;

  final String? scaleIdentifier;

  final DateTime? archivedDate;

  final String? manualGrossWeightReason;

  final bool isGrossFromPreviousWeight;

  final bool hasSeenZero;

  final String? ewcCode;

  final Fragment$UomValueFields? totalTareWeight;

  final Fragment$UomValueFields? totalDirtDeduction;

  final List<Fragment$TicketLineFields$internalComments> internalComments;

  final List<Fragment$TicketLineFields$costs> costs;

  final Fragment$TicketLineFields$created created;

  final Fragment$TicketLineFields$modified modified;

  final DateTime grossWeightDateTime;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lineNumber = lineNumber;
    _resultData['lineNumber'] = l$lineNumber;
    final l$productId = productId;
    _resultData['productId'] = l$productId;
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$weightSerial = weightSerial;
    _resultData['weightSerial'] = l$weightSerial;
    final l$deductions = deductions;
    _resultData['deductions'] = l$deductions.map((e) => e.toJson()).toList();
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$inspectionDetails = inspectionDetails;
    _resultData['inspectionDetails'] = l$inspectionDetails?.toJson();
    final l$financialCostImpacts = financialCostImpacts;
    _resultData['financialCostImpacts'] = l$financialCostImpacts
        .map((e) => e.toJson())
        .toList();
    final l$grossWeight = grossWeight;
    _resultData['grossWeight'] = l$grossWeight.toJson();
    final l$netWeight = netWeight;
    _resultData['netWeight'] = l$netWeight.toJson();
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$location = location;
    _resultData['location'] = l$location?.toJson();
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$totalCostImpact = totalCostImpact;
    _resultData['totalCostImpact'] = l$totalCostImpact;
    final l$contractId = contractId;
    _resultData['contractId'] = l$contractId;
    final l$extendedProperties = extendedProperties;
    _resultData['extendedProperties'] = l$extendedProperties;
    final l$elvQuoteIds = elvQuoteIds;
    _resultData['elvQuoteIds'] = l$elvQuoteIds.map((e) => e).toList();
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$provPrice = provPrice;
    _resultData['provPrice'] = l$provPrice;
    final l$confPrice = confPrice;
    _resultData['confPrice'] = l$confPrice;
    final l$priceOrigin = priceOrigin;
    _resultData['priceOrigin'] = toJson$Enum$PriceOriginType(l$priceOrigin);
    final l$binNo = binNo;
    _resultData['binNo'] = l$binNo;
    final l$sealNo = sealNo;
    _resultData['sealNo'] = l$sealNo;
    final l$consignmentNoteNo = consignmentNoteNo;
    _resultData['consignmentNoteNo'] = l$consignmentNoteNo;
    final l$totalCostDeduction = totalCostDeduction;
    _resultData['totalCostDeduction'] = l$totalCostDeduction;
    final l$scaleIdentifier = scaleIdentifier;
    _resultData['scaleIdentifier'] = l$scaleIdentifier;
    final l$archivedDate = archivedDate;
    _resultData['archivedDate'] = l$archivedDate?.toIso8601String();
    final l$manualGrossWeightReason = manualGrossWeightReason;
    _resultData['manualGrossWeightReason'] = l$manualGrossWeightReason;
    final l$isGrossFromPreviousWeight = isGrossFromPreviousWeight;
    _resultData['isGrossFromPreviousWeight'] = l$isGrossFromPreviousWeight;
    final l$hasSeenZero = hasSeenZero;
    _resultData['hasSeenZero'] = l$hasSeenZero;
    final l$ewcCode = ewcCode;
    _resultData['ewcCode'] = l$ewcCode;
    final l$totalTareWeight = totalTareWeight;
    _resultData['totalTareWeight'] = l$totalTareWeight?.toJson();
    final l$totalDirtDeduction = totalDirtDeduction;
    _resultData['totalDirtDeduction'] = l$totalDirtDeduction?.toJson();
    final l$internalComments = internalComments;
    _resultData['internalComments'] = l$internalComments
        .map((e) => e.toJson())
        .toList();
    final l$costs = costs;
    _resultData['costs'] = l$costs.map((e) => e.toJson()).toList();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$grossWeightDateTime = grossWeightDateTime;
    _resultData['grossWeightDateTime'] = l$grossWeightDateTime
        .toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lineNumber = lineNumber;
    final l$productId = productId;
    final l$locationId = locationId;
    final l$weightSerial = weightSerial;
    final l$deductions = deductions;
    final l$mediaAssets = mediaAssets;
    final l$inspectionDetails = inspectionDetails;
    final l$financialCostImpacts = financialCostImpacts;
    final l$grossWeight = grossWeight;
    final l$netWeight = netWeight;
    final l$product = product;
    final l$location = location;
    final l$rate = rate;
    final l$totalCostImpact = totalCostImpact;
    final l$contractId = contractId;
    final l$extendedProperties = extendedProperties;
    final l$elvQuoteIds = elvQuoteIds;
    final l$isActive = isActive;
    final l$price = price;
    final l$provPrice = provPrice;
    final l$confPrice = confPrice;
    final l$priceOrigin = priceOrigin;
    final l$binNo = binNo;
    final l$sealNo = sealNo;
    final l$consignmentNoteNo = consignmentNoteNo;
    final l$totalCostDeduction = totalCostDeduction;
    final l$scaleIdentifier = scaleIdentifier;
    final l$archivedDate = archivedDate;
    final l$manualGrossWeightReason = manualGrossWeightReason;
    final l$isGrossFromPreviousWeight = isGrossFromPreviousWeight;
    final l$hasSeenZero = hasSeenZero;
    final l$ewcCode = ewcCode;
    final l$totalTareWeight = totalTareWeight;
    final l$totalDirtDeduction = totalDirtDeduction;
    final l$internalComments = internalComments;
    final l$costs = costs;
    final l$created = created;
    final l$modified = modified;
    final l$grossWeightDateTime = grossWeightDateTime;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lineNumber,
      l$productId,
      l$locationId,
      l$weightSerial,
      Object.hashAll(l$deductions.map((v) => v)),
      Object.hashAll(l$mediaAssets.map((v) => v)),
      l$inspectionDetails,
      Object.hashAll(l$financialCostImpacts.map((v) => v)),
      l$grossWeight,
      l$netWeight,
      l$product,
      l$location,
      l$rate,
      l$totalCostImpact,
      l$contractId,
      l$extendedProperties,
      Object.hashAll(l$elvQuoteIds.map((v) => v)),
      l$isActive,
      l$price,
      l$provPrice,
      l$confPrice,
      l$priceOrigin,
      l$binNo,
      l$sealNo,
      l$consignmentNoteNo,
      l$totalCostDeduction,
      l$scaleIdentifier,
      l$archivedDate,
      l$manualGrossWeightReason,
      l$isGrossFromPreviousWeight,
      l$hasSeenZero,
      l$ewcCode,
      l$totalTareWeight,
      l$totalDirtDeduction,
      Object.hashAll(l$internalComments.map((v) => v)),
      Object.hashAll(l$costs.map((v) => v)),
      l$created,
      l$modified,
      l$grossWeightDateTime,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketLineFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lineNumber = lineNumber;
    final lOther$lineNumber = other.lineNumber;
    if (l$lineNumber != lOther$lineNumber) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$weightSerial = weightSerial;
    final lOther$weightSerial = other.weightSerial;
    if (l$weightSerial != lOther$weightSerial) {
      return false;
    }
    final l$deductions = deductions;
    final lOther$deductions = other.deductions;
    if (l$deductions.length != lOther$deductions.length) {
      return false;
    }
    for (int i = 0; i < l$deductions.length; i++) {
      final l$deductions$entry = l$deductions[i];
      final lOther$deductions$entry = lOther$deductions[i];
      if (l$deductions$entry != lOther$deductions$entry) {
        return false;
      }
    }
    final l$mediaAssets = mediaAssets;
    final lOther$mediaAssets = other.mediaAssets;
    if (l$mediaAssets.length != lOther$mediaAssets.length) {
      return false;
    }
    for (int i = 0; i < l$mediaAssets.length; i++) {
      final l$mediaAssets$entry = l$mediaAssets[i];
      final lOther$mediaAssets$entry = lOther$mediaAssets[i];
      if (l$mediaAssets$entry != lOther$mediaAssets$entry) {
        return false;
      }
    }
    final l$inspectionDetails = inspectionDetails;
    final lOther$inspectionDetails = other.inspectionDetails;
    if (l$inspectionDetails != lOther$inspectionDetails) {
      return false;
    }
    final l$financialCostImpacts = financialCostImpacts;
    final lOther$financialCostImpacts = other.financialCostImpacts;
    if (l$financialCostImpacts.length != lOther$financialCostImpacts.length) {
      return false;
    }
    for (int i = 0; i < l$financialCostImpacts.length; i++) {
      final l$financialCostImpacts$entry = l$financialCostImpacts[i];
      final lOther$financialCostImpacts$entry = lOther$financialCostImpacts[i];
      if (l$financialCostImpacts$entry != lOther$financialCostImpacts$entry) {
        return false;
      }
    }
    final l$grossWeight = grossWeight;
    final lOther$grossWeight = other.grossWeight;
    if (l$grossWeight != lOther$grossWeight) {
      return false;
    }
    final l$netWeight = netWeight;
    final lOther$netWeight = other.netWeight;
    if (l$netWeight != lOther$netWeight) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$totalCostImpact = totalCostImpact;
    final lOther$totalCostImpact = other.totalCostImpact;
    if (l$totalCostImpact != lOther$totalCostImpact) {
      return false;
    }
    final l$contractId = contractId;
    final lOther$contractId = other.contractId;
    if (l$contractId != lOther$contractId) {
      return false;
    }
    final l$extendedProperties = extendedProperties;
    final lOther$extendedProperties = other.extendedProperties;
    if (l$extendedProperties != lOther$extendedProperties) {
      return false;
    }
    final l$elvQuoteIds = elvQuoteIds;
    final lOther$elvQuoteIds = other.elvQuoteIds;
    if (l$elvQuoteIds.length != lOther$elvQuoteIds.length) {
      return false;
    }
    for (int i = 0; i < l$elvQuoteIds.length; i++) {
      final l$elvQuoteIds$entry = l$elvQuoteIds[i];
      final lOther$elvQuoteIds$entry = lOther$elvQuoteIds[i];
      if (l$elvQuoteIds$entry != lOther$elvQuoteIds$entry) {
        return false;
      }
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$provPrice = provPrice;
    final lOther$provPrice = other.provPrice;
    if (l$provPrice != lOther$provPrice) {
      return false;
    }
    final l$confPrice = confPrice;
    final lOther$confPrice = other.confPrice;
    if (l$confPrice != lOther$confPrice) {
      return false;
    }
    final l$priceOrigin = priceOrigin;
    final lOther$priceOrigin = other.priceOrigin;
    if (l$priceOrigin != lOther$priceOrigin) {
      return false;
    }
    final l$binNo = binNo;
    final lOther$binNo = other.binNo;
    if (l$binNo != lOther$binNo) {
      return false;
    }
    final l$sealNo = sealNo;
    final lOther$sealNo = other.sealNo;
    if (l$sealNo != lOther$sealNo) {
      return false;
    }
    final l$consignmentNoteNo = consignmentNoteNo;
    final lOther$consignmentNoteNo = other.consignmentNoteNo;
    if (l$consignmentNoteNo != lOther$consignmentNoteNo) {
      return false;
    }
    final l$totalCostDeduction = totalCostDeduction;
    final lOther$totalCostDeduction = other.totalCostDeduction;
    if (l$totalCostDeduction != lOther$totalCostDeduction) {
      return false;
    }
    final l$scaleIdentifier = scaleIdentifier;
    final lOther$scaleIdentifier = other.scaleIdentifier;
    if (l$scaleIdentifier != lOther$scaleIdentifier) {
      return false;
    }
    final l$archivedDate = archivedDate;
    final lOther$archivedDate = other.archivedDate;
    if (l$archivedDate != lOther$archivedDate) {
      return false;
    }
    final l$manualGrossWeightReason = manualGrossWeightReason;
    final lOther$manualGrossWeightReason = other.manualGrossWeightReason;
    if (l$manualGrossWeightReason != lOther$manualGrossWeightReason) {
      return false;
    }
    final l$isGrossFromPreviousWeight = isGrossFromPreviousWeight;
    final lOther$isGrossFromPreviousWeight = other.isGrossFromPreviousWeight;
    if (l$isGrossFromPreviousWeight != lOther$isGrossFromPreviousWeight) {
      return false;
    }
    final l$hasSeenZero = hasSeenZero;
    final lOther$hasSeenZero = other.hasSeenZero;
    if (l$hasSeenZero != lOther$hasSeenZero) {
      return false;
    }
    final l$ewcCode = ewcCode;
    final lOther$ewcCode = other.ewcCode;
    if (l$ewcCode != lOther$ewcCode) {
      return false;
    }
    final l$totalTareWeight = totalTareWeight;
    final lOther$totalTareWeight = other.totalTareWeight;
    if (l$totalTareWeight != lOther$totalTareWeight) {
      return false;
    }
    final l$totalDirtDeduction = totalDirtDeduction;
    final lOther$totalDirtDeduction = other.totalDirtDeduction;
    if (l$totalDirtDeduction != lOther$totalDirtDeduction) {
      return false;
    }
    final l$internalComments = internalComments;
    final lOther$internalComments = other.internalComments;
    if (l$internalComments.length != lOther$internalComments.length) {
      return false;
    }
    for (int i = 0; i < l$internalComments.length; i++) {
      final l$internalComments$entry = l$internalComments[i];
      final lOther$internalComments$entry = lOther$internalComments[i];
      if (l$internalComments$entry != lOther$internalComments$entry) {
        return false;
      }
    }
    final l$costs = costs;
    final lOther$costs = other.costs;
    if (l$costs.length != lOther$costs.length) {
      return false;
    }
    for (int i = 0; i < l$costs.length; i++) {
      final l$costs$entry = l$costs[i];
      final lOther$costs$entry = lOther$costs[i];
      if (l$costs$entry != lOther$costs$entry) {
        return false;
      }
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$grossWeightDateTime = grossWeightDateTime;
    final lOther$grossWeightDateTime = other.grossWeightDateTime;
    if (l$grossWeightDateTime != lOther$grossWeightDateTime) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketLineFields
    on Fragment$TicketLineFields {
  CopyWith$Fragment$TicketLineFields<Fragment$TicketLineFields> get copyWith =>
      CopyWith$Fragment$TicketLineFields(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketLineFields<TRes> {
  factory CopyWith$Fragment$TicketLineFields(
    Fragment$TicketLineFields instance,
    TRes Function(Fragment$TicketLineFields) then,
  ) = _CopyWithImpl$Fragment$TicketLineFields;

  factory CopyWith$Fragment$TicketLineFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketLineFields;

  TRes call({
    int? lineNumber,
    String? productId,
    String? locationId,
    String? weightSerial,
    List<Fragment$DeductionFields>? deductions,
    List<Fragment$MediaAssetFields>? mediaAssets,
    Fragment$TicketLineFields$inspectionDetails? inspectionDetails,
    List<Fragment$TicketLineFields$financialCostImpacts>? financialCostImpacts,
    Fragment$UomValueFields? grossWeight,
    Fragment$UomValueFields? netWeight,
    Fragment$TicketLineFields$product? product,
    Fragment$TicketLineFields$location? location,
    Fragment$UomValueFields? rate,
    double? totalCostImpact,
    String? contractId,
    Map<String, dynamic>? extendedProperties,
    List<String>? elvQuoteIds,
    bool? isActive,
    double? price,
    double? provPrice,
    double? confPrice,
    Enum$PriceOriginType? priceOrigin,
    String? binNo,
    String? sealNo,
    String? consignmentNoteNo,
    double? totalCostDeduction,
    String? scaleIdentifier,
    DateTime? archivedDate,
    String? manualGrossWeightReason,
    bool? isGrossFromPreviousWeight,
    bool? hasSeenZero,
    String? ewcCode,
    Fragment$UomValueFields? totalTareWeight,
    Fragment$UomValueFields? totalDirtDeduction,
    List<Fragment$TicketLineFields$internalComments>? internalComments,
    List<Fragment$TicketLineFields$costs>? costs,
    Fragment$TicketLineFields$created? created,
    Fragment$TicketLineFields$modified? modified,
    DateTime? grossWeightDateTime,
    String? $__typename,
  });
  TRes deductions(
    Iterable<Fragment$DeductionFields> Function(
      Iterable<CopyWith$Fragment$DeductionFields<Fragment$DeductionFields>>,
    )
    _fn,
  );
  TRes mediaAssets(
    Iterable<Fragment$MediaAssetFields> Function(
      Iterable<CopyWith$Fragment$MediaAssetFields<Fragment$MediaAssetFields>>,
    )
    _fn,
  );
  CopyWith$Fragment$TicketLineFields$inspectionDetails<TRes>
  get inspectionDetails;
  TRes financialCostImpacts(
    Iterable<Fragment$TicketLineFields$financialCostImpacts> Function(
      Iterable<
        CopyWith$Fragment$TicketLineFields$financialCostImpacts<
          Fragment$TicketLineFields$financialCostImpacts
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$UomValueFields<TRes> get grossWeight;
  CopyWith$Fragment$UomValueFields<TRes> get netWeight;
  CopyWith$Fragment$TicketLineFields$product<TRes> get product;
  CopyWith$Fragment$TicketLineFields$location<TRes> get location;
  CopyWith$Fragment$UomValueFields<TRes> get rate;
  CopyWith$Fragment$UomValueFields<TRes> get totalTareWeight;
  CopyWith$Fragment$UomValueFields<TRes> get totalDirtDeduction;
  TRes internalComments(
    Iterable<Fragment$TicketLineFields$internalComments> Function(
      Iterable<
        CopyWith$Fragment$TicketLineFields$internalComments<
          Fragment$TicketLineFields$internalComments
        >
      >,
    )
    _fn,
  );
  TRes costs(
    Iterable<Fragment$TicketLineFields$costs> Function(
      Iterable<
        CopyWith$Fragment$TicketLineFields$costs<
          Fragment$TicketLineFields$costs
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$TicketLineFields$created<TRes> get created;
  CopyWith$Fragment$TicketLineFields$modified<TRes> get modified;
}

class _CopyWithImpl$Fragment$TicketLineFields<TRes>
    implements CopyWith$Fragment$TicketLineFields<TRes> {
  _CopyWithImpl$Fragment$TicketLineFields(this._instance, this._then);

  final Fragment$TicketLineFields _instance;

  final TRes Function(Fragment$TicketLineFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lineNumber = _undefined,
    Object? productId = _undefined,
    Object? locationId = _undefined,
    Object? weightSerial = _undefined,
    Object? deductions = _undefined,
    Object? mediaAssets = _undefined,
    Object? inspectionDetails = _undefined,
    Object? financialCostImpacts = _undefined,
    Object? grossWeight = _undefined,
    Object? netWeight = _undefined,
    Object? product = _undefined,
    Object? location = _undefined,
    Object? rate = _undefined,
    Object? totalCostImpact = _undefined,
    Object? contractId = _undefined,
    Object? extendedProperties = _undefined,
    Object? elvQuoteIds = _undefined,
    Object? isActive = _undefined,
    Object? price = _undefined,
    Object? provPrice = _undefined,
    Object? confPrice = _undefined,
    Object? priceOrigin = _undefined,
    Object? binNo = _undefined,
    Object? sealNo = _undefined,
    Object? consignmentNoteNo = _undefined,
    Object? totalCostDeduction = _undefined,
    Object? scaleIdentifier = _undefined,
    Object? archivedDate = _undefined,
    Object? manualGrossWeightReason = _undefined,
    Object? isGrossFromPreviousWeight = _undefined,
    Object? hasSeenZero = _undefined,
    Object? ewcCode = _undefined,
    Object? totalTareWeight = _undefined,
    Object? totalDirtDeduction = _undefined,
    Object? internalComments = _undefined,
    Object? costs = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? grossWeightDateTime = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketLineFields(
      lineNumber: lineNumber == _undefined || lineNumber == null
          ? _instance.lineNumber
          : (lineNumber as int),
      productId: productId == _undefined || productId == null
          ? _instance.productId
          : (productId as String),
      locationId: locationId == _undefined || locationId == null
          ? _instance.locationId
          : (locationId as String),
      weightSerial: weightSerial == _undefined
          ? _instance.weightSerial
          : (weightSerial as String?),
      deductions: deductions == _undefined || deductions == null
          ? _instance.deductions
          : (deductions as List<Fragment$DeductionFields>),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets as List<Fragment$MediaAssetFields>),
      inspectionDetails: inspectionDetails == _undefined
          ? _instance.inspectionDetails
          : (inspectionDetails as Fragment$TicketLineFields$inspectionDetails?),
      financialCostImpacts:
          financialCostImpacts == _undefined || financialCostImpacts == null
          ? _instance.financialCostImpacts
          : (financialCostImpacts
                as List<Fragment$TicketLineFields$financialCostImpacts>),
      grossWeight: grossWeight == _undefined || grossWeight == null
          ? _instance.grossWeight
          : (grossWeight as Fragment$UomValueFields),
      netWeight: netWeight == _undefined || netWeight == null
          ? _instance.netWeight
          : (netWeight as Fragment$UomValueFields),
      product: product == _undefined
          ? _instance.product
          : (product as Fragment$TicketLineFields$product?),
      location: location == _undefined
          ? _instance.location
          : (location as Fragment$TicketLineFields$location?),
      rate: rate == _undefined || rate == null
          ? _instance.rate
          : (rate as Fragment$UomValueFields),
      totalCostImpact: totalCostImpact == _undefined || totalCostImpact == null
          ? _instance.totalCostImpact
          : (totalCostImpact as double),
      contractId: contractId == _undefined
          ? _instance.contractId
          : (contractId as String?),
      extendedProperties: extendedProperties == _undefined
          ? _instance.extendedProperties
          : (extendedProperties as Map<String, dynamic>?),
      elvQuoteIds: elvQuoteIds == _undefined || elvQuoteIds == null
          ? _instance.elvQuoteIds
          : (elvQuoteIds as List<String>),
      isActive: isActive == _undefined || isActive == null
          ? _instance.isActive
          : (isActive as bool),
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      provPrice: provPrice == _undefined || provPrice == null
          ? _instance.provPrice
          : (provPrice as double),
      confPrice: confPrice == _undefined || confPrice == null
          ? _instance.confPrice
          : (confPrice as double),
      priceOrigin: priceOrigin == _undefined || priceOrigin == null
          ? _instance.priceOrigin
          : (priceOrigin as Enum$PriceOriginType),
      binNo: binNo == _undefined ? _instance.binNo : (binNo as String?),
      sealNo: sealNo == _undefined ? _instance.sealNo : (sealNo as String?),
      consignmentNoteNo: consignmentNoteNo == _undefined
          ? _instance.consignmentNoteNo
          : (consignmentNoteNo as String?),
      totalCostDeduction:
          totalCostDeduction == _undefined || totalCostDeduction == null
          ? _instance.totalCostDeduction
          : (totalCostDeduction as double),
      scaleIdentifier: scaleIdentifier == _undefined
          ? _instance.scaleIdentifier
          : (scaleIdentifier as String?),
      archivedDate: archivedDate == _undefined
          ? _instance.archivedDate
          : (archivedDate as DateTime?),
      manualGrossWeightReason: manualGrossWeightReason == _undefined
          ? _instance.manualGrossWeightReason
          : (manualGrossWeightReason as String?),
      isGrossFromPreviousWeight:
          isGrossFromPreviousWeight == _undefined ||
              isGrossFromPreviousWeight == null
          ? _instance.isGrossFromPreviousWeight
          : (isGrossFromPreviousWeight as bool),
      hasSeenZero: hasSeenZero == _undefined || hasSeenZero == null
          ? _instance.hasSeenZero
          : (hasSeenZero as bool),
      ewcCode: ewcCode == _undefined ? _instance.ewcCode : (ewcCode as String?),
      totalTareWeight: totalTareWeight == _undefined
          ? _instance.totalTareWeight
          : (totalTareWeight as Fragment$UomValueFields?),
      totalDirtDeduction: totalDirtDeduction == _undefined
          ? _instance.totalDirtDeduction
          : (totalDirtDeduction as Fragment$UomValueFields?),
      internalComments:
          internalComments == _undefined || internalComments == null
          ? _instance.internalComments
          : (internalComments
                as List<Fragment$TicketLineFields$internalComments>),
      costs: costs == _undefined || costs == null
          ? _instance.costs
          : (costs as List<Fragment$TicketLineFields$costs>),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$TicketLineFields$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Fragment$TicketLineFields$modified),
      grossWeightDateTime:
          grossWeightDateTime == _undefined || grossWeightDateTime == null
          ? _instance.grossWeightDateTime
          : (grossWeightDateTime as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes deductions(
    Iterable<Fragment$DeductionFields> Function(
      Iterable<CopyWith$Fragment$DeductionFields<Fragment$DeductionFields>>,
    )
    _fn,
  ) => call(
    deductions: _fn(
      _instance.deductions.map(
        (e) => CopyWith$Fragment$DeductionFields(e, (i) => i),
      ),
    ).toList(),
  );

  TRes mediaAssets(
    Iterable<Fragment$MediaAssetFields> Function(
      Iterable<CopyWith$Fragment$MediaAssetFields<Fragment$MediaAssetFields>>,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) => CopyWith$Fragment$MediaAssetFields(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Fragment$TicketLineFields$inspectionDetails<TRes>
  get inspectionDetails {
    final local$inspectionDetails = _instance.inspectionDetails;
    return local$inspectionDetails == null
        ? CopyWith$Fragment$TicketLineFields$inspectionDetails.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$TicketLineFields$inspectionDetails(
            local$inspectionDetails,
            (e) => call(inspectionDetails: e),
          );
  }

  TRes financialCostImpacts(
    Iterable<Fragment$TicketLineFields$financialCostImpacts> Function(
      Iterable<
        CopyWith$Fragment$TicketLineFields$financialCostImpacts<
          Fragment$TicketLineFields$financialCostImpacts
        >
      >,
    )
    _fn,
  ) => call(
    financialCostImpacts: _fn(
      _instance.financialCostImpacts.map(
        (e) => CopyWith$Fragment$TicketLineFields$financialCostImpacts(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  CopyWith$Fragment$UomValueFields<TRes> get grossWeight {
    final local$grossWeight = _instance.grossWeight;
    return CopyWith$Fragment$UomValueFields(
      local$grossWeight,
      (e) => call(grossWeight: e),
    );
  }

  CopyWith$Fragment$UomValueFields<TRes> get netWeight {
    final local$netWeight = _instance.netWeight;
    return CopyWith$Fragment$UomValueFields(
      local$netWeight,
      (e) => call(netWeight: e),
    );
  }

  CopyWith$Fragment$TicketLineFields$product<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Fragment$TicketLineFields$product.stub(_then(_instance))
        : CopyWith$Fragment$TicketLineFields$product(
            local$product,
            (e) => call(product: e),
          );
  }

  CopyWith$Fragment$TicketLineFields$location<TRes> get location {
    final local$location = _instance.location;
    return local$location == null
        ? CopyWith$Fragment$TicketLineFields$location.stub(_then(_instance))
        : CopyWith$Fragment$TicketLineFields$location(
            local$location,
            (e) => call(location: e),
          );
  }

  CopyWith$Fragment$UomValueFields<TRes> get rate {
    final local$rate = _instance.rate;
    return CopyWith$Fragment$UomValueFields(local$rate, (e) => call(rate: e));
  }

  CopyWith$Fragment$UomValueFields<TRes> get totalTareWeight {
    final local$totalTareWeight = _instance.totalTareWeight;
    return local$totalTareWeight == null
        ? CopyWith$Fragment$UomValueFields.stub(_then(_instance))
        : CopyWith$Fragment$UomValueFields(
            local$totalTareWeight,
            (e) => call(totalTareWeight: e),
          );
  }

  CopyWith$Fragment$UomValueFields<TRes> get totalDirtDeduction {
    final local$totalDirtDeduction = _instance.totalDirtDeduction;
    return local$totalDirtDeduction == null
        ? CopyWith$Fragment$UomValueFields.stub(_then(_instance))
        : CopyWith$Fragment$UomValueFields(
            local$totalDirtDeduction,
            (e) => call(totalDirtDeduction: e),
          );
  }

  TRes internalComments(
    Iterable<Fragment$TicketLineFields$internalComments> Function(
      Iterable<
        CopyWith$Fragment$TicketLineFields$internalComments<
          Fragment$TicketLineFields$internalComments
        >
      >,
    )
    _fn,
  ) => call(
    internalComments: _fn(
      _instance.internalComments.map(
        (e) => CopyWith$Fragment$TicketLineFields$internalComments(e, (i) => i),
      ),
    ).toList(),
  );

  TRes costs(
    Iterable<Fragment$TicketLineFields$costs> Function(
      Iterable<
        CopyWith$Fragment$TicketLineFields$costs<
          Fragment$TicketLineFields$costs
        >
      >,
    )
    _fn,
  ) => call(
    costs: _fn(
      _instance.costs.map(
        (e) => CopyWith$Fragment$TicketLineFields$costs(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Fragment$TicketLineFields$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$TicketLineFields$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Fragment$TicketLineFields$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Fragment$TicketLineFields$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$TicketLineFields<TRes>
    implements CopyWith$Fragment$TicketLineFields<TRes> {
  _CopyWithStubImpl$Fragment$TicketLineFields(this._res);

  TRes _res;

  call({
    int? lineNumber,
    String? productId,
    String? locationId,
    String? weightSerial,
    List<Fragment$DeductionFields>? deductions,
    List<Fragment$MediaAssetFields>? mediaAssets,
    Fragment$TicketLineFields$inspectionDetails? inspectionDetails,
    List<Fragment$TicketLineFields$financialCostImpacts>? financialCostImpacts,
    Fragment$UomValueFields? grossWeight,
    Fragment$UomValueFields? netWeight,
    Fragment$TicketLineFields$product? product,
    Fragment$TicketLineFields$location? location,
    Fragment$UomValueFields? rate,
    double? totalCostImpact,
    String? contractId,
    Map<String, dynamic>? extendedProperties,
    List<String>? elvQuoteIds,
    bool? isActive,
    double? price,
    double? provPrice,
    double? confPrice,
    Enum$PriceOriginType? priceOrigin,
    String? binNo,
    String? sealNo,
    String? consignmentNoteNo,
    double? totalCostDeduction,
    String? scaleIdentifier,
    DateTime? archivedDate,
    String? manualGrossWeightReason,
    bool? isGrossFromPreviousWeight,
    bool? hasSeenZero,
    String? ewcCode,
    Fragment$UomValueFields? totalTareWeight,
    Fragment$UomValueFields? totalDirtDeduction,
    List<Fragment$TicketLineFields$internalComments>? internalComments,
    List<Fragment$TicketLineFields$costs>? costs,
    Fragment$TicketLineFields$created? created,
    Fragment$TicketLineFields$modified? modified,
    DateTime? grossWeightDateTime,
    String? $__typename,
  }) => _res;

  deductions(_fn) => _res;

  mediaAssets(_fn) => _res;

  CopyWith$Fragment$TicketLineFields$inspectionDetails<TRes>
  get inspectionDetails =>
      CopyWith$Fragment$TicketLineFields$inspectionDetails.stub(_res);

  financialCostImpacts(_fn) => _res;

  CopyWith$Fragment$UomValueFields<TRes> get grossWeight =>
      CopyWith$Fragment$UomValueFields.stub(_res);

  CopyWith$Fragment$UomValueFields<TRes> get netWeight =>
      CopyWith$Fragment$UomValueFields.stub(_res);

  CopyWith$Fragment$TicketLineFields$product<TRes> get product =>
      CopyWith$Fragment$TicketLineFields$product.stub(_res);

  CopyWith$Fragment$TicketLineFields$location<TRes> get location =>
      CopyWith$Fragment$TicketLineFields$location.stub(_res);

  CopyWith$Fragment$UomValueFields<TRes> get rate =>
      CopyWith$Fragment$UomValueFields.stub(_res);

  CopyWith$Fragment$UomValueFields<TRes> get totalTareWeight =>
      CopyWith$Fragment$UomValueFields.stub(_res);

  CopyWith$Fragment$UomValueFields<TRes> get totalDirtDeduction =>
      CopyWith$Fragment$UomValueFields.stub(_res);

  internalComments(_fn) => _res;

  costs(_fn) => _res;

  CopyWith$Fragment$TicketLineFields$created<TRes> get created =>
      CopyWith$Fragment$TicketLineFields$created.stub(_res);

  CopyWith$Fragment$TicketLineFields$modified<TRes> get modified =>
      CopyWith$Fragment$TicketLineFields$modified.stub(_res);
}

const fragmentDefinitionTicketLineFields = FragmentDefinitionNode(
  name: NameNode(value: 'TicketLineFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'TicketLine'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'lineNumber'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'productId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'locationId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'weightSerial'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'deductions'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'DeductionFields'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'mediaAssets'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'MediaAssetFields'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'inspectionDetails'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'inspectionMedia'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'sasUrl'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'sasThumbnailUrl'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'financialCostImpacts'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'typeId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'value'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'grossWeight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'UomValueFields'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'netWeight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'UomValueFields'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'product'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'code'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'active'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'description'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'location'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'code'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'yardId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'description'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'mediaAssets'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'sasUrl'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'rate'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'UomValueFields'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'totalCostImpact'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'contractId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'extendedProperties'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'elvQuoteIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isActive'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'provPrice'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'confPrice'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'priceOrigin'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'binNo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'sealNo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'consignmentNoteNo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'totalCostDeduction'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'scaleIdentifier'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'archivedDate'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'manualGrossWeightReason'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isGrossFromPreviousWeight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'hasSeenZero'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ewcCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'totalTareWeight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'UomValueFields'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'totalDirtDeduction'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'UomValueFields'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'internalComments'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'content'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'created'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'userInfoId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'userName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'at'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'costs'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'typeId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'value'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'rate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UomValueFields'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: 'costParty'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'partyAccountNo'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'partyName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ],
              ),
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'created'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'userInfoId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'userName'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'modified'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'userInfoId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'userName'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'grossWeightDateTime'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentTicketLineFields = DocumentNode(
  definitions: [
    fragmentDefinitionTicketLineFields,
    fragmentDefinitionDeductionFields,
    fragmentDefinitionUomValueFields,
    fragmentDefinitionMediaAssetFields,
  ],
);

class Fragment$TicketLineFields$inspectionDetails {
  Fragment$TicketLineFields$inspectionDetails({
    required this.inspectionMedia,
    this.$__typename = 'InspectionDetails',
  });

  factory Fragment$TicketLineFields$inspectionDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$inspectionMedia = json['inspectionMedia'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketLineFields$inspectionDetails(
      inspectionMedia: (l$inspectionMedia as List<dynamic>)
          .map(
            (e) =>
                Fragment$TicketLineFields$inspectionDetails$inspectionMedia.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$TicketLineFields$inspectionDetails$inspectionMedia>
  inspectionMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inspectionMedia = inspectionMedia;
    _resultData['inspectionMedia'] = l$inspectionMedia
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inspectionMedia = inspectionMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$inspectionMedia.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketLineFields$inspectionDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inspectionMedia = inspectionMedia;
    final lOther$inspectionMedia = other.inspectionMedia;
    if (l$inspectionMedia.length != lOther$inspectionMedia.length) {
      return false;
    }
    for (int i = 0; i < l$inspectionMedia.length; i++) {
      final l$inspectionMedia$entry = l$inspectionMedia[i];
      final lOther$inspectionMedia$entry = lOther$inspectionMedia[i];
      if (l$inspectionMedia$entry != lOther$inspectionMedia$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketLineFields$inspectionDetails
    on Fragment$TicketLineFields$inspectionDetails {
  CopyWith$Fragment$TicketLineFields$inspectionDetails<
    Fragment$TicketLineFields$inspectionDetails
  >
  get copyWith =>
      CopyWith$Fragment$TicketLineFields$inspectionDetails(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketLineFields$inspectionDetails<TRes> {
  factory CopyWith$Fragment$TicketLineFields$inspectionDetails(
    Fragment$TicketLineFields$inspectionDetails instance,
    TRes Function(Fragment$TicketLineFields$inspectionDetails) then,
  ) = _CopyWithImpl$Fragment$TicketLineFields$inspectionDetails;

  factory CopyWith$Fragment$TicketLineFields$inspectionDetails.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketLineFields$inspectionDetails;

  TRes call({
    List<Fragment$TicketLineFields$inspectionDetails$inspectionMedia>?
    inspectionMedia,
    String? $__typename,
  });
  TRes inspectionMedia(
    Iterable<Fragment$TicketLineFields$inspectionDetails$inspectionMedia>
    Function(
      Iterable<
        CopyWith$Fragment$TicketLineFields$inspectionDetails$inspectionMedia<
          Fragment$TicketLineFields$inspectionDetails$inspectionMedia
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$TicketLineFields$inspectionDetails<TRes>
    implements CopyWith$Fragment$TicketLineFields$inspectionDetails<TRes> {
  _CopyWithImpl$Fragment$TicketLineFields$inspectionDetails(
    this._instance,
    this._then,
  );

  final Fragment$TicketLineFields$inspectionDetails _instance;

  final TRes Function(Fragment$TicketLineFields$inspectionDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? inspectionMedia = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketLineFields$inspectionDetails(
      inspectionMedia: inspectionMedia == _undefined || inspectionMedia == null
          ? _instance.inspectionMedia
          : (inspectionMedia
                as List<
                  Fragment$TicketLineFields$inspectionDetails$inspectionMedia
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes inspectionMedia(
    Iterable<Fragment$TicketLineFields$inspectionDetails$inspectionMedia>
    Function(
      Iterable<
        CopyWith$Fragment$TicketLineFields$inspectionDetails$inspectionMedia<
          Fragment$TicketLineFields$inspectionDetails$inspectionMedia
        >
      >,
    )
    _fn,
  ) => call(
    inspectionMedia: _fn(
      _instance.inspectionMedia.map(
        (e) =>
            CopyWith$Fragment$TicketLineFields$inspectionDetails$inspectionMedia(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$TicketLineFields$inspectionDetails<TRes>
    implements CopyWith$Fragment$TicketLineFields$inspectionDetails<TRes> {
  _CopyWithStubImpl$Fragment$TicketLineFields$inspectionDetails(this._res);

  TRes _res;

  call({
    List<Fragment$TicketLineFields$inspectionDetails$inspectionMedia>?
    inspectionMedia,
    String? $__typename,
  }) => _res;

  inspectionMedia(_fn) => _res;
}

class Fragment$TicketLineFields$inspectionDetails$inspectionMedia {
  Fragment$TicketLineFields$inspectionDetails$inspectionMedia({
    required this.url,
    this.sasUrl,
    this.sasThumbnailUrl,
    this.$__typename = 'InspectionMedia',
  });

  factory Fragment$TicketLineFields$inspectionDetails$inspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$sasUrl = json['sasUrl'];
    final l$sasThumbnailUrl = json['sasThumbnailUrl'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketLineFields$inspectionDetails$inspectionMedia(
      url: (l$url as String),
      sasUrl: (l$sasUrl as String?),
      sasThumbnailUrl: (l$sasThumbnailUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String? sasUrl;

  final String? sasThumbnailUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    _resultData['sasThumbnailUrl'] = l$sasThumbnailUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$sasUrl = sasUrl;
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$sasUrl, l$sasThumbnailUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketLineFields$inspectionDetails$inspectionMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
      return false;
    }
    final l$sasThumbnailUrl = sasThumbnailUrl;
    final lOther$sasThumbnailUrl = other.sasThumbnailUrl;
    if (l$sasThumbnailUrl != lOther$sasThumbnailUrl) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketLineFields$inspectionDetails$inspectionMedia
    on Fragment$TicketLineFields$inspectionDetails$inspectionMedia {
  CopyWith$Fragment$TicketLineFields$inspectionDetails$inspectionMedia<
    Fragment$TicketLineFields$inspectionDetails$inspectionMedia
  >
  get copyWith =>
      CopyWith$Fragment$TicketLineFields$inspectionDetails$inspectionMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TicketLineFields$inspectionDetails$inspectionMedia<
  TRes
> {
  factory CopyWith$Fragment$TicketLineFields$inspectionDetails$inspectionMedia(
    Fragment$TicketLineFields$inspectionDetails$inspectionMedia instance,
    TRes Function(Fragment$TicketLineFields$inspectionDetails$inspectionMedia)
    then,
  ) = _CopyWithImpl$Fragment$TicketLineFields$inspectionDetails$inspectionMedia;

  factory CopyWith$Fragment$TicketLineFields$inspectionDetails$inspectionMedia.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$TicketLineFields$inspectionDetails$inspectionMedia;

  TRes call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketLineFields$inspectionDetails$inspectionMedia<
  TRes
>
    implements
        CopyWith$Fragment$TicketLineFields$inspectionDetails$inspectionMedia<
          TRes
        > {
  _CopyWithImpl$Fragment$TicketLineFields$inspectionDetails$inspectionMedia(
    this._instance,
    this._then,
  );

  final Fragment$TicketLineFields$inspectionDetails$inspectionMedia _instance;

  final TRes Function(
    Fragment$TicketLineFields$inspectionDetails$inspectionMedia,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? sasUrl = _undefined,
    Object? sasThumbnailUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketLineFields$inspectionDetails$inspectionMedia(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      sasThumbnailUrl: sasThumbnailUrl == _undefined
          ? _instance.sasThumbnailUrl
          : (sasThumbnailUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketLineFields$inspectionDetails$inspectionMedia<
  TRes
>
    implements
        CopyWith$Fragment$TicketLineFields$inspectionDetails$inspectionMedia<
          TRes
        > {
  _CopyWithStubImpl$Fragment$TicketLineFields$inspectionDetails$inspectionMedia(
    this._res,
  );

  TRes _res;

  call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    String? $__typename,
  }) => _res;
}

class Fragment$TicketLineFields$financialCostImpacts {
  Fragment$TicketLineFields$financialCostImpacts({
    required this.typeId,
    required this.value,
    this.$__typename = 'FinancialCostImpact',
  });

  factory Fragment$TicketLineFields$financialCostImpacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$typeId = json['typeId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketLineFields$financialCostImpacts(
      typeId: (l$typeId as String),
      value: (l$value as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String typeId;

  final double value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$typeId = typeId;
    _resultData['typeId'] = l$typeId;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$typeId = typeId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$typeId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketLineFields$financialCostImpacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$typeId = typeId;
    final lOther$typeId = other.typeId;
    if (l$typeId != lOther$typeId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketLineFields$financialCostImpacts
    on Fragment$TicketLineFields$financialCostImpacts {
  CopyWith$Fragment$TicketLineFields$financialCostImpacts<
    Fragment$TicketLineFields$financialCostImpacts
  >
  get copyWith =>
      CopyWith$Fragment$TicketLineFields$financialCostImpacts(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketLineFields$financialCostImpacts<TRes> {
  factory CopyWith$Fragment$TicketLineFields$financialCostImpacts(
    Fragment$TicketLineFields$financialCostImpacts instance,
    TRes Function(Fragment$TicketLineFields$financialCostImpacts) then,
  ) = _CopyWithImpl$Fragment$TicketLineFields$financialCostImpacts;

  factory CopyWith$Fragment$TicketLineFields$financialCostImpacts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$TicketLineFields$financialCostImpacts;

  TRes call({String? typeId, double? value, String? $__typename});
}

class _CopyWithImpl$Fragment$TicketLineFields$financialCostImpacts<TRes>
    implements CopyWith$Fragment$TicketLineFields$financialCostImpacts<TRes> {
  _CopyWithImpl$Fragment$TicketLineFields$financialCostImpacts(
    this._instance,
    this._then,
  );

  final Fragment$TicketLineFields$financialCostImpacts _instance;

  final TRes Function(Fragment$TicketLineFields$financialCostImpacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? typeId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketLineFields$financialCostImpacts(
      typeId: typeId == _undefined || typeId == null
          ? _instance.typeId
          : (typeId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketLineFields$financialCostImpacts<TRes>
    implements CopyWith$Fragment$TicketLineFields$financialCostImpacts<TRes> {
  _CopyWithStubImpl$Fragment$TicketLineFields$financialCostImpacts(this._res);

  TRes _res;

  call({String? typeId, double? value, String? $__typename}) => _res;
}

class Fragment$TicketLineFields$product {
  Fragment$TicketLineFields$product({
    required this.code,
    required this.active,
    required this.description,
    required this.id,
    this.$__typename = 'Product',
  });

  factory Fragment$TicketLineFields$product.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$active = json['active'];
    final l$description = json['description'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketLineFields$product(
      code: (l$code as String),
      active: (l$active as bool),
      description: (l$description as String),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final bool active;

  final String description;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$active = active;
    final l$description = description;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$active,
      l$description,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketLineFields$product ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketLineFields$product
    on Fragment$TicketLineFields$product {
  CopyWith$Fragment$TicketLineFields$product<Fragment$TicketLineFields$product>
  get copyWith => CopyWith$Fragment$TicketLineFields$product(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketLineFields$product<TRes> {
  factory CopyWith$Fragment$TicketLineFields$product(
    Fragment$TicketLineFields$product instance,
    TRes Function(Fragment$TicketLineFields$product) then,
  ) = _CopyWithImpl$Fragment$TicketLineFields$product;

  factory CopyWith$Fragment$TicketLineFields$product.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketLineFields$product;

  TRes call({
    String? code,
    bool? active,
    String? description,
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketLineFields$product<TRes>
    implements CopyWith$Fragment$TicketLineFields$product<TRes> {
  _CopyWithImpl$Fragment$TicketLineFields$product(this._instance, this._then);

  final Fragment$TicketLineFields$product _instance;

  final TRes Function(Fragment$TicketLineFields$product) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? active = _undefined,
    Object? description = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketLineFields$product(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketLineFields$product<TRes>
    implements CopyWith$Fragment$TicketLineFields$product<TRes> {
  _CopyWithStubImpl$Fragment$TicketLineFields$product(this._res);

  TRes _res;

  call({
    String? code,
    bool? active,
    String? description,
    String? id,
    String? $__typename,
  }) => _res;
}

class Fragment$TicketLineFields$location {
  Fragment$TicketLineFields$location({
    required this.id,
    required this.code,
    required this.yardId,
    required this.description,
    required this.mediaAssets,
    this.$__typename = 'InventoryLocation',
  });

  factory Fragment$TicketLineFields$location.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$yardId = json['yardId'];
    final l$description = json['description'];
    final l$mediaAssets = json['mediaAssets'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketLineFields$location(
      id: (l$id as String),
      code: (l$code as String),
      yardId: (l$yardId as String),
      description: (l$description as String),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) => Fragment$TicketLineFields$location$mediaAssets.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String yardId;

  final String description;

  final List<Fragment$TicketLineFields$location$mediaAssets> mediaAssets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$yardId = yardId;
    final l$description = description;
    final l$mediaAssets = mediaAssets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$yardId,
      l$description,
      Object.hashAll(l$mediaAssets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketLineFields$location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$mediaAssets = mediaAssets;
    final lOther$mediaAssets = other.mediaAssets;
    if (l$mediaAssets.length != lOther$mediaAssets.length) {
      return false;
    }
    for (int i = 0; i < l$mediaAssets.length; i++) {
      final l$mediaAssets$entry = l$mediaAssets[i];
      final lOther$mediaAssets$entry = lOther$mediaAssets[i];
      if (l$mediaAssets$entry != lOther$mediaAssets$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketLineFields$location
    on Fragment$TicketLineFields$location {
  CopyWith$Fragment$TicketLineFields$location<
    Fragment$TicketLineFields$location
  >
  get copyWith => CopyWith$Fragment$TicketLineFields$location(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketLineFields$location<TRes> {
  factory CopyWith$Fragment$TicketLineFields$location(
    Fragment$TicketLineFields$location instance,
    TRes Function(Fragment$TicketLineFields$location) then,
  ) = _CopyWithImpl$Fragment$TicketLineFields$location;

  factory CopyWith$Fragment$TicketLineFields$location.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketLineFields$location;

  TRes call({
    String? id,
    String? code,
    String? yardId,
    String? description,
    List<Fragment$TicketLineFields$location$mediaAssets>? mediaAssets,
    String? $__typename,
  });
  TRes mediaAssets(
    Iterable<Fragment$TicketLineFields$location$mediaAssets> Function(
      Iterable<
        CopyWith$Fragment$TicketLineFields$location$mediaAssets<
          Fragment$TicketLineFields$location$mediaAssets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$TicketLineFields$location<TRes>
    implements CopyWith$Fragment$TicketLineFields$location<TRes> {
  _CopyWithImpl$Fragment$TicketLineFields$location(this._instance, this._then);

  final Fragment$TicketLineFields$location _instance;

  final TRes Function(Fragment$TicketLineFields$location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? yardId = _undefined,
    Object? description = _undefined,
    Object? mediaAssets = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketLineFields$location(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets
                as List<Fragment$TicketLineFields$location$mediaAssets>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes mediaAssets(
    Iterable<Fragment$TicketLineFields$location$mediaAssets> Function(
      Iterable<
        CopyWith$Fragment$TicketLineFields$location$mediaAssets<
          Fragment$TicketLineFields$location$mediaAssets
        >
      >,
    )
    _fn,
  ) => call(
    mediaAssets: _fn(
      _instance.mediaAssets.map(
        (e) => CopyWith$Fragment$TicketLineFields$location$mediaAssets(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$TicketLineFields$location<TRes>
    implements CopyWith$Fragment$TicketLineFields$location<TRes> {
  _CopyWithStubImpl$Fragment$TicketLineFields$location(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? yardId,
    String? description,
    List<Fragment$TicketLineFields$location$mediaAssets>? mediaAssets,
    String? $__typename,
  }) => _res;

  mediaAssets(_fn) => _res;
}

class Fragment$TicketLineFields$location$mediaAssets {
  Fragment$TicketLineFields$location$mediaAssets({
    required this.url,
    this.sasUrl,
    this.$__typename = 'MediaAsset',
  });

  factory Fragment$TicketLineFields$location$mediaAssets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$sasUrl = json['sasUrl'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketLineFields$location$mediaAssets(
      url: (l$url as String),
      sasUrl: (l$sasUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String? sasUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$sasUrl = sasUrl;
    _resultData['sasUrl'] = l$sasUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$sasUrl = sasUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([l$url, l$sasUrl, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketLineFields$location$mediaAssets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$sasUrl = sasUrl;
    final lOther$sasUrl = other.sasUrl;
    if (l$sasUrl != lOther$sasUrl) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketLineFields$location$mediaAssets
    on Fragment$TicketLineFields$location$mediaAssets {
  CopyWith$Fragment$TicketLineFields$location$mediaAssets<
    Fragment$TicketLineFields$location$mediaAssets
  >
  get copyWith =>
      CopyWith$Fragment$TicketLineFields$location$mediaAssets(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketLineFields$location$mediaAssets<TRes> {
  factory CopyWith$Fragment$TicketLineFields$location$mediaAssets(
    Fragment$TicketLineFields$location$mediaAssets instance,
    TRes Function(Fragment$TicketLineFields$location$mediaAssets) then,
  ) = _CopyWithImpl$Fragment$TicketLineFields$location$mediaAssets;

  factory CopyWith$Fragment$TicketLineFields$location$mediaAssets.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$TicketLineFields$location$mediaAssets;

  TRes call({String? url, String? sasUrl, String? $__typename});
}

class _CopyWithImpl$Fragment$TicketLineFields$location$mediaAssets<TRes>
    implements CopyWith$Fragment$TicketLineFields$location$mediaAssets<TRes> {
  _CopyWithImpl$Fragment$TicketLineFields$location$mediaAssets(
    this._instance,
    this._then,
  );

  final Fragment$TicketLineFields$location$mediaAssets _instance;

  final TRes Function(Fragment$TicketLineFields$location$mediaAssets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? sasUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketLineFields$location$mediaAssets(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      sasUrl: sasUrl == _undefined ? _instance.sasUrl : (sasUrl as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketLineFields$location$mediaAssets<TRes>
    implements CopyWith$Fragment$TicketLineFields$location$mediaAssets<TRes> {
  _CopyWithStubImpl$Fragment$TicketLineFields$location$mediaAssets(this._res);

  TRes _res;

  call({String? url, String? sasUrl, String? $__typename}) => _res;
}

class Fragment$TicketLineFields$internalComments {
  Fragment$TicketLineFields$internalComments({
    required this.content,
    required this.created,
    this.$__typename = 'Comment',
  });

  factory Fragment$TicketLineFields$internalComments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$content = json['content'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketLineFields$internalComments(
      content: (l$content as String),
      created: Fragment$TicketLineFields$internalComments$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String content;

  final Fragment$TicketLineFields$internalComments$created created;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$content = content;
    _resultData['content'] = l$content;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$content = content;
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([l$content, l$created, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketLineFields$internalComments ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketLineFields$internalComments
    on Fragment$TicketLineFields$internalComments {
  CopyWith$Fragment$TicketLineFields$internalComments<
    Fragment$TicketLineFields$internalComments
  >
  get copyWith =>
      CopyWith$Fragment$TicketLineFields$internalComments(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketLineFields$internalComments<TRes> {
  factory CopyWith$Fragment$TicketLineFields$internalComments(
    Fragment$TicketLineFields$internalComments instance,
    TRes Function(Fragment$TicketLineFields$internalComments) then,
  ) = _CopyWithImpl$Fragment$TicketLineFields$internalComments;

  factory CopyWith$Fragment$TicketLineFields$internalComments.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketLineFields$internalComments;

  TRes call({
    String? content,
    Fragment$TicketLineFields$internalComments$created? created,
    String? $__typename,
  });
  CopyWith$Fragment$TicketLineFields$internalComments$created<TRes> get created;
}

class _CopyWithImpl$Fragment$TicketLineFields$internalComments<TRes>
    implements CopyWith$Fragment$TicketLineFields$internalComments<TRes> {
  _CopyWithImpl$Fragment$TicketLineFields$internalComments(
    this._instance,
    this._then,
  );

  final Fragment$TicketLineFields$internalComments _instance;

  final TRes Function(Fragment$TicketLineFields$internalComments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? content = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketLineFields$internalComments(
      content: content == _undefined || content == null
          ? _instance.content
          : (content as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$TicketLineFields$internalComments$created),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$TicketLineFields$internalComments$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$TicketLineFields$internalComments$created(
      local$created,
      (e) => call(created: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$TicketLineFields$internalComments<TRes>
    implements CopyWith$Fragment$TicketLineFields$internalComments<TRes> {
  _CopyWithStubImpl$Fragment$TicketLineFields$internalComments(this._res);

  TRes _res;

  call({
    String? content,
    Fragment$TicketLineFields$internalComments$created? created,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$TicketLineFields$internalComments$created<TRes>
  get created =>
      CopyWith$Fragment$TicketLineFields$internalComments$created.stub(_res);
}

class Fragment$TicketLineFields$internalComments$created {
  Fragment$TicketLineFields$internalComments$created({
    required this.userInfoId,
    required this.userName,
    required this.at,
    this.$__typename = 'Created',
  });

  factory Fragment$TicketLineFields$internalComments$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketLineFields$internalComments$created(
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final String userName;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$userName, l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketLineFields$internalComments$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketLineFields$internalComments$created
    on Fragment$TicketLineFields$internalComments$created {
  CopyWith$Fragment$TicketLineFields$internalComments$created<
    Fragment$TicketLineFields$internalComments$created
  >
  get copyWith => CopyWith$Fragment$TicketLineFields$internalComments$created(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$TicketLineFields$internalComments$created<
  TRes
> {
  factory CopyWith$Fragment$TicketLineFields$internalComments$created(
    Fragment$TicketLineFields$internalComments$created instance,
    TRes Function(Fragment$TicketLineFields$internalComments$created) then,
  ) = _CopyWithImpl$Fragment$TicketLineFields$internalComments$created;

  factory CopyWith$Fragment$TicketLineFields$internalComments$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$TicketLineFields$internalComments$created;

  TRes call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketLineFields$internalComments$created<TRes>
    implements
        CopyWith$Fragment$TicketLineFields$internalComments$created<TRes> {
  _CopyWithImpl$Fragment$TicketLineFields$internalComments$created(
    this._instance,
    this._then,
  );

  final Fragment$TicketLineFields$internalComments$created _instance;

  final TRes Function(Fragment$TicketLineFields$internalComments$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketLineFields$internalComments$created(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketLineFields$internalComments$created<TRes>
    implements
        CopyWith$Fragment$TicketLineFields$internalComments$created<TRes> {
  _CopyWithStubImpl$Fragment$TicketLineFields$internalComments$created(
    this._res,
  );

  TRes _res;

  call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  }) => _res;
}

class Fragment$TicketLineFields$costs {
  Fragment$TicketLineFields$costs({
    required this.typeId,
    this.value,
    this.rate,
    required this.costParty,
    this.$__typename = 'CostDefinition',
  });

  factory Fragment$TicketLineFields$costs.fromJson(Map<String, dynamic> json) {
    final l$typeId = json['typeId'];
    final l$value = json['value'];
    final l$rate = json['rate'];
    final l$costParty = json['costParty'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketLineFields$costs(
      typeId: (l$typeId as String),
      value: (l$value as num?)?.toDouble(),
      rate: l$rate == null
          ? null
          : Fragment$UomValueFields.fromJson((l$rate as Map<String, dynamic>)),
      costParty: Fragment$TicketLineFields$costs$costParty.fromJson(
        (l$costParty as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String typeId;

  final double? value;

  final Fragment$UomValueFields? rate;

  final Fragment$TicketLineFields$costs$costParty costParty;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$typeId = typeId;
    _resultData['typeId'] = l$typeId;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$rate = rate;
    _resultData['rate'] = l$rate?.toJson();
    final l$costParty = costParty;
    _resultData['costParty'] = l$costParty.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$typeId = typeId;
    final l$value = value;
    final l$rate = rate;
    final l$costParty = costParty;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$typeId,
      l$value,
      l$rate,
      l$costParty,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketLineFields$costs ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$typeId = typeId;
    final lOther$typeId = other.typeId;
    if (l$typeId != lOther$typeId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$costParty = costParty;
    final lOther$costParty = other.costParty;
    if (l$costParty != lOther$costParty) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketLineFields$costs
    on Fragment$TicketLineFields$costs {
  CopyWith$Fragment$TicketLineFields$costs<Fragment$TicketLineFields$costs>
  get copyWith => CopyWith$Fragment$TicketLineFields$costs(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketLineFields$costs<TRes> {
  factory CopyWith$Fragment$TicketLineFields$costs(
    Fragment$TicketLineFields$costs instance,
    TRes Function(Fragment$TicketLineFields$costs) then,
  ) = _CopyWithImpl$Fragment$TicketLineFields$costs;

  factory CopyWith$Fragment$TicketLineFields$costs.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketLineFields$costs;

  TRes call({
    String? typeId,
    double? value,
    Fragment$UomValueFields? rate,
    Fragment$TicketLineFields$costs$costParty? costParty,
    String? $__typename,
  });
  CopyWith$Fragment$UomValueFields<TRes> get rate;
  CopyWith$Fragment$TicketLineFields$costs$costParty<TRes> get costParty;
}

class _CopyWithImpl$Fragment$TicketLineFields$costs<TRes>
    implements CopyWith$Fragment$TicketLineFields$costs<TRes> {
  _CopyWithImpl$Fragment$TicketLineFields$costs(this._instance, this._then);

  final Fragment$TicketLineFields$costs _instance;

  final TRes Function(Fragment$TicketLineFields$costs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? typeId = _undefined,
    Object? value = _undefined,
    Object? rate = _undefined,
    Object? costParty = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketLineFields$costs(
      typeId: typeId == _undefined || typeId == null
          ? _instance.typeId
          : (typeId as String),
      value: value == _undefined ? _instance.value : (value as double?),
      rate: rate == _undefined
          ? _instance.rate
          : (rate as Fragment$UomValueFields?),
      costParty: costParty == _undefined || costParty == null
          ? _instance.costParty
          : (costParty as Fragment$TicketLineFields$costs$costParty),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$UomValueFields<TRes> get rate {
    final local$rate = _instance.rate;
    return local$rate == null
        ? CopyWith$Fragment$UomValueFields.stub(_then(_instance))
        : CopyWith$Fragment$UomValueFields(local$rate, (e) => call(rate: e));
  }

  CopyWith$Fragment$TicketLineFields$costs$costParty<TRes> get costParty {
    final local$costParty = _instance.costParty;
    return CopyWith$Fragment$TicketLineFields$costs$costParty(
      local$costParty,
      (e) => call(costParty: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$TicketLineFields$costs<TRes>
    implements CopyWith$Fragment$TicketLineFields$costs<TRes> {
  _CopyWithStubImpl$Fragment$TicketLineFields$costs(this._res);

  TRes _res;

  call({
    String? typeId,
    double? value,
    Fragment$UomValueFields? rate,
    Fragment$TicketLineFields$costs$costParty? costParty,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$UomValueFields<TRes> get rate =>
      CopyWith$Fragment$UomValueFields.stub(_res);

  CopyWith$Fragment$TicketLineFields$costs$costParty<TRes> get costParty =>
      CopyWith$Fragment$TicketLineFields$costs$costParty.stub(_res);
}

class Fragment$TicketLineFields$costs$costParty {
  Fragment$TicketLineFields$costs$costParty({
    required this.partyAccountNo,
    required this.partyName,
    this.$__typename = 'CostParty',
  });

  factory Fragment$TicketLineFields$costs$costParty.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$partyAccountNo = json['partyAccountNo'];
    final l$partyName = json['partyName'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketLineFields$costs$costParty(
      partyAccountNo: (l$partyAccountNo as String),
      partyName: (l$partyName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String partyAccountNo;

  final String partyName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partyAccountNo = partyAccountNo;
    _resultData['partyAccountNo'] = l$partyAccountNo;
    final l$partyName = partyName;
    _resultData['partyName'] = l$partyName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partyAccountNo = partyAccountNo;
    final l$partyName = partyName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$partyAccountNo, l$partyName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketLineFields$costs$costParty ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$partyName = partyName;
    final lOther$partyName = other.partyName;
    if (l$partyName != lOther$partyName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketLineFields$costs$costParty
    on Fragment$TicketLineFields$costs$costParty {
  CopyWith$Fragment$TicketLineFields$costs$costParty<
    Fragment$TicketLineFields$costs$costParty
  >
  get copyWith =>
      CopyWith$Fragment$TicketLineFields$costs$costParty(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketLineFields$costs$costParty<TRes> {
  factory CopyWith$Fragment$TicketLineFields$costs$costParty(
    Fragment$TicketLineFields$costs$costParty instance,
    TRes Function(Fragment$TicketLineFields$costs$costParty) then,
  ) = _CopyWithImpl$Fragment$TicketLineFields$costs$costParty;

  factory CopyWith$Fragment$TicketLineFields$costs$costParty.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketLineFields$costs$costParty;

  TRes call({String? partyAccountNo, String? partyName, String? $__typename});
}

class _CopyWithImpl$Fragment$TicketLineFields$costs$costParty<TRes>
    implements CopyWith$Fragment$TicketLineFields$costs$costParty<TRes> {
  _CopyWithImpl$Fragment$TicketLineFields$costs$costParty(
    this._instance,
    this._then,
  );

  final Fragment$TicketLineFields$costs$costParty _instance;

  final TRes Function(Fragment$TicketLineFields$costs$costParty) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partyAccountNo = _undefined,
    Object? partyName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketLineFields$costs$costParty(
      partyAccountNo: partyAccountNo == _undefined || partyAccountNo == null
          ? _instance.partyAccountNo
          : (partyAccountNo as String),
      partyName: partyName == _undefined || partyName == null
          ? _instance.partyName
          : (partyName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketLineFields$costs$costParty<TRes>
    implements CopyWith$Fragment$TicketLineFields$costs$costParty<TRes> {
  _CopyWithStubImpl$Fragment$TicketLineFields$costs$costParty(this._res);

  TRes _res;

  call({String? partyAccountNo, String? partyName, String? $__typename}) =>
      _res;
}

class Fragment$TicketLineFields$created {
  Fragment$TicketLineFields$created({
    required this.userInfoId,
    required this.userName,
    required this.at,
    this.$__typename = 'Created',
  });

  factory Fragment$TicketLineFields$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketLineFields$created(
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final String userName;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$userName, l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketLineFields$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketLineFields$created
    on Fragment$TicketLineFields$created {
  CopyWith$Fragment$TicketLineFields$created<Fragment$TicketLineFields$created>
  get copyWith => CopyWith$Fragment$TicketLineFields$created(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketLineFields$created<TRes> {
  factory CopyWith$Fragment$TicketLineFields$created(
    Fragment$TicketLineFields$created instance,
    TRes Function(Fragment$TicketLineFields$created) then,
  ) = _CopyWithImpl$Fragment$TicketLineFields$created;

  factory CopyWith$Fragment$TicketLineFields$created.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketLineFields$created;

  TRes call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketLineFields$created<TRes>
    implements CopyWith$Fragment$TicketLineFields$created<TRes> {
  _CopyWithImpl$Fragment$TicketLineFields$created(this._instance, this._then);

  final Fragment$TicketLineFields$created _instance;

  final TRes Function(Fragment$TicketLineFields$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketLineFields$created(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketLineFields$created<TRes>
    implements CopyWith$Fragment$TicketLineFields$created<TRes> {
  _CopyWithStubImpl$Fragment$TicketLineFields$created(this._res);

  TRes _res;

  call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  }) => _res;
}

class Fragment$TicketLineFields$modified {
  Fragment$TicketLineFields$modified({
    required this.userInfoId,
    required this.userName,
    required this.at,
    this.$__typename = 'Modified',
  });

  factory Fragment$TicketLineFields$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketLineFields$modified(
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final String userName;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$userName, l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketLineFields$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketLineFields$modified
    on Fragment$TicketLineFields$modified {
  CopyWith$Fragment$TicketLineFields$modified<
    Fragment$TicketLineFields$modified
  >
  get copyWith => CopyWith$Fragment$TicketLineFields$modified(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketLineFields$modified<TRes> {
  factory CopyWith$Fragment$TicketLineFields$modified(
    Fragment$TicketLineFields$modified instance,
    TRes Function(Fragment$TicketLineFields$modified) then,
  ) = _CopyWithImpl$Fragment$TicketLineFields$modified;

  factory CopyWith$Fragment$TicketLineFields$modified.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketLineFields$modified;

  TRes call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketLineFields$modified<TRes>
    implements CopyWith$Fragment$TicketLineFields$modified<TRes> {
  _CopyWithImpl$Fragment$TicketLineFields$modified(this._instance, this._then);

  final Fragment$TicketLineFields$modified _instance;

  final TRes Function(Fragment$TicketLineFields$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketLineFields$modified(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketLineFields$modified<TRes>
    implements CopyWith$Fragment$TicketLineFields$modified<TRes> {
  _CopyWithStubImpl$Fragment$TicketLineFields$modified(this._res);

  TRes _res;

  call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  }) => _res;
}
