import '../../../schema.graphql.dart';
import '../../payment/advance_fields.graphql.dart';
import '../../payments/encashment_values.graphql.dart';
import '../../payments/payment_deduction.graphql.dart';
import '../../payments/payment_deduction_items.graphql.dart';
import 'account_details_fragment.graphql.dart';
import 'media_asset_fragment.graphql.dart';
import 'non_stock_ticket_line_fragment.graphql.dart';
import 'package:emr_core_api/models/local_date.dart';
import 'package:gql/ast.dart';
import 'ticket_account.graphql.dart';
import 'ticket_deduction_fragment.graphql.dart';
import 'ticket_line_fragment.graphql.dart';
import 'uom_value.graphql.dart';

class Fragment$TicketFields {
  Fragment$TicketFields({
    required this.id,
    required this.yardId,
    required this.yardCode,
    required this.ticketNumber,
    required this.ticketType,
    required this.date,
    required this.serviceType,
    required this.ticketCategory,
    required this.ticketStatus,
    this.contractId,
    required this.defaultPaymentMethod,
    required this.account,
    this.contract,
    required this.transportDetails,
    required this.deductions,
    this.haulageCharge,
    required this.haulagePrice,
    this.haulier,
    required this.lines,
    required this.nonStockTicketLines,
    required this.tags,
    this.extendedProperties,
    required this.active,
    required this.price,
    required this.provPrice,
    this.outwardTicketNo,
    this.currency,
    required this.mediaAssets,
    required this.inspectionMedia,
    required this.created,
    this.acceptedConsignmentNote,
    this.rejectedConsignmentNote,
    this.paymentDeduction,
    this.remittanceDetails,
    required this.isPayableAtEdge,
    required this.isPaymentAuthorizationRequired,
    required this.metadata,
    this.$__typename = 'Ticket',
  });

  factory Fragment$TicketFields.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$yardId = json['yardId'];
    final l$yardCode = json['yardCode'];
    final l$ticketNumber = json['ticketNumber'];
    final l$ticketType = json['ticketType'];
    final l$date = json['date'];
    final l$serviceType = json['serviceType'];
    final l$ticketCategory = json['ticketCategory'];
    final l$ticketStatus = json['ticketStatus'];
    final l$contractId = json['contractId'];
    final l$defaultPaymentMethod = json['defaultPaymentMethod'];
    final l$account = json['account'];
    final l$contract = json['contract'];
    final l$transportDetails = json['transportDetails'];
    final l$deductions = json['deductions'];
    final l$haulageCharge = json['haulageCharge'];
    final l$haulagePrice = json['haulagePrice'];
    final l$haulier = json['haulier'];
    final l$lines = json['lines'];
    final l$nonStockTicketLines = json['nonStockTicketLines'];
    final l$tags = json['tags'];
    final l$extendedProperties = json['extendedProperties'];
    final l$active = json['active'];
    final l$price = json['price'];
    final l$provPrice = json['provPrice'];
    final l$outwardTicketNo = json['outwardTicketNo'];
    final l$currency = json['currency'];
    final l$mediaAssets = json['mediaAssets'];
    final l$inspectionMedia = json['inspectionMedia'];
    final l$created = json['created'];
    final l$acceptedConsignmentNote = json['acceptedConsignmentNote'];
    final l$rejectedConsignmentNote = json['rejectedConsignmentNote'];
    final l$paymentDeduction = json['paymentDeduction'];
    final l$remittanceDetails = json['remittanceDetails'];
    final l$isPayableAtEdge = json['isPayableAtEdge'];
    final l$isPaymentAuthorizationRequired =
        json['isPaymentAuthorizationRequired'];
    final l$metadata = json['metadata'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields(
      id: (l$id as String),
      yardId: (l$yardId as String),
      yardCode: (l$yardCode as String),
      ticketNumber: (l$ticketNumber as int),
      ticketType: fromJson$Enum$TicketType((l$ticketType as String)),
      date: LocalDate.fromJson(l$date),
      serviceType: fromJson$Enum$TicketServiceType((l$serviceType as String)),
      ticketCategory: fromJson$Enum$TicketCategory(
        (l$ticketCategory as String),
      ),
      ticketStatus: fromJson$Enum$TicketStatus((l$ticketStatus as String)),
      contractId: (l$contractId as String?),
      defaultPaymentMethod: fromJson$Enum$PaymentMethod(
        (l$defaultPaymentMethod as String),
      ),
      account: Fragment$TicketFields$account.fromJson(
        (l$account as Map<String, dynamic>),
      ),
      contract: l$contract == null
          ? null
          : Fragment$TicketFields$contract.fromJson(
              (l$contract as Map<String, dynamic>),
            ),
      transportDetails: Fragment$TicketFields$transportDetails.fromJson(
        (l$transportDetails as Map<String, dynamic>),
      ),
      deductions: (l$deductions as List<dynamic>)
          .map(
            (e) => Fragment$TicketFields$deductions.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      haulageCharge: l$haulageCharge == null
          ? null
          : Fragment$TicketFields$haulageCharge.fromJson(
              (l$haulageCharge as Map<String, dynamic>),
            ),
      haulagePrice: (l$haulagePrice as num).toDouble(),
      haulier: l$haulier == null
          ? null
          : Fragment$TicketAccountFields.fromJson(
              (l$haulier as Map<String, dynamic>),
            ),
      lines: (l$lines as List<dynamic>)
          .map(
            (e) =>
                Fragment$TicketLineFields.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      nonStockTicketLines: (l$nonStockTicketLines as List<dynamic>)
          .map(
            (e) => Fragment$NonStockTicketLineFields.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      tags: (l$tags as List<dynamic>).map((e) => (e as String)).toList(),
      extendedProperties: (l$extendedProperties as Map<String, dynamic>?),
      active: (l$active as bool),
      price: (l$price as num).toDouble(),
      provPrice: (l$provPrice as num).toDouble(),
      outwardTicketNo: (l$outwardTicketNo as String?),
      currency: (l$currency as String?),
      mediaAssets: (l$mediaAssets as List<dynamic>)
          .map(
            (e) =>
                Fragment$MediaAssetFields.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      inspectionMedia: (l$inspectionMedia as List<dynamic>)
          .map(
            (e) => Fragment$TicketFields$inspectionMedia.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      created: Fragment$TicketFields$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      acceptedConsignmentNote: l$acceptedConsignmentNote == null
          ? null
          : Fragment$TicketFields$acceptedConsignmentNote.fromJson(
              (l$acceptedConsignmentNote as Map<String, dynamic>),
            ),
      rejectedConsignmentNote: l$rejectedConsignmentNote == null
          ? null
          : Fragment$TicketFields$rejectedConsignmentNote.fromJson(
              (l$rejectedConsignmentNote as Map<String, dynamic>),
            ),
      paymentDeduction: l$paymentDeduction == null
          ? null
          : Fragment$PaymentDeductionFields.fromJson(
              (l$paymentDeduction as Map<String, dynamic>),
            ),
      remittanceDetails: l$remittanceDetails == null
          ? null
          : Fragment$TicketFields$remittanceDetails.fromJson(
              (l$remittanceDetails as Map<String, dynamic>),
            ),
      isPayableAtEdge: (l$isPayableAtEdge as bool),
      isPaymentAuthorizationRequired:
          (l$isPaymentAuthorizationRequired as bool),
      metadata: (l$metadata as Map<String, dynamic>),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String yardId;

  final String yardCode;

  final int ticketNumber;

  final Enum$TicketType ticketType;

  final DateTime date;

  final Enum$TicketServiceType serviceType;

  final Enum$TicketCategory ticketCategory;

  final Enum$TicketStatus ticketStatus;

  final String? contractId;

  final Enum$PaymentMethod defaultPaymentMethod;

  final Fragment$TicketFields$account account;

  final Fragment$TicketFields$contract? contract;

  final Fragment$TicketFields$transportDetails transportDetails;

  final List<Fragment$TicketFields$deductions> deductions;

  final Fragment$TicketFields$haulageCharge? haulageCharge;

  final double haulagePrice;

  final Fragment$TicketAccountFields? haulier;

  final List<Fragment$TicketLineFields> lines;

  final List<Fragment$NonStockTicketLineFields> nonStockTicketLines;

  final List<String> tags;

  final Map<String, dynamic>? extendedProperties;

  final bool active;

  final double price;

  final double provPrice;

  final String? outwardTicketNo;

  final String? currency;

  final List<Fragment$MediaAssetFields> mediaAssets;

  final List<Fragment$TicketFields$inspectionMedia> inspectionMedia;

  final Fragment$TicketFields$created created;

  final Fragment$TicketFields$acceptedConsignmentNote? acceptedConsignmentNote;

  final Fragment$TicketFields$rejectedConsignmentNote? rejectedConsignmentNote;

  final Fragment$PaymentDeductionFields? paymentDeduction;

  final Fragment$TicketFields$remittanceDetails? remittanceDetails;

  final bool isPayableAtEdge;

  final bool isPaymentAuthorizationRequired;

  final Map<String, dynamic> metadata;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$yardId = yardId;
    _resultData['yardId'] = l$yardId;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$ticketType = ticketType;
    _resultData['ticketType'] = toJson$Enum$TicketType(l$ticketType);
    final l$date = date;
    _resultData['date'] = LocalDate.toJson(l$date);
    final l$serviceType = serviceType;
    _resultData['serviceType'] = toJson$Enum$TicketServiceType(l$serviceType);
    final l$ticketCategory = ticketCategory;
    _resultData['ticketCategory'] = toJson$Enum$TicketCategory(
      l$ticketCategory,
    );
    final l$ticketStatus = ticketStatus;
    _resultData['ticketStatus'] = toJson$Enum$TicketStatus(l$ticketStatus);
    final l$contractId = contractId;
    _resultData['contractId'] = l$contractId;
    final l$defaultPaymentMethod = defaultPaymentMethod;
    _resultData['defaultPaymentMethod'] = toJson$Enum$PaymentMethod(
      l$defaultPaymentMethod,
    );
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$contract = contract;
    _resultData['contract'] = l$contract?.toJson();
    final l$transportDetails = transportDetails;
    _resultData['transportDetails'] = l$transportDetails.toJson();
    final l$deductions = deductions;
    _resultData['deductions'] = l$deductions.map((e) => e.toJson()).toList();
    final l$haulageCharge = haulageCharge;
    _resultData['haulageCharge'] = l$haulageCharge?.toJson();
    final l$haulagePrice = haulagePrice;
    _resultData['haulagePrice'] = l$haulagePrice;
    final l$haulier = haulier;
    _resultData['haulier'] = l$haulier?.toJson();
    final l$lines = lines;
    _resultData['lines'] = l$lines.map((e) => e.toJson()).toList();
    final l$nonStockTicketLines = nonStockTicketLines;
    _resultData['nonStockTicketLines'] = l$nonStockTicketLines
        .map((e) => e.toJson())
        .toList();
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e).toList();
    final l$extendedProperties = extendedProperties;
    _resultData['extendedProperties'] = l$extendedProperties;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$provPrice = provPrice;
    _resultData['provPrice'] = l$provPrice;
    final l$outwardTicketNo = outwardTicketNo;
    _resultData['outwardTicketNo'] = l$outwardTicketNo;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$mediaAssets = mediaAssets;
    _resultData['mediaAssets'] = l$mediaAssets.map((e) => e.toJson()).toList();
    final l$inspectionMedia = inspectionMedia;
    _resultData['inspectionMedia'] = l$inspectionMedia
        .map((e) => e.toJson())
        .toList();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$acceptedConsignmentNote = acceptedConsignmentNote;
    _resultData['acceptedConsignmentNote'] = l$acceptedConsignmentNote
        ?.toJson();
    final l$rejectedConsignmentNote = rejectedConsignmentNote;
    _resultData['rejectedConsignmentNote'] = l$rejectedConsignmentNote
        ?.toJson();
    final l$paymentDeduction = paymentDeduction;
    _resultData['paymentDeduction'] = l$paymentDeduction?.toJson();
    final l$remittanceDetails = remittanceDetails;
    _resultData['remittanceDetails'] = l$remittanceDetails?.toJson();
    final l$isPayableAtEdge = isPayableAtEdge;
    _resultData['isPayableAtEdge'] = l$isPayableAtEdge;
    final l$isPaymentAuthorizationRequired = isPaymentAuthorizationRequired;
    _resultData['isPaymentAuthorizationRequired'] =
        l$isPaymentAuthorizationRequired;
    final l$metadata = metadata;
    _resultData['metadata'] = l$metadata;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$yardId = yardId;
    final l$yardCode = yardCode;
    final l$ticketNumber = ticketNumber;
    final l$ticketType = ticketType;
    final l$date = date;
    final l$serviceType = serviceType;
    final l$ticketCategory = ticketCategory;
    final l$ticketStatus = ticketStatus;
    final l$contractId = contractId;
    final l$defaultPaymentMethod = defaultPaymentMethod;
    final l$account = account;
    final l$contract = contract;
    final l$transportDetails = transportDetails;
    final l$deductions = deductions;
    final l$haulageCharge = haulageCharge;
    final l$haulagePrice = haulagePrice;
    final l$haulier = haulier;
    final l$lines = lines;
    final l$nonStockTicketLines = nonStockTicketLines;
    final l$tags = tags;
    final l$extendedProperties = extendedProperties;
    final l$active = active;
    final l$price = price;
    final l$provPrice = provPrice;
    final l$outwardTicketNo = outwardTicketNo;
    final l$currency = currency;
    final l$mediaAssets = mediaAssets;
    final l$inspectionMedia = inspectionMedia;
    final l$created = created;
    final l$acceptedConsignmentNote = acceptedConsignmentNote;
    final l$rejectedConsignmentNote = rejectedConsignmentNote;
    final l$paymentDeduction = paymentDeduction;
    final l$remittanceDetails = remittanceDetails;
    final l$isPayableAtEdge = isPayableAtEdge;
    final l$isPaymentAuthorizationRequired = isPaymentAuthorizationRequired;
    final l$metadata = metadata;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$yardId,
      l$yardCode,
      l$ticketNumber,
      l$ticketType,
      l$date,
      l$serviceType,
      l$ticketCategory,
      l$ticketStatus,
      l$contractId,
      l$defaultPaymentMethod,
      l$account,
      l$contract,
      l$transportDetails,
      Object.hashAll(l$deductions.map((v) => v)),
      l$haulageCharge,
      l$haulagePrice,
      l$haulier,
      Object.hashAll(l$lines.map((v) => v)),
      Object.hashAll(l$nonStockTicketLines.map((v) => v)),
      Object.hashAll(l$tags.map((v) => v)),
      l$extendedProperties,
      l$active,
      l$price,
      l$provPrice,
      l$outwardTicketNo,
      l$currency,
      Object.hashAll(l$mediaAssets.map((v) => v)),
      Object.hashAll(l$inspectionMedia.map((v) => v)),
      l$created,
      l$acceptedConsignmentNote,
      l$rejectedConsignmentNote,
      l$paymentDeduction,
      l$remittanceDetails,
      l$isPayableAtEdge,
      l$isPaymentAuthorizationRequired,
      l$metadata,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$ticketType = ticketType;
    final lOther$ticketType = other.ticketType;
    if (l$ticketType != lOther$ticketType) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (l$serviceType != lOther$serviceType) {
      return false;
    }
    final l$ticketCategory = ticketCategory;
    final lOther$ticketCategory = other.ticketCategory;
    if (l$ticketCategory != lOther$ticketCategory) {
      return false;
    }
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (l$ticketStatus != lOther$ticketStatus) {
      return false;
    }
    final l$contractId = contractId;
    final lOther$contractId = other.contractId;
    if (l$contractId != lOther$contractId) {
      return false;
    }
    final l$defaultPaymentMethod = defaultPaymentMethod;
    final lOther$defaultPaymentMethod = other.defaultPaymentMethod;
    if (l$defaultPaymentMethod != lOther$defaultPaymentMethod) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
      return false;
    }
    final l$contract = contract;
    final lOther$contract = other.contract;
    if (l$contract != lOther$contract) {
      return false;
    }
    final l$transportDetails = transportDetails;
    final lOther$transportDetails = other.transportDetails;
    if (l$transportDetails != lOther$transportDetails) {
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
    final l$haulageCharge = haulageCharge;
    final lOther$haulageCharge = other.haulageCharge;
    if (l$haulageCharge != lOther$haulageCharge) {
      return false;
    }
    final l$haulagePrice = haulagePrice;
    final lOther$haulagePrice = other.haulagePrice;
    if (l$haulagePrice != lOther$haulagePrice) {
      return false;
    }
    final l$haulier = haulier;
    final lOther$haulier = other.haulier;
    if (l$haulier != lOther$haulier) {
      return false;
    }
    final l$lines = lines;
    final lOther$lines = other.lines;
    if (l$lines.length != lOther$lines.length) {
      return false;
    }
    for (int i = 0; i < l$lines.length; i++) {
      final l$lines$entry = l$lines[i];
      final lOther$lines$entry = lOther$lines[i];
      if (l$lines$entry != lOther$lines$entry) {
        return false;
      }
    }
    final l$nonStockTicketLines = nonStockTicketLines;
    final lOther$nonStockTicketLines = other.nonStockTicketLines;
    if (l$nonStockTicketLines.length != lOther$nonStockTicketLines.length) {
      return false;
    }
    for (int i = 0; i < l$nonStockTicketLines.length; i++) {
      final l$nonStockTicketLines$entry = l$nonStockTicketLines[i];
      final lOther$nonStockTicketLines$entry = lOther$nonStockTicketLines[i];
      if (l$nonStockTicketLines$entry != lOther$nonStockTicketLines$entry) {
        return false;
      }
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    final l$extendedProperties = extendedProperties;
    final lOther$extendedProperties = other.extendedProperties;
    if (l$extendedProperties != lOther$extendedProperties) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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
    final l$outwardTicketNo = outwardTicketNo;
    final lOther$outwardTicketNo = other.outwardTicketNo;
    if (l$outwardTicketNo != lOther$outwardTicketNo) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
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
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$acceptedConsignmentNote = acceptedConsignmentNote;
    final lOther$acceptedConsignmentNote = other.acceptedConsignmentNote;
    if (l$acceptedConsignmentNote != lOther$acceptedConsignmentNote) {
      return false;
    }
    final l$rejectedConsignmentNote = rejectedConsignmentNote;
    final lOther$rejectedConsignmentNote = other.rejectedConsignmentNote;
    if (l$rejectedConsignmentNote != lOther$rejectedConsignmentNote) {
      return false;
    }
    final l$paymentDeduction = paymentDeduction;
    final lOther$paymentDeduction = other.paymentDeduction;
    if (l$paymentDeduction != lOther$paymentDeduction) {
      return false;
    }
    final l$remittanceDetails = remittanceDetails;
    final lOther$remittanceDetails = other.remittanceDetails;
    if (l$remittanceDetails != lOther$remittanceDetails) {
      return false;
    }
    final l$isPayableAtEdge = isPayableAtEdge;
    final lOther$isPayableAtEdge = other.isPayableAtEdge;
    if (l$isPayableAtEdge != lOther$isPayableAtEdge) {
      return false;
    }
    final l$isPaymentAuthorizationRequired = isPaymentAuthorizationRequired;
    final lOther$isPaymentAuthorizationRequired =
        other.isPaymentAuthorizationRequired;
    if (l$isPaymentAuthorizationRequired !=
        lOther$isPaymentAuthorizationRequired) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (l$metadata != lOther$metadata) {
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

extension UtilityExtension$Fragment$TicketFields on Fragment$TicketFields {
  CopyWith$Fragment$TicketFields<Fragment$TicketFields> get copyWith =>
      CopyWith$Fragment$TicketFields(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketFields<TRes> {
  factory CopyWith$Fragment$TicketFields(
    Fragment$TicketFields instance,
    TRes Function(Fragment$TicketFields) then,
  ) = _CopyWithImpl$Fragment$TicketFields;

  factory CopyWith$Fragment$TicketFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketFields;

  TRes call({
    String? id,
    String? yardId,
    String? yardCode,
    int? ticketNumber,
    Enum$TicketType? ticketType,
    DateTime? date,
    Enum$TicketServiceType? serviceType,
    Enum$TicketCategory? ticketCategory,
    Enum$TicketStatus? ticketStatus,
    String? contractId,
    Enum$PaymentMethod? defaultPaymentMethod,
    Fragment$TicketFields$account? account,
    Fragment$TicketFields$contract? contract,
    Fragment$TicketFields$transportDetails? transportDetails,
    List<Fragment$TicketFields$deductions>? deductions,
    Fragment$TicketFields$haulageCharge? haulageCharge,
    double? haulagePrice,
    Fragment$TicketAccountFields? haulier,
    List<Fragment$TicketLineFields>? lines,
    List<Fragment$NonStockTicketLineFields>? nonStockTicketLines,
    List<String>? tags,
    Map<String, dynamic>? extendedProperties,
    bool? active,
    double? price,
    double? provPrice,
    String? outwardTicketNo,
    String? currency,
    List<Fragment$MediaAssetFields>? mediaAssets,
    List<Fragment$TicketFields$inspectionMedia>? inspectionMedia,
    Fragment$TicketFields$created? created,
    Fragment$TicketFields$acceptedConsignmentNote? acceptedConsignmentNote,
    Fragment$TicketFields$rejectedConsignmentNote? rejectedConsignmentNote,
    Fragment$PaymentDeductionFields? paymentDeduction,
    Fragment$TicketFields$remittanceDetails? remittanceDetails,
    bool? isPayableAtEdge,
    bool? isPaymentAuthorizationRequired,
    Map<String, dynamic>? metadata,
    String? $__typename,
  });
  CopyWith$Fragment$TicketFields$account<TRes> get account;
  CopyWith$Fragment$TicketFields$contract<TRes> get contract;
  CopyWith$Fragment$TicketFields$transportDetails<TRes> get transportDetails;
  TRes deductions(
    Iterable<Fragment$TicketFields$deductions> Function(
      Iterable<
        CopyWith$Fragment$TicketFields$deductions<
          Fragment$TicketFields$deductions
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$TicketFields$haulageCharge<TRes> get haulageCharge;
  CopyWith$Fragment$TicketAccountFields<TRes> get haulier;
  TRes lines(
    Iterable<Fragment$TicketLineFields> Function(
      Iterable<CopyWith$Fragment$TicketLineFields<Fragment$TicketLineFields>>,
    )
    _fn,
  );
  TRes nonStockTicketLines(
    Iterable<Fragment$NonStockTicketLineFields> Function(
      Iterable<
        CopyWith$Fragment$NonStockTicketLineFields<
          Fragment$NonStockTicketLineFields
        >
      >,
    )
    _fn,
  );
  TRes mediaAssets(
    Iterable<Fragment$MediaAssetFields> Function(
      Iterable<CopyWith$Fragment$MediaAssetFields<Fragment$MediaAssetFields>>,
    )
    _fn,
  );
  TRes inspectionMedia(
    Iterable<Fragment$TicketFields$inspectionMedia> Function(
      Iterable<
        CopyWith$Fragment$TicketFields$inspectionMedia<
          Fragment$TicketFields$inspectionMedia
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$TicketFields$created<TRes> get created;
  CopyWith$Fragment$TicketFields$acceptedConsignmentNote<TRes>
  get acceptedConsignmentNote;
  CopyWith$Fragment$TicketFields$rejectedConsignmentNote<TRes>
  get rejectedConsignmentNote;
  CopyWith$Fragment$PaymentDeductionFields<TRes> get paymentDeduction;
  CopyWith$Fragment$TicketFields$remittanceDetails<TRes> get remittanceDetails;
}

class _CopyWithImpl$Fragment$TicketFields<TRes>
    implements CopyWith$Fragment$TicketFields<TRes> {
  _CopyWithImpl$Fragment$TicketFields(this._instance, this._then);

  final Fragment$TicketFields _instance;

  final TRes Function(Fragment$TicketFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? yardId = _undefined,
    Object? yardCode = _undefined,
    Object? ticketNumber = _undefined,
    Object? ticketType = _undefined,
    Object? date = _undefined,
    Object? serviceType = _undefined,
    Object? ticketCategory = _undefined,
    Object? ticketStatus = _undefined,
    Object? contractId = _undefined,
    Object? defaultPaymentMethod = _undefined,
    Object? account = _undefined,
    Object? contract = _undefined,
    Object? transportDetails = _undefined,
    Object? deductions = _undefined,
    Object? haulageCharge = _undefined,
    Object? haulagePrice = _undefined,
    Object? haulier = _undefined,
    Object? lines = _undefined,
    Object? nonStockTicketLines = _undefined,
    Object? tags = _undefined,
    Object? extendedProperties = _undefined,
    Object? active = _undefined,
    Object? price = _undefined,
    Object? provPrice = _undefined,
    Object? outwardTicketNo = _undefined,
    Object? currency = _undefined,
    Object? mediaAssets = _undefined,
    Object? inspectionMedia = _undefined,
    Object? created = _undefined,
    Object? acceptedConsignmentNote = _undefined,
    Object? rejectedConsignmentNote = _undefined,
    Object? paymentDeduction = _undefined,
    Object? remittanceDetails = _undefined,
    Object? isPayableAtEdge = _undefined,
    Object? isPaymentAuthorizationRequired = _undefined,
    Object? metadata = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      yardId: yardId == _undefined || yardId == null
          ? _instance.yardId
          : (yardId as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      ticketNumber: ticketNumber == _undefined || ticketNumber == null
          ? _instance.ticketNumber
          : (ticketNumber as int),
      ticketType: ticketType == _undefined || ticketType == null
          ? _instance.ticketType
          : (ticketType as Enum$TicketType),
      date: date == _undefined || date == null
          ? _instance.date
          : (date as DateTime),
      serviceType: serviceType == _undefined || serviceType == null
          ? _instance.serviceType
          : (serviceType as Enum$TicketServiceType),
      ticketCategory: ticketCategory == _undefined || ticketCategory == null
          ? _instance.ticketCategory
          : (ticketCategory as Enum$TicketCategory),
      ticketStatus: ticketStatus == _undefined || ticketStatus == null
          ? _instance.ticketStatus
          : (ticketStatus as Enum$TicketStatus),
      contractId: contractId == _undefined
          ? _instance.contractId
          : (contractId as String?),
      defaultPaymentMethod:
          defaultPaymentMethod == _undefined || defaultPaymentMethod == null
          ? _instance.defaultPaymentMethod
          : (defaultPaymentMethod as Enum$PaymentMethod),
      account: account == _undefined || account == null
          ? _instance.account
          : (account as Fragment$TicketFields$account),
      contract: contract == _undefined
          ? _instance.contract
          : (contract as Fragment$TicketFields$contract?),
      transportDetails:
          transportDetails == _undefined || transportDetails == null
          ? _instance.transportDetails
          : (transportDetails as Fragment$TicketFields$transportDetails),
      deductions: deductions == _undefined || deductions == null
          ? _instance.deductions
          : (deductions as List<Fragment$TicketFields$deductions>),
      haulageCharge: haulageCharge == _undefined
          ? _instance.haulageCharge
          : (haulageCharge as Fragment$TicketFields$haulageCharge?),
      haulagePrice: haulagePrice == _undefined || haulagePrice == null
          ? _instance.haulagePrice
          : (haulagePrice as double),
      haulier: haulier == _undefined
          ? _instance.haulier
          : (haulier as Fragment$TicketAccountFields?),
      lines: lines == _undefined || lines == null
          ? _instance.lines
          : (lines as List<Fragment$TicketLineFields>),
      nonStockTicketLines:
          nonStockTicketLines == _undefined || nonStockTicketLines == null
          ? _instance.nonStockTicketLines
          : (nonStockTicketLines as List<Fragment$NonStockTicketLineFields>),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<String>),
      extendedProperties: extendedProperties == _undefined
          ? _instance.extendedProperties
          : (extendedProperties as Map<String, dynamic>?),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      price: price == _undefined || price == null
          ? _instance.price
          : (price as double),
      provPrice: provPrice == _undefined || provPrice == null
          ? _instance.provPrice
          : (provPrice as double),
      outwardTicketNo: outwardTicketNo == _undefined
          ? _instance.outwardTicketNo
          : (outwardTicketNo as String?),
      currency: currency == _undefined
          ? _instance.currency
          : (currency as String?),
      mediaAssets: mediaAssets == _undefined || mediaAssets == null
          ? _instance.mediaAssets
          : (mediaAssets as List<Fragment$MediaAssetFields>),
      inspectionMedia: inspectionMedia == _undefined || inspectionMedia == null
          ? _instance.inspectionMedia
          : (inspectionMedia as List<Fragment$TicketFields$inspectionMedia>),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$TicketFields$created),
      acceptedConsignmentNote: acceptedConsignmentNote == _undefined
          ? _instance.acceptedConsignmentNote
          : (acceptedConsignmentNote
                as Fragment$TicketFields$acceptedConsignmentNote?),
      rejectedConsignmentNote: rejectedConsignmentNote == _undefined
          ? _instance.rejectedConsignmentNote
          : (rejectedConsignmentNote
                as Fragment$TicketFields$rejectedConsignmentNote?),
      paymentDeduction: paymentDeduction == _undefined
          ? _instance.paymentDeduction
          : (paymentDeduction as Fragment$PaymentDeductionFields?),
      remittanceDetails: remittanceDetails == _undefined
          ? _instance.remittanceDetails
          : (remittanceDetails as Fragment$TicketFields$remittanceDetails?),
      isPayableAtEdge: isPayableAtEdge == _undefined || isPayableAtEdge == null
          ? _instance.isPayableAtEdge
          : (isPayableAtEdge as bool),
      isPaymentAuthorizationRequired:
          isPaymentAuthorizationRequired == _undefined ||
              isPaymentAuthorizationRequired == null
          ? _instance.isPaymentAuthorizationRequired
          : (isPaymentAuthorizationRequired as bool),
      metadata: metadata == _undefined || metadata == null
          ? _instance.metadata
          : (metadata as Map<String, dynamic>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$TicketFields$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Fragment$TicketFields$account(
      local$account,
      (e) => call(account: e),
    );
  }

  CopyWith$Fragment$TicketFields$contract<TRes> get contract {
    final local$contract = _instance.contract;
    return local$contract == null
        ? CopyWith$Fragment$TicketFields$contract.stub(_then(_instance))
        : CopyWith$Fragment$TicketFields$contract(
            local$contract,
            (e) => call(contract: e),
          );
  }

  CopyWith$Fragment$TicketFields$transportDetails<TRes> get transportDetails {
    final local$transportDetails = _instance.transportDetails;
    return CopyWith$Fragment$TicketFields$transportDetails(
      local$transportDetails,
      (e) => call(transportDetails: e),
    );
  }

  TRes deductions(
    Iterable<Fragment$TicketFields$deductions> Function(
      Iterable<
        CopyWith$Fragment$TicketFields$deductions<
          Fragment$TicketFields$deductions
        >
      >,
    )
    _fn,
  ) => call(
    deductions: _fn(
      _instance.deductions.map(
        (e) => CopyWith$Fragment$TicketFields$deductions(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Fragment$TicketFields$haulageCharge<TRes> get haulageCharge {
    final local$haulageCharge = _instance.haulageCharge;
    return local$haulageCharge == null
        ? CopyWith$Fragment$TicketFields$haulageCharge.stub(_then(_instance))
        : CopyWith$Fragment$TicketFields$haulageCharge(
            local$haulageCharge,
            (e) => call(haulageCharge: e),
          );
  }

  CopyWith$Fragment$TicketAccountFields<TRes> get haulier {
    final local$haulier = _instance.haulier;
    return local$haulier == null
        ? CopyWith$Fragment$TicketAccountFields.stub(_then(_instance))
        : CopyWith$Fragment$TicketAccountFields(
            local$haulier,
            (e) => call(haulier: e),
          );
  }

  TRes lines(
    Iterable<Fragment$TicketLineFields> Function(
      Iterable<CopyWith$Fragment$TicketLineFields<Fragment$TicketLineFields>>,
    )
    _fn,
  ) => call(
    lines: _fn(
      _instance.lines.map(
        (e) => CopyWith$Fragment$TicketLineFields(e, (i) => i),
      ),
    ).toList(),
  );

  TRes nonStockTicketLines(
    Iterable<Fragment$NonStockTicketLineFields> Function(
      Iterable<
        CopyWith$Fragment$NonStockTicketLineFields<
          Fragment$NonStockTicketLineFields
        >
      >,
    )
    _fn,
  ) => call(
    nonStockTicketLines: _fn(
      _instance.nonStockTicketLines.map(
        (e) => CopyWith$Fragment$NonStockTicketLineFields(e, (i) => i),
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

  TRes inspectionMedia(
    Iterable<Fragment$TicketFields$inspectionMedia> Function(
      Iterable<
        CopyWith$Fragment$TicketFields$inspectionMedia<
          Fragment$TicketFields$inspectionMedia
        >
      >,
    )
    _fn,
  ) => call(
    inspectionMedia: _fn(
      _instance.inspectionMedia.map(
        (e) => CopyWith$Fragment$TicketFields$inspectionMedia(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Fragment$TicketFields$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$TicketFields$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Fragment$TicketFields$acceptedConsignmentNote<TRes>
  get acceptedConsignmentNote {
    final local$acceptedConsignmentNote = _instance.acceptedConsignmentNote;
    return local$acceptedConsignmentNote == null
        ? CopyWith$Fragment$TicketFields$acceptedConsignmentNote.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$TicketFields$acceptedConsignmentNote(
            local$acceptedConsignmentNote,
            (e) => call(acceptedConsignmentNote: e),
          );
  }

  CopyWith$Fragment$TicketFields$rejectedConsignmentNote<TRes>
  get rejectedConsignmentNote {
    final local$rejectedConsignmentNote = _instance.rejectedConsignmentNote;
    return local$rejectedConsignmentNote == null
        ? CopyWith$Fragment$TicketFields$rejectedConsignmentNote.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$TicketFields$rejectedConsignmentNote(
            local$rejectedConsignmentNote,
            (e) => call(rejectedConsignmentNote: e),
          );
  }

  CopyWith$Fragment$PaymentDeductionFields<TRes> get paymentDeduction {
    final local$paymentDeduction = _instance.paymentDeduction;
    return local$paymentDeduction == null
        ? CopyWith$Fragment$PaymentDeductionFields.stub(_then(_instance))
        : CopyWith$Fragment$PaymentDeductionFields(
            local$paymentDeduction,
            (e) => call(paymentDeduction: e),
          );
  }

  CopyWith$Fragment$TicketFields$remittanceDetails<TRes> get remittanceDetails {
    final local$remittanceDetails = _instance.remittanceDetails;
    return local$remittanceDetails == null
        ? CopyWith$Fragment$TicketFields$remittanceDetails.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$TicketFields$remittanceDetails(
            local$remittanceDetails,
            (e) => call(remittanceDetails: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$TicketFields<TRes>
    implements CopyWith$Fragment$TicketFields<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields(this._res);

  TRes _res;

  call({
    String? id,
    String? yardId,
    String? yardCode,
    int? ticketNumber,
    Enum$TicketType? ticketType,
    DateTime? date,
    Enum$TicketServiceType? serviceType,
    Enum$TicketCategory? ticketCategory,
    Enum$TicketStatus? ticketStatus,
    String? contractId,
    Enum$PaymentMethod? defaultPaymentMethod,
    Fragment$TicketFields$account? account,
    Fragment$TicketFields$contract? contract,
    Fragment$TicketFields$transportDetails? transportDetails,
    List<Fragment$TicketFields$deductions>? deductions,
    Fragment$TicketFields$haulageCharge? haulageCharge,
    double? haulagePrice,
    Fragment$TicketAccountFields? haulier,
    List<Fragment$TicketLineFields>? lines,
    List<Fragment$NonStockTicketLineFields>? nonStockTicketLines,
    List<String>? tags,
    Map<String, dynamic>? extendedProperties,
    bool? active,
    double? price,
    double? provPrice,
    String? outwardTicketNo,
    String? currency,
    List<Fragment$MediaAssetFields>? mediaAssets,
    List<Fragment$TicketFields$inspectionMedia>? inspectionMedia,
    Fragment$TicketFields$created? created,
    Fragment$TicketFields$acceptedConsignmentNote? acceptedConsignmentNote,
    Fragment$TicketFields$rejectedConsignmentNote? rejectedConsignmentNote,
    Fragment$PaymentDeductionFields? paymentDeduction,
    Fragment$TicketFields$remittanceDetails? remittanceDetails,
    bool? isPayableAtEdge,
    bool? isPaymentAuthorizationRequired,
    Map<String, dynamic>? metadata,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$TicketFields$account<TRes> get account =>
      CopyWith$Fragment$TicketFields$account.stub(_res);

  CopyWith$Fragment$TicketFields$contract<TRes> get contract =>
      CopyWith$Fragment$TicketFields$contract.stub(_res);

  CopyWith$Fragment$TicketFields$transportDetails<TRes> get transportDetails =>
      CopyWith$Fragment$TicketFields$transportDetails.stub(_res);

  deductions(_fn) => _res;

  CopyWith$Fragment$TicketFields$haulageCharge<TRes> get haulageCharge =>
      CopyWith$Fragment$TicketFields$haulageCharge.stub(_res);

  CopyWith$Fragment$TicketAccountFields<TRes> get haulier =>
      CopyWith$Fragment$TicketAccountFields.stub(_res);

  lines(_fn) => _res;

  nonStockTicketLines(_fn) => _res;

  mediaAssets(_fn) => _res;

  inspectionMedia(_fn) => _res;

  CopyWith$Fragment$TicketFields$created<TRes> get created =>
      CopyWith$Fragment$TicketFields$created.stub(_res);

  CopyWith$Fragment$TicketFields$acceptedConsignmentNote<TRes>
  get acceptedConsignmentNote =>
      CopyWith$Fragment$TicketFields$acceptedConsignmentNote.stub(_res);

  CopyWith$Fragment$TicketFields$rejectedConsignmentNote<TRes>
  get rejectedConsignmentNote =>
      CopyWith$Fragment$TicketFields$rejectedConsignmentNote.stub(_res);

  CopyWith$Fragment$PaymentDeductionFields<TRes> get paymentDeduction =>
      CopyWith$Fragment$PaymentDeductionFields.stub(_res);

  CopyWith$Fragment$TicketFields$remittanceDetails<TRes>
  get remittanceDetails =>
      CopyWith$Fragment$TicketFields$remittanceDetails.stub(_res);
}

const fragmentDefinitionTicketFields = FragmentDefinitionNode(
  name: NameNode(value: 'TicketFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Ticket'), isNonNull: false),
  ),
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
        name: NameNode(value: 'yardId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'yardCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ticketNumber'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ticketType'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'date'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'serviceType'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ticketCategory'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ticketStatus'),
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
        name: NameNode(value: 'defaultPaymentMethod'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'account'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'TicketAccountFields'),
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
        name: NameNode(value: 'contract'),
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
              name: NameNode(value: 'accountId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'internalReference'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'customerReference'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'contractOrderBookTypeName'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'customerReference'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'internalReference'),
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
        name: NameNode(value: 'transportDetails'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'transportType'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'jobNumber'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'vehicleReg'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'deliveryNote'),
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
        name: NameNode(value: 'deductions'),
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
        name: NameNode(value: 'haulageCharge'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'provRate'),
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
              name: NameNode(value: 'confRate'),
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
              name: NameNode(value: 'provValue'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'confValue'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'charge'),
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
        name: NameNode(value: 'haulagePrice'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'haulier'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'TicketAccountFields'),
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
        name: NameNode(value: 'lines'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'TicketLineFields'),
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
        name: NameNode(value: 'nonStockTicketLines'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'NonStockTicketLineFields'),
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
        name: NameNode(value: 'tags'),
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
        name: NameNode(value: 'active'),
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
        name: NameNode(value: 'yardCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ticketNumber'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'outwardTicketNo'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'currency'),
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
        name: NameNode(value: 'account'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'accountNumber'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'name'),
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
        name: NameNode(value: 'created'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'at'),
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
              name: NameNode(value: 'userInfoId'),
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
        name: NameNode(value: 'acceptedConsignmentNote'),
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
              name: NameNode(value: 'mediaUrl'),
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
                    name: NameNode(value: 'at'),
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
                    name: NameNode(value: 'userInfoId'),
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
                    name: NameNode(value: 'at'),
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
                    name: NameNode(value: 'userInfoId'),
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
        name: NameNode(value: 'rejectedConsignmentNote'),
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
              name: NameNode(value: 'mediaUrl'),
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
                    name: NameNode(value: 'at'),
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
                    name: NameNode(value: 'userInfoId'),
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
                    name: NameNode(value: 'at'),
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
                    name: NameNode(value: 'userInfoId'),
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
        name: NameNode(value: 'paymentDeduction'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'PaymentDeductionFields'),
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
        name: NameNode(value: 'remittanceDetails'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'mediaUrl'),
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
                    name: NameNode(value: 'at'),
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
                    name: NameNode(value: 'userInfoId'),
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
                    name: NameNode(value: 'at'),
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
                    name: NameNode(value: 'userInfoId'),
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
        name: NameNode(value: 'isPayableAtEdge'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isPaymentAuthorizationRequired'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'metadata'),
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
const documentNodeFragmentTicketFields = DocumentNode(
  definitions: [
    fragmentDefinitionTicketFields,
    fragmentDefinitionTicketAccountFields,
    fragmentDefinitionAccountDetails,
    fragmentDefinitionUomValueFields,
    fragmentDefinitionTicketLineFields,
    fragmentDefinitionDeductionFields,
    fragmentDefinitionMediaAssetFields,
    fragmentDefinitionNonStockTicketLineFields,
    fragmentDefinitionPaymentDeductionFields,
    fragmentDefinitionEncashmentValueFields,
    fragmentDefinitionPaymentDeductionItemFields,
    fragmentDefinitionAdvanceFields,
  ],
);

class Fragment$TicketFields$account implements Fragment$TicketAccountFields {
  Fragment$TicketFields$account({
    this.details,
    required this.accountId,
    required this.accountNumber,
    required this.name,
    this.locationId,
    this.locationName,
    required this.address,
    this.sicCode,
    this.$__typename = 'TicketAccount',
  });

  factory Fragment$TicketFields$account.fromJson(Map<String, dynamic> json) {
    final l$details = json['details'];
    final l$accountId = json['accountId'];
    final l$accountNumber = json['accountNumber'];
    final l$name = json['name'];
    final l$locationId = json['locationId'];
    final l$locationName = json['locationName'];
    final l$address = json['address'];
    final l$sicCode = json['sicCode'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$account(
      details: l$details == null
          ? null
          : Fragment$AccountDetails.fromJson(
              (l$details as Map<String, dynamic>),
            ),
      accountId: (l$accountId as String),
      accountNumber: (l$accountNumber as String),
      name: (l$name as String),
      locationId: (l$locationId as String?),
      locationName: (l$locationName as String?),
      address: Fragment$TicketFields$account$address.fromJson(
        (l$address as Map<String, dynamic>),
      ),
      sicCode: (l$sicCode as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$AccountDetails? details;

  final String accountId;

  final String accountNumber;

  final String name;

  final String? locationId;

  final String? locationName;

  final Fragment$TicketFields$account$address address;

  final int? sicCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$details = details;
    _resultData['details'] = l$details?.toJson();
    final l$accountId = accountId;
    _resultData['accountId'] = l$accountId;
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$locationName = locationName;
    _resultData['locationName'] = l$locationName;
    final l$address = address;
    _resultData['address'] = l$address.toJson();
    final l$sicCode = sicCode;
    _resultData['sicCode'] = l$sicCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$details = details;
    final l$accountId = accountId;
    final l$accountNumber = accountNumber;
    final l$name = name;
    final l$locationId = locationId;
    final l$locationName = locationName;
    final l$address = address;
    final l$sicCode = sicCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$details,
      l$accountId,
      l$accountNumber,
      l$name,
      l$locationId,
      l$locationName,
      l$address,
      l$sicCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$account ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$locationName = locationName;
    final lOther$locationName = other.locationName;
    if (l$locationName != lOther$locationName) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$sicCode = sicCode;
    final lOther$sicCode = other.sicCode;
    if (l$sicCode != lOther$sicCode) {
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

extension UtilityExtension$Fragment$TicketFields$account
    on Fragment$TicketFields$account {
  CopyWith$Fragment$TicketFields$account<Fragment$TicketFields$account>
  get copyWith => CopyWith$Fragment$TicketFields$account(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketFields$account<TRes> {
  factory CopyWith$Fragment$TicketFields$account(
    Fragment$TicketFields$account instance,
    TRes Function(Fragment$TicketFields$account) then,
  ) = _CopyWithImpl$Fragment$TicketFields$account;

  factory CopyWith$Fragment$TicketFields$account.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketFields$account;

  TRes call({
    Fragment$AccountDetails? details,
    String? accountId,
    String? accountNumber,
    String? name,
    String? locationId,
    String? locationName,
    Fragment$TicketFields$account$address? address,
    int? sicCode,
    String? $__typename,
  });
  CopyWith$Fragment$AccountDetails<TRes> get details;
  CopyWith$Fragment$TicketFields$account$address<TRes> get address;
}

class _CopyWithImpl$Fragment$TicketFields$account<TRes>
    implements CopyWith$Fragment$TicketFields$account<TRes> {
  _CopyWithImpl$Fragment$TicketFields$account(this._instance, this._then);

  final Fragment$TicketFields$account _instance;

  final TRes Function(Fragment$TicketFields$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? details = _undefined,
    Object? accountId = _undefined,
    Object? accountNumber = _undefined,
    Object? name = _undefined,
    Object? locationId = _undefined,
    Object? locationName = _undefined,
    Object? address = _undefined,
    Object? sicCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$account(
      details: details == _undefined
          ? _instance.details
          : (details as Fragment$AccountDetails?),
      accountId: accountId == _undefined || accountId == null
          ? _instance.accountId
          : (accountId as String),
      accountNumber: accountNumber == _undefined || accountNumber == null
          ? _instance.accountNumber
          : (accountNumber as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      locationId: locationId == _undefined
          ? _instance.locationId
          : (locationId as String?),
      locationName: locationName == _undefined
          ? _instance.locationName
          : (locationName as String?),
      address: address == _undefined || address == null
          ? _instance.address
          : (address as Fragment$TicketFields$account$address),
      sicCode: sicCode == _undefined ? _instance.sicCode : (sicCode as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AccountDetails<TRes> get details {
    final local$details = _instance.details;
    return local$details == null
        ? CopyWith$Fragment$AccountDetails.stub(_then(_instance))
        : CopyWith$Fragment$AccountDetails(
            local$details,
            (e) => call(details: e),
          );
  }

  CopyWith$Fragment$TicketFields$account$address<TRes> get address {
    final local$address = _instance.address;
    return CopyWith$Fragment$TicketFields$account$address(
      local$address,
      (e) => call(address: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$TicketFields$account<TRes>
    implements CopyWith$Fragment$TicketFields$account<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$account(this._res);

  TRes _res;

  call({
    Fragment$AccountDetails? details,
    String? accountId,
    String? accountNumber,
    String? name,
    String? locationId,
    String? locationName,
    Fragment$TicketFields$account$address? address,
    int? sicCode,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$AccountDetails<TRes> get details =>
      CopyWith$Fragment$AccountDetails.stub(_res);

  CopyWith$Fragment$TicketFields$account$address<TRes> get address =>
      CopyWith$Fragment$TicketFields$account$address.stub(_res);
}

class Fragment$TicketFields$account$address
    implements Fragment$TicketAccountFields$address {
  Fragment$TicketFields$account$address({
    required this.address1,
    required this.address2,
    required this.address3,
    required this.address4,
    required this.address5,
    required this.address6,
    required this.postCode,
    required this.what3Words,
    required this.countryCode,
    this.geoLocation,
    this.$__typename = 'Address',
  });

  factory Fragment$TicketFields$account$address.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$address4 = json['address4'];
    final l$address5 = json['address5'];
    final l$address6 = json['address6'];
    final l$postCode = json['postCode'];
    final l$what3Words = json['what3Words'];
    final l$countryCode = json['countryCode'];
    final l$geoLocation = json['geoLocation'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$account$address(
      address1: (l$address1 as String),
      address2: (l$address2 as String),
      address3: (l$address3 as String),
      address4: (l$address4 as String),
      address5: (l$address5 as String),
      address6: (l$address6 as String),
      postCode: (l$postCode as String),
      what3Words: (l$what3Words as String),
      countryCode: (l$countryCode as String),
      geoLocation: l$geoLocation == null
          ? null
          : Fragment$TicketFields$account$address$geoLocation.fromJson(
              (l$geoLocation as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String address1;

  final String address2;

  final String address3;

  final String address4;

  final String address5;

  final String address6;

  final String postCode;

  final String what3Words;

  final String countryCode;

  final Fragment$TicketFields$account$address$geoLocation? geoLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address1 = address1;
    _resultData['address1'] = l$address1;
    final l$address2 = address2;
    _resultData['address2'] = l$address2;
    final l$address3 = address3;
    _resultData['address3'] = l$address3;
    final l$address4 = address4;
    _resultData['address4'] = l$address4;
    final l$address5 = address5;
    _resultData['address5'] = l$address5;
    final l$address6 = address6;
    _resultData['address6'] = l$address6;
    final l$postCode = postCode;
    _resultData['postCode'] = l$postCode;
    final l$what3Words = what3Words;
    _resultData['what3Words'] = l$what3Words;
    final l$countryCode = countryCode;
    _resultData['countryCode'] = l$countryCode;
    final l$geoLocation = geoLocation;
    _resultData['geoLocation'] = l$geoLocation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address1 = address1;
    final l$address2 = address2;
    final l$address3 = address3;
    final l$address4 = address4;
    final l$address5 = address5;
    final l$address6 = address6;
    final l$postCode = postCode;
    final l$what3Words = what3Words;
    final l$countryCode = countryCode;
    final l$geoLocation = geoLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address1,
      l$address2,
      l$address3,
      l$address4,
      l$address5,
      l$address6,
      l$postCode,
      l$what3Words,
      l$countryCode,
      l$geoLocation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$account$address ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address1 = address1;
    final lOther$address1 = other.address1;
    if (l$address1 != lOther$address1) {
      return false;
    }
    final l$address2 = address2;
    final lOther$address2 = other.address2;
    if (l$address2 != lOther$address2) {
      return false;
    }
    final l$address3 = address3;
    final lOther$address3 = other.address3;
    if (l$address3 != lOther$address3) {
      return false;
    }
    final l$address4 = address4;
    final lOther$address4 = other.address4;
    if (l$address4 != lOther$address4) {
      return false;
    }
    final l$address5 = address5;
    final lOther$address5 = other.address5;
    if (l$address5 != lOther$address5) {
      return false;
    }
    final l$address6 = address6;
    final lOther$address6 = other.address6;
    if (l$address6 != lOther$address6) {
      return false;
    }
    final l$postCode = postCode;
    final lOther$postCode = other.postCode;
    if (l$postCode != lOther$postCode) {
      return false;
    }
    final l$what3Words = what3Words;
    final lOther$what3Words = other.what3Words;
    if (l$what3Words != lOther$what3Words) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$geoLocation = geoLocation;
    final lOther$geoLocation = other.geoLocation;
    if (l$geoLocation != lOther$geoLocation) {
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

extension UtilityExtension$Fragment$TicketFields$account$address
    on Fragment$TicketFields$account$address {
  CopyWith$Fragment$TicketFields$account$address<
    Fragment$TicketFields$account$address
  >
  get copyWith =>
      CopyWith$Fragment$TicketFields$account$address(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketFields$account$address<TRes> {
  factory CopyWith$Fragment$TicketFields$account$address(
    Fragment$TicketFields$account$address instance,
    TRes Function(Fragment$TicketFields$account$address) then,
  ) = _CopyWithImpl$Fragment$TicketFields$account$address;

  factory CopyWith$Fragment$TicketFields$account$address.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketFields$account$address;

  TRes call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? what3Words,
    String? countryCode,
    Fragment$TicketFields$account$address$geoLocation? geoLocation,
    String? $__typename,
  });
  CopyWith$Fragment$TicketFields$account$address$geoLocation<TRes>
  get geoLocation;
}

class _CopyWithImpl$Fragment$TicketFields$account$address<TRes>
    implements CopyWith$Fragment$TicketFields$account$address<TRes> {
  _CopyWithImpl$Fragment$TicketFields$account$address(
    this._instance,
    this._then,
  );

  final Fragment$TicketFields$account$address _instance;

  final TRes Function(Fragment$TicketFields$account$address) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? address4 = _undefined,
    Object? address5 = _undefined,
    Object? address6 = _undefined,
    Object? postCode = _undefined,
    Object? what3Words = _undefined,
    Object? countryCode = _undefined,
    Object? geoLocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$account$address(
      address1: address1 == _undefined || address1 == null
          ? _instance.address1
          : (address1 as String),
      address2: address2 == _undefined || address2 == null
          ? _instance.address2
          : (address2 as String),
      address3: address3 == _undefined || address3 == null
          ? _instance.address3
          : (address3 as String),
      address4: address4 == _undefined || address4 == null
          ? _instance.address4
          : (address4 as String),
      address5: address5 == _undefined || address5 == null
          ? _instance.address5
          : (address5 as String),
      address6: address6 == _undefined || address6 == null
          ? _instance.address6
          : (address6 as String),
      postCode: postCode == _undefined || postCode == null
          ? _instance.postCode
          : (postCode as String),
      what3Words: what3Words == _undefined || what3Words == null
          ? _instance.what3Words
          : (what3Words as String),
      countryCode: countryCode == _undefined || countryCode == null
          ? _instance.countryCode
          : (countryCode as String),
      geoLocation: geoLocation == _undefined
          ? _instance.geoLocation
          : (geoLocation as Fragment$TicketFields$account$address$geoLocation?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$TicketFields$account$address$geoLocation<TRes>
  get geoLocation {
    final local$geoLocation = _instance.geoLocation;
    return local$geoLocation == null
        ? CopyWith$Fragment$TicketFields$account$address$geoLocation.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$TicketFields$account$address$geoLocation(
            local$geoLocation,
            (e) => call(geoLocation: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$TicketFields$account$address<TRes>
    implements CopyWith$Fragment$TicketFields$account$address<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$account$address(this._res);

  TRes _res;

  call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? what3Words,
    String? countryCode,
    Fragment$TicketFields$account$address$geoLocation? geoLocation,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$TicketFields$account$address$geoLocation<TRes>
  get geoLocation =>
      CopyWith$Fragment$TicketFields$account$address$geoLocation.stub(_res);
}

class Fragment$TicketFields$account$address$geoLocation
    implements Fragment$TicketAccountFields$address$geoLocation {
  Fragment$TicketFields$account$address$geoLocation({
    required this.longitude,
    required this.latitude,
    this.$__typename = 'LatLong',
  });

  factory Fragment$TicketFields$account$address$geoLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$longitude = json['longitude'];
    final l$latitude = json['latitude'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$account$address$geoLocation(
      longitude: (l$longitude as num).toDouble(),
      latitude: (l$latitude as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double longitude;

  final double latitude;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$longitude = longitude;
    final l$latitude = latitude;
    final l$$__typename = $__typename;
    return Object.hashAll([l$longitude, l$latitude, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$account$address$geoLocation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
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

extension UtilityExtension$Fragment$TicketFields$account$address$geoLocation
    on Fragment$TicketFields$account$address$geoLocation {
  CopyWith$Fragment$TicketFields$account$address$geoLocation<
    Fragment$TicketFields$account$address$geoLocation
  >
  get copyWith => CopyWith$Fragment$TicketFields$account$address$geoLocation(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$TicketFields$account$address$geoLocation<
  TRes
> {
  factory CopyWith$Fragment$TicketFields$account$address$geoLocation(
    Fragment$TicketFields$account$address$geoLocation instance,
    TRes Function(Fragment$TicketFields$account$address$geoLocation) then,
  ) = _CopyWithImpl$Fragment$TicketFields$account$address$geoLocation;

  factory CopyWith$Fragment$TicketFields$account$address$geoLocation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$TicketFields$account$address$geoLocation;

  TRes call({double? longitude, double? latitude, String? $__typename});
}

class _CopyWithImpl$Fragment$TicketFields$account$address$geoLocation<TRes>
    implements
        CopyWith$Fragment$TicketFields$account$address$geoLocation<TRes> {
  _CopyWithImpl$Fragment$TicketFields$account$address$geoLocation(
    this._instance,
    this._then,
  );

  final Fragment$TicketFields$account$address$geoLocation _instance;

  final TRes Function(Fragment$TicketFields$account$address$geoLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? longitude = _undefined,
    Object? latitude = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$account$address$geoLocation(
      longitude: longitude == _undefined || longitude == null
          ? _instance.longitude
          : (longitude as double),
      latitude: latitude == _undefined || latitude == null
          ? _instance.latitude
          : (latitude as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketFields$account$address$geoLocation<TRes>
    implements
        CopyWith$Fragment$TicketFields$account$address$geoLocation<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$account$address$geoLocation(
    this._res,
  );

  TRes _res;

  call({double? longitude, double? latitude, String? $__typename}) => _res;
}

class Fragment$TicketFields$contract {
  Fragment$TicketFields$contract({
    required this.id,
    required this.accountId,
    required this.internalReference,
    required this.customerReference,
    required this.contractOrderBookTypeName,
    this.$__typename = 'Contract',
  });

  factory Fragment$TicketFields$contract.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$accountId = json['accountId'];
    final l$internalReference = json['internalReference'];
    final l$customerReference = json['customerReference'];
    final l$contractOrderBookTypeName = json['contractOrderBookTypeName'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$contract(
      id: (l$id as String),
      accountId: (l$accountId as String),
      internalReference: (l$internalReference as String),
      customerReference: (l$customerReference as String),
      contractOrderBookTypeName: (l$contractOrderBookTypeName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String accountId;

  final String internalReference;

  final String customerReference;

  final String contractOrderBookTypeName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$accountId = accountId;
    _resultData['accountId'] = l$accountId;
    final l$internalReference = internalReference;
    _resultData['internalReference'] = l$internalReference;
    final l$customerReference = customerReference;
    _resultData['customerReference'] = l$customerReference;
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    _resultData['contractOrderBookTypeName'] = l$contractOrderBookTypeName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$accountId = accountId;
    final l$internalReference = internalReference;
    final l$customerReference = customerReference;
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$accountId,
      l$internalReference,
      l$customerReference,
      l$contractOrderBookTypeName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$contract ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$internalReference = internalReference;
    final lOther$internalReference = other.internalReference;
    if (l$internalReference != lOther$internalReference) {
      return false;
    }
    final l$customerReference = customerReference;
    final lOther$customerReference = other.customerReference;
    if (l$customerReference != lOther$customerReference) {
      return false;
    }
    final l$contractOrderBookTypeName = contractOrderBookTypeName;
    final lOther$contractOrderBookTypeName = other.contractOrderBookTypeName;
    if (l$contractOrderBookTypeName != lOther$contractOrderBookTypeName) {
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

extension UtilityExtension$Fragment$TicketFields$contract
    on Fragment$TicketFields$contract {
  CopyWith$Fragment$TicketFields$contract<Fragment$TicketFields$contract>
  get copyWith => CopyWith$Fragment$TicketFields$contract(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketFields$contract<TRes> {
  factory CopyWith$Fragment$TicketFields$contract(
    Fragment$TicketFields$contract instance,
    TRes Function(Fragment$TicketFields$contract) then,
  ) = _CopyWithImpl$Fragment$TicketFields$contract;

  factory CopyWith$Fragment$TicketFields$contract.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketFields$contract;

  TRes call({
    String? id,
    String? accountId,
    String? internalReference,
    String? customerReference,
    String? contractOrderBookTypeName,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketFields$contract<TRes>
    implements CopyWith$Fragment$TicketFields$contract<TRes> {
  _CopyWithImpl$Fragment$TicketFields$contract(this._instance, this._then);

  final Fragment$TicketFields$contract _instance;

  final TRes Function(Fragment$TicketFields$contract) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? accountId = _undefined,
    Object? internalReference = _undefined,
    Object? customerReference = _undefined,
    Object? contractOrderBookTypeName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$contract(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      accountId: accountId == _undefined || accountId == null
          ? _instance.accountId
          : (accountId as String),
      internalReference:
          internalReference == _undefined || internalReference == null
          ? _instance.internalReference
          : (internalReference as String),
      customerReference:
          customerReference == _undefined || customerReference == null
          ? _instance.customerReference
          : (customerReference as String),
      contractOrderBookTypeName:
          contractOrderBookTypeName == _undefined ||
              contractOrderBookTypeName == null
          ? _instance.contractOrderBookTypeName
          : (contractOrderBookTypeName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketFields$contract<TRes>
    implements CopyWith$Fragment$TicketFields$contract<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$contract(this._res);

  TRes _res;

  call({
    String? id,
    String? accountId,
    String? internalReference,
    String? customerReference,
    String? contractOrderBookTypeName,
    String? $__typename,
  }) => _res;
}

class Fragment$TicketFields$transportDetails {
  Fragment$TicketFields$transportDetails({
    required this.transportType,
    this.jobNumber,
    this.vehicleReg,
    this.deliveryNote,
    this.$__typename = 'TransportDetails',
  });

  factory Fragment$TicketFields$transportDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transportType = json['transportType'];
    final l$jobNumber = json['jobNumber'];
    final l$vehicleReg = json['vehicleReg'];
    final l$deliveryNote = json['deliveryNote'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$transportDetails(
      transportType: fromJson$Enum$TransportType((l$transportType as String)),
      jobNumber: (l$jobNumber as int?),
      vehicleReg: (l$vehicleReg as String?),
      deliveryNote: (l$deliveryNote as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$TransportType transportType;

  final int? jobNumber;

  final String? vehicleReg;

  final String? deliveryNote;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transportType = transportType;
    _resultData['transportType'] = toJson$Enum$TransportType(l$transportType);
    final l$jobNumber = jobNumber;
    _resultData['jobNumber'] = l$jobNumber;
    final l$vehicleReg = vehicleReg;
    _resultData['vehicleReg'] = l$vehicleReg;
    final l$deliveryNote = deliveryNote;
    _resultData['deliveryNote'] = l$deliveryNote;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transportType = transportType;
    final l$jobNumber = jobNumber;
    final l$vehicleReg = vehicleReg;
    final l$deliveryNote = deliveryNote;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transportType,
      l$jobNumber,
      l$vehicleReg,
      l$deliveryNote,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$transportDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transportType = transportType;
    final lOther$transportType = other.transportType;
    if (l$transportType != lOther$transportType) {
      return false;
    }
    final l$jobNumber = jobNumber;
    final lOther$jobNumber = other.jobNumber;
    if (l$jobNumber != lOther$jobNumber) {
      return false;
    }
    final l$vehicleReg = vehicleReg;
    final lOther$vehicleReg = other.vehicleReg;
    if (l$vehicleReg != lOther$vehicleReg) {
      return false;
    }
    final l$deliveryNote = deliveryNote;
    final lOther$deliveryNote = other.deliveryNote;
    if (l$deliveryNote != lOther$deliveryNote) {
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

extension UtilityExtension$Fragment$TicketFields$transportDetails
    on Fragment$TicketFields$transportDetails {
  CopyWith$Fragment$TicketFields$transportDetails<
    Fragment$TicketFields$transportDetails
  >
  get copyWith =>
      CopyWith$Fragment$TicketFields$transportDetails(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketFields$transportDetails<TRes> {
  factory CopyWith$Fragment$TicketFields$transportDetails(
    Fragment$TicketFields$transportDetails instance,
    TRes Function(Fragment$TicketFields$transportDetails) then,
  ) = _CopyWithImpl$Fragment$TicketFields$transportDetails;

  factory CopyWith$Fragment$TicketFields$transportDetails.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketFields$transportDetails;

  TRes call({
    Enum$TransportType? transportType,
    int? jobNumber,
    String? vehicleReg,
    String? deliveryNote,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketFields$transportDetails<TRes>
    implements CopyWith$Fragment$TicketFields$transportDetails<TRes> {
  _CopyWithImpl$Fragment$TicketFields$transportDetails(
    this._instance,
    this._then,
  );

  final Fragment$TicketFields$transportDetails _instance;

  final TRes Function(Fragment$TicketFields$transportDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transportType = _undefined,
    Object? jobNumber = _undefined,
    Object? vehicleReg = _undefined,
    Object? deliveryNote = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$transportDetails(
      transportType: transportType == _undefined || transportType == null
          ? _instance.transportType
          : (transportType as Enum$TransportType),
      jobNumber: jobNumber == _undefined
          ? _instance.jobNumber
          : (jobNumber as int?),
      vehicleReg: vehicleReg == _undefined
          ? _instance.vehicleReg
          : (vehicleReg as String?),
      deliveryNote: deliveryNote == _undefined
          ? _instance.deliveryNote
          : (deliveryNote as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketFields$transportDetails<TRes>
    implements CopyWith$Fragment$TicketFields$transportDetails<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$transportDetails(this._res);

  TRes _res;

  call({
    Enum$TransportType? transportType,
    int? jobNumber,
    String? vehicleReg,
    String? deliveryNote,
    String? $__typename,
  }) => _res;
}

class Fragment$TicketFields$deductions {
  Fragment$TicketFields$deductions({
    required this.typeId,
    this.value,
    this.$__typename = 'Deduction',
  });

  factory Fragment$TicketFields$deductions.fromJson(Map<String, dynamic> json) {
    final l$typeId = json['typeId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$deductions(
      typeId: (l$typeId as String),
      value: (l$value as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String typeId;

  final double? value;

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
    if (other is! Fragment$TicketFields$deductions ||
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

extension UtilityExtension$Fragment$TicketFields$deductions
    on Fragment$TicketFields$deductions {
  CopyWith$Fragment$TicketFields$deductions<Fragment$TicketFields$deductions>
  get copyWith => CopyWith$Fragment$TicketFields$deductions(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketFields$deductions<TRes> {
  factory CopyWith$Fragment$TicketFields$deductions(
    Fragment$TicketFields$deductions instance,
    TRes Function(Fragment$TicketFields$deductions) then,
  ) = _CopyWithImpl$Fragment$TicketFields$deductions;

  factory CopyWith$Fragment$TicketFields$deductions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketFields$deductions;

  TRes call({String? typeId, double? value, String? $__typename});
}

class _CopyWithImpl$Fragment$TicketFields$deductions<TRes>
    implements CopyWith$Fragment$TicketFields$deductions<TRes> {
  _CopyWithImpl$Fragment$TicketFields$deductions(this._instance, this._then);

  final Fragment$TicketFields$deductions _instance;

  final TRes Function(Fragment$TicketFields$deductions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? typeId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$deductions(
      typeId: typeId == _undefined || typeId == null
          ? _instance.typeId
          : (typeId as String),
      value: value == _undefined ? _instance.value : (value as double?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketFields$deductions<TRes>
    implements CopyWith$Fragment$TicketFields$deductions<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$deductions(this._res);

  TRes _res;

  call({String? typeId, double? value, String? $__typename}) => _res;
}

class Fragment$TicketFields$haulageCharge {
  Fragment$TicketFields$haulageCharge({
    required this.provRate,
    this.confRate,
    required this.provValue,
    this.confValue,
    this.charge,
    this.$__typename = 'HaulageCharge',
  });

  factory Fragment$TicketFields$haulageCharge.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$provRate = json['provRate'];
    final l$confRate = json['confRate'];
    final l$provValue = json['provValue'];
    final l$confValue = json['confValue'];
    final l$charge = json['charge'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$haulageCharge(
      provRate: Fragment$UomValueFields.fromJson(
        (l$provRate as Map<String, dynamic>),
      ),
      confRate: l$confRate == null
          ? null
          : Fragment$UomValueFields.fromJson(
              (l$confRate as Map<String, dynamic>),
            ),
      provValue: (l$provValue as num).toDouble(),
      confValue: (l$confValue as num?)?.toDouble(),
      charge: l$charge == null
          ? null
          : Fragment$UomValueFields.fromJson(
              (l$charge as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UomValueFields provRate;

  final Fragment$UomValueFields? confRate;

  final double provValue;

  final double? confValue;

  final Fragment$UomValueFields? charge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$provRate = provRate;
    _resultData['provRate'] = l$provRate.toJson();
    final l$confRate = confRate;
    _resultData['confRate'] = l$confRate?.toJson();
    final l$provValue = provValue;
    _resultData['provValue'] = l$provValue;
    final l$confValue = confValue;
    _resultData['confValue'] = l$confValue;
    final l$charge = charge;
    _resultData['charge'] = l$charge?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$provRate = provRate;
    final l$confRate = confRate;
    final l$provValue = provValue;
    final l$confValue = confValue;
    final l$charge = charge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$provRate,
      l$confRate,
      l$provValue,
      l$confValue,
      l$charge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$haulageCharge ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$provRate = provRate;
    final lOther$provRate = other.provRate;
    if (l$provRate != lOther$provRate) {
      return false;
    }
    final l$confRate = confRate;
    final lOther$confRate = other.confRate;
    if (l$confRate != lOther$confRate) {
      return false;
    }
    final l$provValue = provValue;
    final lOther$provValue = other.provValue;
    if (l$provValue != lOther$provValue) {
      return false;
    }
    final l$confValue = confValue;
    final lOther$confValue = other.confValue;
    if (l$confValue != lOther$confValue) {
      return false;
    }
    final l$charge = charge;
    final lOther$charge = other.charge;
    if (l$charge != lOther$charge) {
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

extension UtilityExtension$Fragment$TicketFields$haulageCharge
    on Fragment$TicketFields$haulageCharge {
  CopyWith$Fragment$TicketFields$haulageCharge<
    Fragment$TicketFields$haulageCharge
  >
  get copyWith => CopyWith$Fragment$TicketFields$haulageCharge(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketFields$haulageCharge<TRes> {
  factory CopyWith$Fragment$TicketFields$haulageCharge(
    Fragment$TicketFields$haulageCharge instance,
    TRes Function(Fragment$TicketFields$haulageCharge) then,
  ) = _CopyWithImpl$Fragment$TicketFields$haulageCharge;

  factory CopyWith$Fragment$TicketFields$haulageCharge.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketFields$haulageCharge;

  TRes call({
    Fragment$UomValueFields? provRate,
    Fragment$UomValueFields? confRate,
    double? provValue,
    double? confValue,
    Fragment$UomValueFields? charge,
    String? $__typename,
  });
  CopyWith$Fragment$UomValueFields<TRes> get provRate;
  CopyWith$Fragment$UomValueFields<TRes> get confRate;
  CopyWith$Fragment$UomValueFields<TRes> get charge;
}

class _CopyWithImpl$Fragment$TicketFields$haulageCharge<TRes>
    implements CopyWith$Fragment$TicketFields$haulageCharge<TRes> {
  _CopyWithImpl$Fragment$TicketFields$haulageCharge(this._instance, this._then);

  final Fragment$TicketFields$haulageCharge _instance;

  final TRes Function(Fragment$TicketFields$haulageCharge) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? provRate = _undefined,
    Object? confRate = _undefined,
    Object? provValue = _undefined,
    Object? confValue = _undefined,
    Object? charge = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$haulageCharge(
      provRate: provRate == _undefined || provRate == null
          ? _instance.provRate
          : (provRate as Fragment$UomValueFields),
      confRate: confRate == _undefined
          ? _instance.confRate
          : (confRate as Fragment$UomValueFields?),
      provValue: provValue == _undefined || provValue == null
          ? _instance.provValue
          : (provValue as double),
      confValue: confValue == _undefined
          ? _instance.confValue
          : (confValue as double?),
      charge: charge == _undefined
          ? _instance.charge
          : (charge as Fragment$UomValueFields?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$UomValueFields<TRes> get provRate {
    final local$provRate = _instance.provRate;
    return CopyWith$Fragment$UomValueFields(
      local$provRate,
      (e) => call(provRate: e),
    );
  }

  CopyWith$Fragment$UomValueFields<TRes> get confRate {
    final local$confRate = _instance.confRate;
    return local$confRate == null
        ? CopyWith$Fragment$UomValueFields.stub(_then(_instance))
        : CopyWith$Fragment$UomValueFields(
            local$confRate,
            (e) => call(confRate: e),
          );
  }

  CopyWith$Fragment$UomValueFields<TRes> get charge {
    final local$charge = _instance.charge;
    return local$charge == null
        ? CopyWith$Fragment$UomValueFields.stub(_then(_instance))
        : CopyWith$Fragment$UomValueFields(
            local$charge,
            (e) => call(charge: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$TicketFields$haulageCharge<TRes>
    implements CopyWith$Fragment$TicketFields$haulageCharge<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$haulageCharge(this._res);

  TRes _res;

  call({
    Fragment$UomValueFields? provRate,
    Fragment$UomValueFields? confRate,
    double? provValue,
    double? confValue,
    Fragment$UomValueFields? charge,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$UomValueFields<TRes> get provRate =>
      CopyWith$Fragment$UomValueFields.stub(_res);

  CopyWith$Fragment$UomValueFields<TRes> get confRate =>
      CopyWith$Fragment$UomValueFields.stub(_res);

  CopyWith$Fragment$UomValueFields<TRes> get charge =>
      CopyWith$Fragment$UomValueFields.stub(_res);
}

class Fragment$TicketFields$inspectionMedia {
  Fragment$TicketFields$inspectionMedia({
    required this.url,
    this.sasUrl,
    this.sasThumbnailUrl,
    this.$__typename = 'InspectionMedia',
  });

  factory Fragment$TicketFields$inspectionMedia.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$sasUrl = json['sasUrl'];
    final l$sasThumbnailUrl = json['sasThumbnailUrl'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$inspectionMedia(
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
    if (other is! Fragment$TicketFields$inspectionMedia ||
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

extension UtilityExtension$Fragment$TicketFields$inspectionMedia
    on Fragment$TicketFields$inspectionMedia {
  CopyWith$Fragment$TicketFields$inspectionMedia<
    Fragment$TicketFields$inspectionMedia
  >
  get copyWith =>
      CopyWith$Fragment$TicketFields$inspectionMedia(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketFields$inspectionMedia<TRes> {
  factory CopyWith$Fragment$TicketFields$inspectionMedia(
    Fragment$TicketFields$inspectionMedia instance,
    TRes Function(Fragment$TicketFields$inspectionMedia) then,
  ) = _CopyWithImpl$Fragment$TicketFields$inspectionMedia;

  factory CopyWith$Fragment$TicketFields$inspectionMedia.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketFields$inspectionMedia;

  TRes call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketFields$inspectionMedia<TRes>
    implements CopyWith$Fragment$TicketFields$inspectionMedia<TRes> {
  _CopyWithImpl$Fragment$TicketFields$inspectionMedia(
    this._instance,
    this._then,
  );

  final Fragment$TicketFields$inspectionMedia _instance;

  final TRes Function(Fragment$TicketFields$inspectionMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? sasUrl = _undefined,
    Object? sasThumbnailUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$inspectionMedia(
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

class _CopyWithStubImpl$Fragment$TicketFields$inspectionMedia<TRes>
    implements CopyWith$Fragment$TicketFields$inspectionMedia<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$inspectionMedia(this._res);

  TRes _res;

  call({
    String? url,
    String? sasUrl,
    String? sasThumbnailUrl,
    String? $__typename,
  }) => _res;
}

class Fragment$TicketFields$created {
  Fragment$TicketFields$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Fragment$TicketFields$created.fromJson(Map<String, dynamic> json) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Fragment$TicketFields$created
    on Fragment$TicketFields$created {
  CopyWith$Fragment$TicketFields$created<Fragment$TicketFields$created>
  get copyWith => CopyWith$Fragment$TicketFields$created(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketFields$created<TRes> {
  factory CopyWith$Fragment$TicketFields$created(
    Fragment$TicketFields$created instance,
    TRes Function(Fragment$TicketFields$created) then,
  ) = _CopyWithImpl$Fragment$TicketFields$created;

  factory CopyWith$Fragment$TicketFields$created.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketFields$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketFields$created<TRes>
    implements CopyWith$Fragment$TicketFields$created<TRes> {
  _CopyWithImpl$Fragment$TicketFields$created(this._instance, this._then);

  final Fragment$TicketFields$created _instance;

  final TRes Function(Fragment$TicketFields$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketFields$created<TRes>
    implements CopyWith$Fragment$TicketFields$created<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Fragment$TicketFields$acceptedConsignmentNote {
  Fragment$TicketFields$acceptedConsignmentNote({
    required this.code,
    this.mediaUrl,
    required this.created,
    required this.modified,
    this.$__typename = 'ConsignmentNote',
  });

  factory Fragment$TicketFields$acceptedConsignmentNote.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$mediaUrl = json['mediaUrl'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$acceptedConsignmentNote(
      code: (l$code as String),
      mediaUrl: (l$mediaUrl as String?),
      created: Fragment$TicketFields$acceptedConsignmentNote$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      modified: Fragment$TicketFields$acceptedConsignmentNote$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String? mediaUrl;

  final Fragment$TicketFields$acceptedConsignmentNote$created created;

  final Fragment$TicketFields$acceptedConsignmentNote$modified modified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$mediaUrl = mediaUrl;
    _resultData['mediaUrl'] = l$mediaUrl;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$mediaUrl = mediaUrl;
    final l$created = created;
    final l$modified = modified;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$mediaUrl,
      l$created,
      l$modified,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$acceptedConsignmentNote ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$mediaUrl = mediaUrl;
    final lOther$mediaUrl = other.mediaUrl;
    if (l$mediaUrl != lOther$mediaUrl) {
      return false;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketFields$acceptedConsignmentNote
    on Fragment$TicketFields$acceptedConsignmentNote {
  CopyWith$Fragment$TicketFields$acceptedConsignmentNote<
    Fragment$TicketFields$acceptedConsignmentNote
  >
  get copyWith =>
      CopyWith$Fragment$TicketFields$acceptedConsignmentNote(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketFields$acceptedConsignmentNote<TRes> {
  factory CopyWith$Fragment$TicketFields$acceptedConsignmentNote(
    Fragment$TicketFields$acceptedConsignmentNote instance,
    TRes Function(Fragment$TicketFields$acceptedConsignmentNote) then,
  ) = _CopyWithImpl$Fragment$TicketFields$acceptedConsignmentNote;

  factory CopyWith$Fragment$TicketFields$acceptedConsignmentNote.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$TicketFields$acceptedConsignmentNote;

  TRes call({
    String? code,
    String? mediaUrl,
    Fragment$TicketFields$acceptedConsignmentNote$created? created,
    Fragment$TicketFields$acceptedConsignmentNote$modified? modified,
    String? $__typename,
  });
  CopyWith$Fragment$TicketFields$acceptedConsignmentNote$created<TRes>
  get created;
  CopyWith$Fragment$TicketFields$acceptedConsignmentNote$modified<TRes>
  get modified;
}

class _CopyWithImpl$Fragment$TicketFields$acceptedConsignmentNote<TRes>
    implements CopyWith$Fragment$TicketFields$acceptedConsignmentNote<TRes> {
  _CopyWithImpl$Fragment$TicketFields$acceptedConsignmentNote(
    this._instance,
    this._then,
  );

  final Fragment$TicketFields$acceptedConsignmentNote _instance;

  final TRes Function(Fragment$TicketFields$acceptedConsignmentNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? mediaUrl = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$acceptedConsignmentNote(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      mediaUrl: mediaUrl == _undefined
          ? _instance.mediaUrl
          : (mediaUrl as String?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$TicketFields$acceptedConsignmentNote$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified
                as Fragment$TicketFields$acceptedConsignmentNote$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$TicketFields$acceptedConsignmentNote$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$TicketFields$acceptedConsignmentNote$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Fragment$TicketFields$acceptedConsignmentNote$modified<TRes>
  get modified {
    final local$modified = _instance.modified;
    return CopyWith$Fragment$TicketFields$acceptedConsignmentNote$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$TicketFields$acceptedConsignmentNote<TRes>
    implements CopyWith$Fragment$TicketFields$acceptedConsignmentNote<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$acceptedConsignmentNote(this._res);

  TRes _res;

  call({
    String? code,
    String? mediaUrl,
    Fragment$TicketFields$acceptedConsignmentNote$created? created,
    Fragment$TicketFields$acceptedConsignmentNote$modified? modified,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$TicketFields$acceptedConsignmentNote$created<TRes>
  get created =>
      CopyWith$Fragment$TicketFields$acceptedConsignmentNote$created.stub(_res);

  CopyWith$Fragment$TicketFields$acceptedConsignmentNote$modified<TRes>
  get modified =>
      CopyWith$Fragment$TicketFields$acceptedConsignmentNote$modified.stub(
        _res,
      );
}

class Fragment$TicketFields$acceptedConsignmentNote$created {
  Fragment$TicketFields$acceptedConsignmentNote$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Fragment$TicketFields$acceptedConsignmentNote$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$acceptedConsignmentNote$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$acceptedConsignmentNote$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Fragment$TicketFields$acceptedConsignmentNote$created
    on Fragment$TicketFields$acceptedConsignmentNote$created {
  CopyWith$Fragment$TicketFields$acceptedConsignmentNote$created<
    Fragment$TicketFields$acceptedConsignmentNote$created
  >
  get copyWith =>
      CopyWith$Fragment$TicketFields$acceptedConsignmentNote$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TicketFields$acceptedConsignmentNote$created<
  TRes
> {
  factory CopyWith$Fragment$TicketFields$acceptedConsignmentNote$created(
    Fragment$TicketFields$acceptedConsignmentNote$created instance,
    TRes Function(Fragment$TicketFields$acceptedConsignmentNote$created) then,
  ) = _CopyWithImpl$Fragment$TicketFields$acceptedConsignmentNote$created;

  factory CopyWith$Fragment$TicketFields$acceptedConsignmentNote$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$TicketFields$acceptedConsignmentNote$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketFields$acceptedConsignmentNote$created<TRes>
    implements
        CopyWith$Fragment$TicketFields$acceptedConsignmentNote$created<TRes> {
  _CopyWithImpl$Fragment$TicketFields$acceptedConsignmentNote$created(
    this._instance,
    this._then,
  );

  final Fragment$TicketFields$acceptedConsignmentNote$created _instance;

  final TRes Function(Fragment$TicketFields$acceptedConsignmentNote$created)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$acceptedConsignmentNote$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketFields$acceptedConsignmentNote$created<
  TRes
>
    implements
        CopyWith$Fragment$TicketFields$acceptedConsignmentNote$created<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$acceptedConsignmentNote$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Fragment$TicketFields$acceptedConsignmentNote$modified {
  Fragment$TicketFields$acceptedConsignmentNote$modified({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Modified',
  });

  factory Fragment$TicketFields$acceptedConsignmentNote$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$acceptedConsignmentNote$modified(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$acceptedConsignmentNote$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Fragment$TicketFields$acceptedConsignmentNote$modified
    on Fragment$TicketFields$acceptedConsignmentNote$modified {
  CopyWith$Fragment$TicketFields$acceptedConsignmentNote$modified<
    Fragment$TicketFields$acceptedConsignmentNote$modified
  >
  get copyWith =>
      CopyWith$Fragment$TicketFields$acceptedConsignmentNote$modified(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TicketFields$acceptedConsignmentNote$modified<
  TRes
> {
  factory CopyWith$Fragment$TicketFields$acceptedConsignmentNote$modified(
    Fragment$TicketFields$acceptedConsignmentNote$modified instance,
    TRes Function(Fragment$TicketFields$acceptedConsignmentNote$modified) then,
  ) = _CopyWithImpl$Fragment$TicketFields$acceptedConsignmentNote$modified;

  factory CopyWith$Fragment$TicketFields$acceptedConsignmentNote$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$TicketFields$acceptedConsignmentNote$modified;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketFields$acceptedConsignmentNote$modified<TRes>
    implements
        CopyWith$Fragment$TicketFields$acceptedConsignmentNote$modified<TRes> {
  _CopyWithImpl$Fragment$TicketFields$acceptedConsignmentNote$modified(
    this._instance,
    this._then,
  );

  final Fragment$TicketFields$acceptedConsignmentNote$modified _instance;

  final TRes Function(Fragment$TicketFields$acceptedConsignmentNote$modified)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$acceptedConsignmentNote$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketFields$acceptedConsignmentNote$modified<
  TRes
>
    implements
        CopyWith$Fragment$TicketFields$acceptedConsignmentNote$modified<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$acceptedConsignmentNote$modified(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Fragment$TicketFields$rejectedConsignmentNote {
  Fragment$TicketFields$rejectedConsignmentNote({
    required this.code,
    this.mediaUrl,
    required this.created,
    required this.modified,
    this.$__typename = 'ConsignmentNote',
  });

  factory Fragment$TicketFields$rejectedConsignmentNote.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$mediaUrl = json['mediaUrl'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$rejectedConsignmentNote(
      code: (l$code as String),
      mediaUrl: (l$mediaUrl as String?),
      created: Fragment$TicketFields$rejectedConsignmentNote$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      modified: Fragment$TicketFields$rejectedConsignmentNote$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String? mediaUrl;

  final Fragment$TicketFields$rejectedConsignmentNote$created created;

  final Fragment$TicketFields$rejectedConsignmentNote$modified modified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$mediaUrl = mediaUrl;
    _resultData['mediaUrl'] = l$mediaUrl;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$mediaUrl = mediaUrl;
    final l$created = created;
    final l$modified = modified;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$mediaUrl,
      l$created,
      l$modified,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$rejectedConsignmentNote ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$mediaUrl = mediaUrl;
    final lOther$mediaUrl = other.mediaUrl;
    if (l$mediaUrl != lOther$mediaUrl) {
      return false;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketFields$rejectedConsignmentNote
    on Fragment$TicketFields$rejectedConsignmentNote {
  CopyWith$Fragment$TicketFields$rejectedConsignmentNote<
    Fragment$TicketFields$rejectedConsignmentNote
  >
  get copyWith =>
      CopyWith$Fragment$TicketFields$rejectedConsignmentNote(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketFields$rejectedConsignmentNote<TRes> {
  factory CopyWith$Fragment$TicketFields$rejectedConsignmentNote(
    Fragment$TicketFields$rejectedConsignmentNote instance,
    TRes Function(Fragment$TicketFields$rejectedConsignmentNote) then,
  ) = _CopyWithImpl$Fragment$TicketFields$rejectedConsignmentNote;

  factory CopyWith$Fragment$TicketFields$rejectedConsignmentNote.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$TicketFields$rejectedConsignmentNote;

  TRes call({
    String? code,
    String? mediaUrl,
    Fragment$TicketFields$rejectedConsignmentNote$created? created,
    Fragment$TicketFields$rejectedConsignmentNote$modified? modified,
    String? $__typename,
  });
  CopyWith$Fragment$TicketFields$rejectedConsignmentNote$created<TRes>
  get created;
  CopyWith$Fragment$TicketFields$rejectedConsignmentNote$modified<TRes>
  get modified;
}

class _CopyWithImpl$Fragment$TicketFields$rejectedConsignmentNote<TRes>
    implements CopyWith$Fragment$TicketFields$rejectedConsignmentNote<TRes> {
  _CopyWithImpl$Fragment$TicketFields$rejectedConsignmentNote(
    this._instance,
    this._then,
  );

  final Fragment$TicketFields$rejectedConsignmentNote _instance;

  final TRes Function(Fragment$TicketFields$rejectedConsignmentNote) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? mediaUrl = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$rejectedConsignmentNote(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      mediaUrl: mediaUrl == _undefined
          ? _instance.mediaUrl
          : (mediaUrl as String?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$TicketFields$rejectedConsignmentNote$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified
                as Fragment$TicketFields$rejectedConsignmentNote$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$TicketFields$rejectedConsignmentNote$created<TRes>
  get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$TicketFields$rejectedConsignmentNote$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Fragment$TicketFields$rejectedConsignmentNote$modified<TRes>
  get modified {
    final local$modified = _instance.modified;
    return CopyWith$Fragment$TicketFields$rejectedConsignmentNote$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$TicketFields$rejectedConsignmentNote<TRes>
    implements CopyWith$Fragment$TicketFields$rejectedConsignmentNote<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$rejectedConsignmentNote(this._res);

  TRes _res;

  call({
    String? code,
    String? mediaUrl,
    Fragment$TicketFields$rejectedConsignmentNote$created? created,
    Fragment$TicketFields$rejectedConsignmentNote$modified? modified,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$TicketFields$rejectedConsignmentNote$created<TRes>
  get created =>
      CopyWith$Fragment$TicketFields$rejectedConsignmentNote$created.stub(_res);

  CopyWith$Fragment$TicketFields$rejectedConsignmentNote$modified<TRes>
  get modified =>
      CopyWith$Fragment$TicketFields$rejectedConsignmentNote$modified.stub(
        _res,
      );
}

class Fragment$TicketFields$rejectedConsignmentNote$created {
  Fragment$TicketFields$rejectedConsignmentNote$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Fragment$TicketFields$rejectedConsignmentNote$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$rejectedConsignmentNote$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$rejectedConsignmentNote$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Fragment$TicketFields$rejectedConsignmentNote$created
    on Fragment$TicketFields$rejectedConsignmentNote$created {
  CopyWith$Fragment$TicketFields$rejectedConsignmentNote$created<
    Fragment$TicketFields$rejectedConsignmentNote$created
  >
  get copyWith =>
      CopyWith$Fragment$TicketFields$rejectedConsignmentNote$created(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TicketFields$rejectedConsignmentNote$created<
  TRes
> {
  factory CopyWith$Fragment$TicketFields$rejectedConsignmentNote$created(
    Fragment$TicketFields$rejectedConsignmentNote$created instance,
    TRes Function(Fragment$TicketFields$rejectedConsignmentNote$created) then,
  ) = _CopyWithImpl$Fragment$TicketFields$rejectedConsignmentNote$created;

  factory CopyWith$Fragment$TicketFields$rejectedConsignmentNote$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$TicketFields$rejectedConsignmentNote$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketFields$rejectedConsignmentNote$created<TRes>
    implements
        CopyWith$Fragment$TicketFields$rejectedConsignmentNote$created<TRes> {
  _CopyWithImpl$Fragment$TicketFields$rejectedConsignmentNote$created(
    this._instance,
    this._then,
  );

  final Fragment$TicketFields$rejectedConsignmentNote$created _instance;

  final TRes Function(Fragment$TicketFields$rejectedConsignmentNote$created)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$rejectedConsignmentNote$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketFields$rejectedConsignmentNote$created<
  TRes
>
    implements
        CopyWith$Fragment$TicketFields$rejectedConsignmentNote$created<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$rejectedConsignmentNote$created(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Fragment$TicketFields$rejectedConsignmentNote$modified {
  Fragment$TicketFields$rejectedConsignmentNote$modified({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Modified',
  });

  factory Fragment$TicketFields$rejectedConsignmentNote$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$rejectedConsignmentNote$modified(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$rejectedConsignmentNote$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Fragment$TicketFields$rejectedConsignmentNote$modified
    on Fragment$TicketFields$rejectedConsignmentNote$modified {
  CopyWith$Fragment$TicketFields$rejectedConsignmentNote$modified<
    Fragment$TicketFields$rejectedConsignmentNote$modified
  >
  get copyWith =>
      CopyWith$Fragment$TicketFields$rejectedConsignmentNote$modified(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TicketFields$rejectedConsignmentNote$modified<
  TRes
> {
  factory CopyWith$Fragment$TicketFields$rejectedConsignmentNote$modified(
    Fragment$TicketFields$rejectedConsignmentNote$modified instance,
    TRes Function(Fragment$TicketFields$rejectedConsignmentNote$modified) then,
  ) = _CopyWithImpl$Fragment$TicketFields$rejectedConsignmentNote$modified;

  factory CopyWith$Fragment$TicketFields$rejectedConsignmentNote$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$TicketFields$rejectedConsignmentNote$modified;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketFields$rejectedConsignmentNote$modified<TRes>
    implements
        CopyWith$Fragment$TicketFields$rejectedConsignmentNote$modified<TRes> {
  _CopyWithImpl$Fragment$TicketFields$rejectedConsignmentNote$modified(
    this._instance,
    this._then,
  );

  final Fragment$TicketFields$rejectedConsignmentNote$modified _instance;

  final TRes Function(Fragment$TicketFields$rejectedConsignmentNote$modified)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$rejectedConsignmentNote$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketFields$rejectedConsignmentNote$modified<
  TRes
>
    implements
        CopyWith$Fragment$TicketFields$rejectedConsignmentNote$modified<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$rejectedConsignmentNote$modified(
    this._res,
  );

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Fragment$TicketFields$remittanceDetails {
  Fragment$TicketFields$remittanceDetails({
    required this.mediaUrl,
    required this.created,
    required this.modified,
    this.$__typename = 'TicketRemittance',
  });

  factory Fragment$TicketFields$remittanceDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mediaUrl = json['mediaUrl'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$remittanceDetails(
      mediaUrl: (l$mediaUrl as String),
      created: Fragment$TicketFields$remittanceDetails$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      modified: Fragment$TicketFields$remittanceDetails$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mediaUrl;

  final Fragment$TicketFields$remittanceDetails$created created;

  final Fragment$TicketFields$remittanceDetails$modified modified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaUrl = mediaUrl;
    _resultData['mediaUrl'] = l$mediaUrl;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaUrl = mediaUrl;
    final l$created = created;
    final l$modified = modified;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mediaUrl, l$created, l$modified, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$remittanceDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaUrl = mediaUrl;
    final lOther$mediaUrl = other.mediaUrl;
    if (l$mediaUrl != lOther$mediaUrl) {
      return false;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TicketFields$remittanceDetails
    on Fragment$TicketFields$remittanceDetails {
  CopyWith$Fragment$TicketFields$remittanceDetails<
    Fragment$TicketFields$remittanceDetails
  >
  get copyWith =>
      CopyWith$Fragment$TicketFields$remittanceDetails(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketFields$remittanceDetails<TRes> {
  factory CopyWith$Fragment$TicketFields$remittanceDetails(
    Fragment$TicketFields$remittanceDetails instance,
    TRes Function(Fragment$TicketFields$remittanceDetails) then,
  ) = _CopyWithImpl$Fragment$TicketFields$remittanceDetails;

  factory CopyWith$Fragment$TicketFields$remittanceDetails.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketFields$remittanceDetails;

  TRes call({
    String? mediaUrl,
    Fragment$TicketFields$remittanceDetails$created? created,
    Fragment$TicketFields$remittanceDetails$modified? modified,
    String? $__typename,
  });
  CopyWith$Fragment$TicketFields$remittanceDetails$created<TRes> get created;
  CopyWith$Fragment$TicketFields$remittanceDetails$modified<TRes> get modified;
}

class _CopyWithImpl$Fragment$TicketFields$remittanceDetails<TRes>
    implements CopyWith$Fragment$TicketFields$remittanceDetails<TRes> {
  _CopyWithImpl$Fragment$TicketFields$remittanceDetails(
    this._instance,
    this._then,
  );

  final Fragment$TicketFields$remittanceDetails _instance;

  final TRes Function(Fragment$TicketFields$remittanceDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaUrl = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$remittanceDetails(
      mediaUrl: mediaUrl == _undefined || mediaUrl == null
          ? _instance.mediaUrl
          : (mediaUrl as String),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$TicketFields$remittanceDetails$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Fragment$TicketFields$remittanceDetails$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$TicketFields$remittanceDetails$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$TicketFields$remittanceDetails$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Fragment$TicketFields$remittanceDetails$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Fragment$TicketFields$remittanceDetails$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$TicketFields$remittanceDetails<TRes>
    implements CopyWith$Fragment$TicketFields$remittanceDetails<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$remittanceDetails(this._res);

  TRes _res;

  call({
    String? mediaUrl,
    Fragment$TicketFields$remittanceDetails$created? created,
    Fragment$TicketFields$remittanceDetails$modified? modified,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$TicketFields$remittanceDetails$created<TRes> get created =>
      CopyWith$Fragment$TicketFields$remittanceDetails$created.stub(_res);

  CopyWith$Fragment$TicketFields$remittanceDetails$modified<TRes>
  get modified =>
      CopyWith$Fragment$TicketFields$remittanceDetails$modified.stub(_res);
}

class Fragment$TicketFields$remittanceDetails$created {
  Fragment$TicketFields$remittanceDetails$created({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Created',
  });

  factory Fragment$TicketFields$remittanceDetails$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$remittanceDetails$created(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$remittanceDetails$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Fragment$TicketFields$remittanceDetails$created
    on Fragment$TicketFields$remittanceDetails$created {
  CopyWith$Fragment$TicketFields$remittanceDetails$created<
    Fragment$TicketFields$remittanceDetails$created
  >
  get copyWith =>
      CopyWith$Fragment$TicketFields$remittanceDetails$created(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketFields$remittanceDetails$created<TRes> {
  factory CopyWith$Fragment$TicketFields$remittanceDetails$created(
    Fragment$TicketFields$remittanceDetails$created instance,
    TRes Function(Fragment$TicketFields$remittanceDetails$created) then,
  ) = _CopyWithImpl$Fragment$TicketFields$remittanceDetails$created;

  factory CopyWith$Fragment$TicketFields$remittanceDetails$created.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$TicketFields$remittanceDetails$created;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketFields$remittanceDetails$created<TRes>
    implements CopyWith$Fragment$TicketFields$remittanceDetails$created<TRes> {
  _CopyWithImpl$Fragment$TicketFields$remittanceDetails$created(
    this._instance,
    this._then,
  );

  final Fragment$TicketFields$remittanceDetails$created _instance;

  final TRes Function(Fragment$TicketFields$remittanceDetails$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$remittanceDetails$created(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketFields$remittanceDetails$created<TRes>
    implements CopyWith$Fragment$TicketFields$remittanceDetails$created<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$remittanceDetails$created(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}

class Fragment$TicketFields$remittanceDetails$modified {
  Fragment$TicketFields$remittanceDetails$modified({
    required this.at,
    required this.userName,
    required this.userInfoId,
    this.$__typename = 'Modified',
  });

  factory Fragment$TicketFields$remittanceDetails$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$userInfoId = json['userInfoId'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketFields$remittanceDetails$modified(
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      userInfoId: (l$userInfoId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime at;

  final String userName;

  final String userInfoId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$at = at;
    final l$userName = userName;
    final l$userInfoId = userInfoId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$at, l$userName, l$userInfoId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketFields$remittanceDetails$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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

extension UtilityExtension$Fragment$TicketFields$remittanceDetails$modified
    on Fragment$TicketFields$remittanceDetails$modified {
  CopyWith$Fragment$TicketFields$remittanceDetails$modified<
    Fragment$TicketFields$remittanceDetails$modified
  >
  get copyWith =>
      CopyWith$Fragment$TicketFields$remittanceDetails$modified(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketFields$remittanceDetails$modified<TRes> {
  factory CopyWith$Fragment$TicketFields$remittanceDetails$modified(
    Fragment$TicketFields$remittanceDetails$modified instance,
    TRes Function(Fragment$TicketFields$remittanceDetails$modified) then,
  ) = _CopyWithImpl$Fragment$TicketFields$remittanceDetails$modified;

  factory CopyWith$Fragment$TicketFields$remittanceDetails$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$TicketFields$remittanceDetails$modified;

  TRes call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TicketFields$remittanceDetails$modified<TRes>
    implements CopyWith$Fragment$TicketFields$remittanceDetails$modified<TRes> {
  _CopyWithImpl$Fragment$TicketFields$remittanceDetails$modified(
    this._instance,
    this._then,
  );

  final Fragment$TicketFields$remittanceDetails$modified _instance;

  final TRes Function(Fragment$TicketFields$remittanceDetails$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? userInfoId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketFields$remittanceDetails$modified(
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketFields$remittanceDetails$modified<TRes>
    implements CopyWith$Fragment$TicketFields$remittanceDetails$modified<TRes> {
  _CopyWithStubImpl$Fragment$TicketFields$remittanceDetails$modified(this._res);

  TRes _res;

  call({
    DateTime? at,
    String? userName,
    String? userInfoId,
    String? $__typename,
  }) => _res;
}
