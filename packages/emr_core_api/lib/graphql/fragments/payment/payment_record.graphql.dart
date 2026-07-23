import '../../schema.graphql.dart';
import '../inventory/ticket/account_details_fragment.graphql.dart';
import '../inventory/ticket/media_asset_fragment.graphql.dart';
import '../inventory/ticket/non_stock_ticket_line_fragment.graphql.dart';
import '../inventory/ticket/ticket_account.graphql.dart';
import '../inventory/ticket/ticket_deduction_fragment.graphql.dart';
import '../inventory/ticket/ticket_fragment.graphql.dart';
import '../inventory/ticket/ticket_line_fragment.graphql.dart';
import '../inventory/ticket/uom_value.graphql.dart';
import '../payments/encashment_values.graphql.dart';
import '../payments/payment_deduction.graphql.dart';
import '../payments/payment_deduction_items.graphql.dart';
import '../payments/payment_record_items.graphql.dart';
import 'advance_fields.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$PaymentRecordFields {
  Fragment$PaymentRecordFields({
    required this.paymentMethod,
    required this.needAuthorization,
    this.authorizationDetails,
    required this.id,
    required this.tags,
    this.extendedProperties,
    required this.active,
    required this.created,
    required this.yardCode,
    required this.modified,
    required this.ticketIds,
    required this.totalAmount,
    required this.cashDeductions,
    required this.roundingAdjustment,
    required this.haulageCharge,
    required this.advanceOffset,
    required this.totalFee,
    required this.roundingAdjustmentOnFee,
    required this.payableAfterCostAndDeduction,
    required this.payableAmount,
    this.paymentMethodDetails,
    required this.status,
    required this.paymentType,
    required this.tickets,
    required this.paymentRecordItems,
    this.$__typename = 'PaymentRecord',
  });

  factory Fragment$PaymentRecordFields.fromJson(Map<String, dynamic> json) {
    final l$paymentMethod = json['paymentMethod'];
    final l$needAuthorization = json['needAuthorization'];
    final l$authorizationDetails = json['authorizationDetails'];
    final l$id = json['id'];
    final l$tags = json['tags'];
    final l$extendedProperties = json['extendedProperties'];
    final l$active = json['active'];
    final l$created = json['created'];
    final l$yardCode = json['yardCode'];
    final l$modified = json['modified'];
    final l$ticketIds = json['ticketIds'];
    final l$totalAmount = json['totalAmount'];
    final l$cashDeductions = json['cashDeductions'];
    final l$roundingAdjustment = json['roundingAdjustment'];
    final l$haulageCharge = json['haulageCharge'];
    final l$advanceOffset = json['advanceOffset'];
    final l$totalFee = json['totalFee'];
    final l$roundingAdjustmentOnFee = json['roundingAdjustmentOnFee'];
    final l$payableAfterCostAndDeduction = json['payableAfterCostAndDeduction'];
    final l$payableAmount = json['payableAmount'];
    final l$paymentMethodDetails = json['paymentMethodDetails'];
    final l$status = json['status'];
    final l$paymentType = json['paymentType'];
    final l$tickets = json['tickets'];
    final l$paymentRecordItems = json['paymentRecordItems'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentRecordFields(
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      needAuthorization: (l$needAuthorization as bool),
      authorizationDetails: l$authorizationDetails == null
          ? null
          : Fragment$PaymentRecordFields$authorizationDetails.fromJson(
              (l$authorizationDetails as Map<String, dynamic>),
            ),
      id: (l$id as String),
      tags: (l$tags as List<dynamic>).map((e) => (e as String)).toList(),
      extendedProperties: (l$extendedProperties as Map<String, dynamic>?),
      active: (l$active as bool),
      created: Fragment$PaymentRecordFields$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      yardCode: (l$yardCode as String),
      modified: Fragment$PaymentRecordFields$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      ticketIds: (l$ticketIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      totalAmount: (l$totalAmount as num).toDouble(),
      cashDeductions: (l$cashDeductions as num).toDouble(),
      roundingAdjustment: (l$roundingAdjustment as num).toDouble(),
      haulageCharge: (l$haulageCharge as num).toDouble(),
      advanceOffset: (l$advanceOffset as num).toDouble(),
      totalFee: (l$totalFee as num).toDouble(),
      roundingAdjustmentOnFee: (l$roundingAdjustmentOnFee as num).toDouble(),
      payableAfterCostAndDeduction: (l$payableAfterCostAndDeduction as num)
          .toDouble(),
      payableAmount: (l$payableAmount as num).toDouble(),
      paymentMethodDetails: (l$paymentMethodDetails as Map<String, dynamic>?),
      status: fromJson$Enum$PaymentStatus((l$status as String)),
      paymentType: fromJson$Enum$PaymentType((l$paymentType as String)),
      tickets: (l$tickets as List<dynamic>)
          .map(
            (e) => Fragment$TicketFields.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      paymentRecordItems: (l$paymentRecordItems as List<dynamic>)
          .map(
            (e) => Fragment$PaymentRecordItemFields.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PaymentMethod paymentMethod;

  final bool needAuthorization;

  final Fragment$PaymentRecordFields$authorizationDetails? authorizationDetails;

  final String id;

  final List<String> tags;

  final Map<String, dynamic>? extendedProperties;

  final bool active;

  final Fragment$PaymentRecordFields$created created;

  final String yardCode;

  final Fragment$PaymentRecordFields$modified modified;

  final List<String> ticketIds;

  final double totalAmount;

  final double cashDeductions;

  final double roundingAdjustment;

  final double haulageCharge;

  final double advanceOffset;

  final double totalFee;

  final double roundingAdjustmentOnFee;

  final double payableAfterCostAndDeduction;

  final double payableAmount;

  final Map<String, dynamic>? paymentMethodDetails;

  final Enum$PaymentStatus status;

  final Enum$PaymentType paymentType;

  final List<Fragment$TicketFields> tickets;

  final List<Fragment$PaymentRecordItemFields> paymentRecordItems;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$needAuthorization = needAuthorization;
    _resultData['needAuthorization'] = l$needAuthorization;
    final l$authorizationDetails = authorizationDetails;
    _resultData['authorizationDetails'] = l$authorizationDetails?.toJson();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e).toList();
    final l$extendedProperties = extendedProperties;
    _resultData['extendedProperties'] = l$extendedProperties;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$ticketIds = ticketIds;
    _resultData['ticketIds'] = l$ticketIds.map((e) => e).toList();
    final l$totalAmount = totalAmount;
    _resultData['totalAmount'] = l$totalAmount;
    final l$cashDeductions = cashDeductions;
    _resultData['cashDeductions'] = l$cashDeductions;
    final l$roundingAdjustment = roundingAdjustment;
    _resultData['roundingAdjustment'] = l$roundingAdjustment;
    final l$haulageCharge = haulageCharge;
    _resultData['haulageCharge'] = l$haulageCharge;
    final l$advanceOffset = advanceOffset;
    _resultData['advanceOffset'] = l$advanceOffset;
    final l$totalFee = totalFee;
    _resultData['totalFee'] = l$totalFee;
    final l$roundingAdjustmentOnFee = roundingAdjustmentOnFee;
    _resultData['roundingAdjustmentOnFee'] = l$roundingAdjustmentOnFee;
    final l$payableAfterCostAndDeduction = payableAfterCostAndDeduction;
    _resultData['payableAfterCostAndDeduction'] =
        l$payableAfterCostAndDeduction;
    final l$payableAmount = payableAmount;
    _resultData['payableAmount'] = l$payableAmount;
    final l$paymentMethodDetails = paymentMethodDetails;
    _resultData['paymentMethodDetails'] = l$paymentMethodDetails;
    final l$status = status;
    _resultData['status'] = toJson$Enum$PaymentStatus(l$status);
    final l$paymentType = paymentType;
    _resultData['paymentType'] = toJson$Enum$PaymentType(l$paymentType);
    final l$tickets = tickets;
    _resultData['tickets'] = l$tickets.map((e) => e.toJson()).toList();
    final l$paymentRecordItems = paymentRecordItems;
    _resultData['paymentRecordItems'] = l$paymentRecordItems
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentMethod = paymentMethod;
    final l$needAuthorization = needAuthorization;
    final l$authorizationDetails = authorizationDetails;
    final l$id = id;
    final l$tags = tags;
    final l$extendedProperties = extendedProperties;
    final l$active = active;
    final l$created = created;
    final l$yardCode = yardCode;
    final l$modified = modified;
    final l$ticketIds = ticketIds;
    final l$totalAmount = totalAmount;
    final l$cashDeductions = cashDeductions;
    final l$roundingAdjustment = roundingAdjustment;
    final l$haulageCharge = haulageCharge;
    final l$advanceOffset = advanceOffset;
    final l$totalFee = totalFee;
    final l$roundingAdjustmentOnFee = roundingAdjustmentOnFee;
    final l$payableAfterCostAndDeduction = payableAfterCostAndDeduction;
    final l$payableAmount = payableAmount;
    final l$paymentMethodDetails = paymentMethodDetails;
    final l$status = status;
    final l$paymentType = paymentType;
    final l$tickets = tickets;
    final l$paymentRecordItems = paymentRecordItems;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paymentMethod,
      l$needAuthorization,
      l$authorizationDetails,
      l$id,
      Object.hashAll(l$tags.map((v) => v)),
      l$extendedProperties,
      l$active,
      l$created,
      l$yardCode,
      l$modified,
      Object.hashAll(l$ticketIds.map((v) => v)),
      l$totalAmount,
      l$cashDeductions,
      l$roundingAdjustment,
      l$haulageCharge,
      l$advanceOffset,
      l$totalFee,
      l$roundingAdjustmentOnFee,
      l$payableAfterCostAndDeduction,
      l$payableAmount,
      l$paymentMethodDetails,
      l$status,
      l$paymentType,
      Object.hashAll(l$tickets.map((v) => v)),
      Object.hashAll(l$paymentRecordItems.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentRecordFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$needAuthorization = needAuthorization;
    final lOther$needAuthorization = other.needAuthorization;
    if (l$needAuthorization != lOther$needAuthorization) {
      return false;
    }
    final l$authorizationDetails = authorizationDetails;
    final lOther$authorizationDetails = other.authorizationDetails;
    if (l$authorizationDetails != lOther$authorizationDetails) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
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
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
      return false;
    }
    final l$ticketIds = ticketIds;
    final lOther$ticketIds = other.ticketIds;
    if (l$ticketIds.length != lOther$ticketIds.length) {
      return false;
    }
    for (int i = 0; i < l$ticketIds.length; i++) {
      final l$ticketIds$entry = l$ticketIds[i];
      final lOther$ticketIds$entry = lOther$ticketIds[i];
      if (l$ticketIds$entry != lOther$ticketIds$entry) {
        return false;
      }
    }
    final l$totalAmount = totalAmount;
    final lOther$totalAmount = other.totalAmount;
    if (l$totalAmount != lOther$totalAmount) {
      return false;
    }
    final l$cashDeductions = cashDeductions;
    final lOther$cashDeductions = other.cashDeductions;
    if (l$cashDeductions != lOther$cashDeductions) {
      return false;
    }
    final l$roundingAdjustment = roundingAdjustment;
    final lOther$roundingAdjustment = other.roundingAdjustment;
    if (l$roundingAdjustment != lOther$roundingAdjustment) {
      return false;
    }
    final l$haulageCharge = haulageCharge;
    final lOther$haulageCharge = other.haulageCharge;
    if (l$haulageCharge != lOther$haulageCharge) {
      return false;
    }
    final l$advanceOffset = advanceOffset;
    final lOther$advanceOffset = other.advanceOffset;
    if (l$advanceOffset != lOther$advanceOffset) {
      return false;
    }
    final l$totalFee = totalFee;
    final lOther$totalFee = other.totalFee;
    if (l$totalFee != lOther$totalFee) {
      return false;
    }
    final l$roundingAdjustmentOnFee = roundingAdjustmentOnFee;
    final lOther$roundingAdjustmentOnFee = other.roundingAdjustmentOnFee;
    if (l$roundingAdjustmentOnFee != lOther$roundingAdjustmentOnFee) {
      return false;
    }
    final l$payableAfterCostAndDeduction = payableAfterCostAndDeduction;
    final lOther$payableAfterCostAndDeduction =
        other.payableAfterCostAndDeduction;
    if (l$payableAfterCostAndDeduction != lOther$payableAfterCostAndDeduction) {
      return false;
    }
    final l$payableAmount = payableAmount;
    final lOther$payableAmount = other.payableAmount;
    if (l$payableAmount != lOther$payableAmount) {
      return false;
    }
    final l$paymentMethodDetails = paymentMethodDetails;
    final lOther$paymentMethodDetails = other.paymentMethodDetails;
    if (l$paymentMethodDetails != lOther$paymentMethodDetails) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$paymentType = paymentType;
    final lOther$paymentType = other.paymentType;
    if (l$paymentType != lOther$paymentType) {
      return false;
    }
    final l$tickets = tickets;
    final lOther$tickets = other.tickets;
    if (l$tickets.length != lOther$tickets.length) {
      return false;
    }
    for (int i = 0; i < l$tickets.length; i++) {
      final l$tickets$entry = l$tickets[i];
      final lOther$tickets$entry = lOther$tickets[i];
      if (l$tickets$entry != lOther$tickets$entry) {
        return false;
      }
    }
    final l$paymentRecordItems = paymentRecordItems;
    final lOther$paymentRecordItems = other.paymentRecordItems;
    if (l$paymentRecordItems.length != lOther$paymentRecordItems.length) {
      return false;
    }
    for (int i = 0; i < l$paymentRecordItems.length; i++) {
      final l$paymentRecordItems$entry = l$paymentRecordItems[i];
      final lOther$paymentRecordItems$entry = lOther$paymentRecordItems[i];
      if (l$paymentRecordItems$entry != lOther$paymentRecordItems$entry) {
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

extension UtilityExtension$Fragment$PaymentRecordFields
    on Fragment$PaymentRecordFields {
  CopyWith$Fragment$PaymentRecordFields<Fragment$PaymentRecordFields>
  get copyWith => CopyWith$Fragment$PaymentRecordFields(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentRecordFields<TRes> {
  factory CopyWith$Fragment$PaymentRecordFields(
    Fragment$PaymentRecordFields instance,
    TRes Function(Fragment$PaymentRecordFields) then,
  ) = _CopyWithImpl$Fragment$PaymentRecordFields;

  factory CopyWith$Fragment$PaymentRecordFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentRecordFields;

  TRes call({
    Enum$PaymentMethod? paymentMethod,
    bool? needAuthorization,
    Fragment$PaymentRecordFields$authorizationDetails? authorizationDetails,
    String? id,
    List<String>? tags,
    Map<String, dynamic>? extendedProperties,
    bool? active,
    Fragment$PaymentRecordFields$created? created,
    String? yardCode,
    Fragment$PaymentRecordFields$modified? modified,
    List<String>? ticketIds,
    double? totalAmount,
    double? cashDeductions,
    double? roundingAdjustment,
    double? haulageCharge,
    double? advanceOffset,
    double? totalFee,
    double? roundingAdjustmentOnFee,
    double? payableAfterCostAndDeduction,
    double? payableAmount,
    Map<String, dynamic>? paymentMethodDetails,
    Enum$PaymentStatus? status,
    Enum$PaymentType? paymentType,
    List<Fragment$TicketFields>? tickets,
    List<Fragment$PaymentRecordItemFields>? paymentRecordItems,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentRecordFields$authorizationDetails<TRes>
  get authorizationDetails;
  CopyWith$Fragment$PaymentRecordFields$created<TRes> get created;
  CopyWith$Fragment$PaymentRecordFields$modified<TRes> get modified;
  TRes tickets(
    Iterable<Fragment$TicketFields> Function(
      Iterable<CopyWith$Fragment$TicketFields<Fragment$TicketFields>>,
    )
    _fn,
  );
  TRes paymentRecordItems(
    Iterable<Fragment$PaymentRecordItemFields> Function(
      Iterable<
        CopyWith$Fragment$PaymentRecordItemFields<
          Fragment$PaymentRecordItemFields
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$PaymentRecordFields<TRes>
    implements CopyWith$Fragment$PaymentRecordFields<TRes> {
  _CopyWithImpl$Fragment$PaymentRecordFields(this._instance, this._then);

  final Fragment$PaymentRecordFields _instance;

  final TRes Function(Fragment$PaymentRecordFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentMethod = _undefined,
    Object? needAuthorization = _undefined,
    Object? authorizationDetails = _undefined,
    Object? id = _undefined,
    Object? tags = _undefined,
    Object? extendedProperties = _undefined,
    Object? active = _undefined,
    Object? created = _undefined,
    Object? yardCode = _undefined,
    Object? modified = _undefined,
    Object? ticketIds = _undefined,
    Object? totalAmount = _undefined,
    Object? cashDeductions = _undefined,
    Object? roundingAdjustment = _undefined,
    Object? haulageCharge = _undefined,
    Object? advanceOffset = _undefined,
    Object? totalFee = _undefined,
    Object? roundingAdjustmentOnFee = _undefined,
    Object? payableAfterCostAndDeduction = _undefined,
    Object? payableAmount = _undefined,
    Object? paymentMethodDetails = _undefined,
    Object? status = _undefined,
    Object? paymentType = _undefined,
    Object? tickets = _undefined,
    Object? paymentRecordItems = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentRecordFields(
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      needAuthorization:
          needAuthorization == _undefined || needAuthorization == null
          ? _instance.needAuthorization
          : (needAuthorization as bool),
      authorizationDetails: authorizationDetails == _undefined
          ? _instance.authorizationDetails
          : (authorizationDetails
                as Fragment$PaymentRecordFields$authorizationDetails?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<String>),
      extendedProperties: extendedProperties == _undefined
          ? _instance.extendedProperties
          : (extendedProperties as Map<String, dynamic>?),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Fragment$PaymentRecordFields$created),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Fragment$PaymentRecordFields$modified),
      ticketIds: ticketIds == _undefined || ticketIds == null
          ? _instance.ticketIds
          : (ticketIds as List<String>),
      totalAmount: totalAmount == _undefined || totalAmount == null
          ? _instance.totalAmount
          : (totalAmount as double),
      cashDeductions: cashDeductions == _undefined || cashDeductions == null
          ? _instance.cashDeductions
          : (cashDeductions as double),
      roundingAdjustment:
          roundingAdjustment == _undefined || roundingAdjustment == null
          ? _instance.roundingAdjustment
          : (roundingAdjustment as double),
      haulageCharge: haulageCharge == _undefined || haulageCharge == null
          ? _instance.haulageCharge
          : (haulageCharge as double),
      advanceOffset: advanceOffset == _undefined || advanceOffset == null
          ? _instance.advanceOffset
          : (advanceOffset as double),
      totalFee: totalFee == _undefined || totalFee == null
          ? _instance.totalFee
          : (totalFee as double),
      roundingAdjustmentOnFee:
          roundingAdjustmentOnFee == _undefined ||
              roundingAdjustmentOnFee == null
          ? _instance.roundingAdjustmentOnFee
          : (roundingAdjustmentOnFee as double),
      payableAfterCostAndDeduction:
          payableAfterCostAndDeduction == _undefined ||
              payableAfterCostAndDeduction == null
          ? _instance.payableAfterCostAndDeduction
          : (payableAfterCostAndDeduction as double),
      payableAmount: payableAmount == _undefined || payableAmount == null
          ? _instance.payableAmount
          : (payableAmount as double),
      paymentMethodDetails: paymentMethodDetails == _undefined
          ? _instance.paymentMethodDetails
          : (paymentMethodDetails as Map<String, dynamic>?),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$PaymentStatus),
      paymentType: paymentType == _undefined || paymentType == null
          ? _instance.paymentType
          : (paymentType as Enum$PaymentType),
      tickets: tickets == _undefined || tickets == null
          ? _instance.tickets
          : (tickets as List<Fragment$TicketFields>),
      paymentRecordItems:
          paymentRecordItems == _undefined || paymentRecordItems == null
          ? _instance.paymentRecordItems
          : (paymentRecordItems as List<Fragment$PaymentRecordItemFields>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentRecordFields$authorizationDetails<TRes>
  get authorizationDetails {
    final local$authorizationDetails = _instance.authorizationDetails;
    return local$authorizationDetails == null
        ? CopyWith$Fragment$PaymentRecordFields$authorizationDetails.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$PaymentRecordFields$authorizationDetails(
            local$authorizationDetails,
            (e) => call(authorizationDetails: e),
          );
  }

  CopyWith$Fragment$PaymentRecordFields$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Fragment$PaymentRecordFields$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Fragment$PaymentRecordFields$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Fragment$PaymentRecordFields$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }

  TRes tickets(
    Iterable<Fragment$TicketFields> Function(
      Iterable<CopyWith$Fragment$TicketFields<Fragment$TicketFields>>,
    )
    _fn,
  ) => call(
    tickets: _fn(
      _instance.tickets.map((e) => CopyWith$Fragment$TicketFields(e, (i) => i)),
    ).toList(),
  );

  TRes paymentRecordItems(
    Iterable<Fragment$PaymentRecordItemFields> Function(
      Iterable<
        CopyWith$Fragment$PaymentRecordItemFields<
          Fragment$PaymentRecordItemFields
        >
      >,
    )
    _fn,
  ) => call(
    paymentRecordItems: _fn(
      _instance.paymentRecordItems.map(
        (e) => CopyWith$Fragment$PaymentRecordItemFields(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$PaymentRecordFields<TRes>
    implements CopyWith$Fragment$PaymentRecordFields<TRes> {
  _CopyWithStubImpl$Fragment$PaymentRecordFields(this._res);

  TRes _res;

  call({
    Enum$PaymentMethod? paymentMethod,
    bool? needAuthorization,
    Fragment$PaymentRecordFields$authorizationDetails? authorizationDetails,
    String? id,
    List<String>? tags,
    Map<String, dynamic>? extendedProperties,
    bool? active,
    Fragment$PaymentRecordFields$created? created,
    String? yardCode,
    Fragment$PaymentRecordFields$modified? modified,
    List<String>? ticketIds,
    double? totalAmount,
    double? cashDeductions,
    double? roundingAdjustment,
    double? haulageCharge,
    double? advanceOffset,
    double? totalFee,
    double? roundingAdjustmentOnFee,
    double? payableAfterCostAndDeduction,
    double? payableAmount,
    Map<String, dynamic>? paymentMethodDetails,
    Enum$PaymentStatus? status,
    Enum$PaymentType? paymentType,
    List<Fragment$TicketFields>? tickets,
    List<Fragment$PaymentRecordItemFields>? paymentRecordItems,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentRecordFields$authorizationDetails<TRes>
  get authorizationDetails =>
      CopyWith$Fragment$PaymentRecordFields$authorizationDetails.stub(_res);

  CopyWith$Fragment$PaymentRecordFields$created<TRes> get created =>
      CopyWith$Fragment$PaymentRecordFields$created.stub(_res);

  CopyWith$Fragment$PaymentRecordFields$modified<TRes> get modified =>
      CopyWith$Fragment$PaymentRecordFields$modified.stub(_res);

  tickets(_fn) => _res;

  paymentRecordItems(_fn) => _res;
}

const fragmentDefinitionPaymentRecordFields = FragmentDefinitionNode(
  name: NameNode(value: 'PaymentRecordFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'PaymentRecord'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'paymentMethod'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'needAuthorization'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'authorizationDetails'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'type'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'referenceId'),
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
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
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
        name: NameNode(value: 'yardCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
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
        name: NameNode(value: 'ticketIds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'totalAmount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'cashDeductions'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'roundingAdjustment'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'haulageCharge'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'advanceOffset'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'totalFee'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'roundingAdjustmentOnFee'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'payableAfterCostAndDeduction'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'payableAmount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'paymentMethodDetails'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'status'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'paymentType'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'tickets'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'TicketFields'),
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
        name: NameNode(value: 'paymentRecordItems'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'PaymentRecordItemFields'),
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
);
const documentNodeFragmentPaymentRecordFields = DocumentNode(
  definitions: [
    fragmentDefinitionPaymentRecordFields,
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
    fragmentDefinitionPaymentRecordItemFields,
  ],
);

class Fragment$PaymentRecordFields$authorizationDetails {
  Fragment$PaymentRecordFields$authorizationDetails({
    required this.type,
    required this.referenceId,
    this.$__typename = 'AuthorizationDetails',
  });

  factory Fragment$PaymentRecordFields$authorizationDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$type = json['type'];
    final l$referenceId = json['referenceId'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentRecordFields$authorizationDetails(
      type: fromJson$Enum$AuthorizationType((l$type as String)),
      referenceId: (l$referenceId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$AuthorizationType type;

  final String referenceId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = toJson$Enum$AuthorizationType(l$type);
    final l$referenceId = referenceId;
    _resultData['referenceId'] = l$referenceId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$referenceId = referenceId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$type, l$referenceId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentRecordFields$authorizationDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$referenceId = referenceId;
    final lOther$referenceId = other.referenceId;
    if (l$referenceId != lOther$referenceId) {
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

extension UtilityExtension$Fragment$PaymentRecordFields$authorizationDetails
    on Fragment$PaymentRecordFields$authorizationDetails {
  CopyWith$Fragment$PaymentRecordFields$authorizationDetails<
    Fragment$PaymentRecordFields$authorizationDetails
  >
  get copyWith => CopyWith$Fragment$PaymentRecordFields$authorizationDetails(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$PaymentRecordFields$authorizationDetails<
  TRes
> {
  factory CopyWith$Fragment$PaymentRecordFields$authorizationDetails(
    Fragment$PaymentRecordFields$authorizationDetails instance,
    TRes Function(Fragment$PaymentRecordFields$authorizationDetails) then,
  ) = _CopyWithImpl$Fragment$PaymentRecordFields$authorizationDetails;

  factory CopyWith$Fragment$PaymentRecordFields$authorizationDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentRecordFields$authorizationDetails;

  TRes call({
    Enum$AuthorizationType? type,
    String? referenceId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentRecordFields$authorizationDetails<TRes>
    implements
        CopyWith$Fragment$PaymentRecordFields$authorizationDetails<TRes> {
  _CopyWithImpl$Fragment$PaymentRecordFields$authorizationDetails(
    this._instance,
    this._then,
  );

  final Fragment$PaymentRecordFields$authorizationDetails _instance;

  final TRes Function(Fragment$PaymentRecordFields$authorizationDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? referenceId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentRecordFields$authorizationDetails(
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$AuthorizationType),
      referenceId: referenceId == _undefined || referenceId == null
          ? _instance.referenceId
          : (referenceId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentRecordFields$authorizationDetails<TRes>
    implements
        CopyWith$Fragment$PaymentRecordFields$authorizationDetails<TRes> {
  _CopyWithStubImpl$Fragment$PaymentRecordFields$authorizationDetails(
    this._res,
  );

  TRes _res;

  call({
    Enum$AuthorizationType? type,
    String? referenceId,
    String? $__typename,
  }) => _res;
}

class Fragment$PaymentRecordFields$created {
  Fragment$PaymentRecordFields$created({
    required this.userInfoId,
    required this.at,
    required this.userName,
    this.$__typename = 'Created',
  });

  factory Fragment$PaymentRecordFields$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentRecordFields$created(
      userInfoId: (l$userInfoId as String),
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final DateTime at;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$at = at;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$at, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentRecordFields$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$PaymentRecordFields$created
    on Fragment$PaymentRecordFields$created {
  CopyWith$Fragment$PaymentRecordFields$created<
    Fragment$PaymentRecordFields$created
  >
  get copyWith => CopyWith$Fragment$PaymentRecordFields$created(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentRecordFields$created<TRes> {
  factory CopyWith$Fragment$PaymentRecordFields$created(
    Fragment$PaymentRecordFields$created instance,
    TRes Function(Fragment$PaymentRecordFields$created) then,
  ) = _CopyWithImpl$Fragment$PaymentRecordFields$created;

  factory CopyWith$Fragment$PaymentRecordFields$created.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentRecordFields$created;

  TRes call({
    String? userInfoId,
    DateTime? at,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentRecordFields$created<TRes>
    implements CopyWith$Fragment$PaymentRecordFields$created<TRes> {
  _CopyWithImpl$Fragment$PaymentRecordFields$created(
    this._instance,
    this._then,
  );

  final Fragment$PaymentRecordFields$created _instance;

  final TRes Function(Fragment$PaymentRecordFields$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentRecordFields$created(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentRecordFields$created<TRes>
    implements CopyWith$Fragment$PaymentRecordFields$created<TRes> {
  _CopyWithStubImpl$Fragment$PaymentRecordFields$created(this._res);

  TRes _res;

  call({
    String? userInfoId,
    DateTime? at,
    String? userName,
    String? $__typename,
  }) => _res;
}

class Fragment$PaymentRecordFields$modified {
  Fragment$PaymentRecordFields$modified({
    required this.userInfoId,
    required this.at,
    required this.userName,
    this.$__typename = 'Modified',
  });

  factory Fragment$PaymentRecordFields$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$at = json['at'];
    final l$userName = json['userName'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentRecordFields$modified(
      userInfoId: (l$userInfoId as String),
      at: DateTime.parse((l$at as String)),
      userName: (l$userName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final DateTime at;

  final String userName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$at = at;
    final l$userName = userName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$at, l$userName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentRecordFields$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$PaymentRecordFields$modified
    on Fragment$PaymentRecordFields$modified {
  CopyWith$Fragment$PaymentRecordFields$modified<
    Fragment$PaymentRecordFields$modified
  >
  get copyWith =>
      CopyWith$Fragment$PaymentRecordFields$modified(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentRecordFields$modified<TRes> {
  factory CopyWith$Fragment$PaymentRecordFields$modified(
    Fragment$PaymentRecordFields$modified instance,
    TRes Function(Fragment$PaymentRecordFields$modified) then,
  ) = _CopyWithImpl$Fragment$PaymentRecordFields$modified;

  factory CopyWith$Fragment$PaymentRecordFields$modified.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentRecordFields$modified;

  TRes call({
    String? userInfoId,
    DateTime? at,
    String? userName,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentRecordFields$modified<TRes>
    implements CopyWith$Fragment$PaymentRecordFields$modified<TRes> {
  _CopyWithImpl$Fragment$PaymentRecordFields$modified(
    this._instance,
    this._then,
  );

  final Fragment$PaymentRecordFields$modified _instance;

  final TRes Function(Fragment$PaymentRecordFields$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? at = _undefined,
    Object? userName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentRecordFields$modified(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentRecordFields$modified<TRes>
    implements CopyWith$Fragment$PaymentRecordFields$modified<TRes> {
  _CopyWithStubImpl$Fragment$PaymentRecordFields$modified(this._res);

  TRes _res;

  call({
    String? userInfoId,
    DateTime? at,
    String? userName,
    String? $__typename,
  }) => _res;
}
