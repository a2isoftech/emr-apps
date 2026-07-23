import '../payment/advance_fields.graphql.dart';
import 'encashment_values.graphql.dart';
import 'package:gql/ast.dart';
import 'payment_deduction_items.graphql.dart';

class Fragment$PaymentDeductionFields {
  Fragment$PaymentDeductionFields({
    required this.grossAmount,
    required this.cashDeductions,
    required this.totalFee,
    required this.totalAdvanceOffset,
    required this.netPayable,
    required this.netPaid,
    required this.roundingAdjustmentOnFee,
    required this.haulageCharges,
    this.encashmentValues,
    this.paymentDeductionItems,
    this.advanceDetails,
    this.$__typename = 'PaymentDeductions',
  });

  factory Fragment$PaymentDeductionFields.fromJson(Map<String, dynamic> json) {
    final l$grossAmount = json['grossAmount'];
    final l$cashDeductions = json['cashDeductions'];
    final l$totalFee = json['totalFee'];
    final l$totalAdvanceOffset = json['totalAdvanceOffset'];
    final l$netPayable = json['netPayable'];
    final l$netPaid = json['netPaid'];
    final l$roundingAdjustmentOnFee = json['roundingAdjustmentOnFee'];
    final l$haulageCharges = json['haulageCharges'];
    final l$encashmentValues = json['encashmentValues'];
    final l$paymentDeductionItems = json['paymentDeductionItems'];
    final l$advanceDetails = json['advanceDetails'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentDeductionFields(
      grossAmount: (l$grossAmount as num).toDouble(),
      cashDeductions: (l$cashDeductions as num).toDouble(),
      totalFee: (l$totalFee as num).toDouble(),
      totalAdvanceOffset: (l$totalAdvanceOffset as num).toDouble(),
      netPayable: (l$netPayable as num).toDouble(),
      netPaid: (l$netPaid as num).toDouble(),
      roundingAdjustmentOnFee: (l$roundingAdjustmentOnFee as num).toDouble(),
      haulageCharges: (l$haulageCharges as num).toDouble(),
      encashmentValues: l$encashmentValues == null
          ? null
          : Fragment$EncashmentValueFields.fromJson(
              (l$encashmentValues as Map<String, dynamic>),
            ),
      paymentDeductionItems: (l$paymentDeductionItems as List<dynamic>?)
          ?.map(
            (e) => Fragment$PaymentDeductionItemFields.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      advanceDetails: l$advanceDetails == null
          ? null
          : Fragment$PaymentDeductionFields$advanceDetails.fromJson(
              (l$advanceDetails as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final double grossAmount;

  final double cashDeductions;

  final double totalFee;

  final double totalAdvanceOffset;

  final double netPayable;

  final double netPaid;

  final double roundingAdjustmentOnFee;

  final double haulageCharges;

  final Fragment$EncashmentValueFields? encashmentValues;

  final List<Fragment$PaymentDeductionItemFields>? paymentDeductionItems;

  final Fragment$PaymentDeductionFields$advanceDetails? advanceDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$grossAmount = grossAmount;
    _resultData['grossAmount'] = l$grossAmount;
    final l$cashDeductions = cashDeductions;
    _resultData['cashDeductions'] = l$cashDeductions;
    final l$totalFee = totalFee;
    _resultData['totalFee'] = l$totalFee;
    final l$totalAdvanceOffset = totalAdvanceOffset;
    _resultData['totalAdvanceOffset'] = l$totalAdvanceOffset;
    final l$netPayable = netPayable;
    _resultData['netPayable'] = l$netPayable;
    final l$netPaid = netPaid;
    _resultData['netPaid'] = l$netPaid;
    final l$roundingAdjustmentOnFee = roundingAdjustmentOnFee;
    _resultData['roundingAdjustmentOnFee'] = l$roundingAdjustmentOnFee;
    final l$haulageCharges = haulageCharges;
    _resultData['haulageCharges'] = l$haulageCharges;
    final l$encashmentValues = encashmentValues;
    _resultData['encashmentValues'] = l$encashmentValues?.toJson();
    final l$paymentDeductionItems = paymentDeductionItems;
    _resultData['paymentDeductionItems'] = l$paymentDeductionItems
        ?.map((e) => e.toJson())
        .toList();
    final l$advanceDetails = advanceDetails;
    _resultData['advanceDetails'] = l$advanceDetails?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$grossAmount = grossAmount;
    final l$cashDeductions = cashDeductions;
    final l$totalFee = totalFee;
    final l$totalAdvanceOffset = totalAdvanceOffset;
    final l$netPayable = netPayable;
    final l$netPaid = netPaid;
    final l$roundingAdjustmentOnFee = roundingAdjustmentOnFee;
    final l$haulageCharges = haulageCharges;
    final l$encashmentValues = encashmentValues;
    final l$paymentDeductionItems = paymentDeductionItems;
    final l$advanceDetails = advanceDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$grossAmount,
      l$cashDeductions,
      l$totalFee,
      l$totalAdvanceOffset,
      l$netPayable,
      l$netPaid,
      l$roundingAdjustmentOnFee,
      l$haulageCharges,
      l$encashmentValues,
      l$paymentDeductionItems == null
          ? null
          : Object.hashAll(l$paymentDeductionItems.map((v) => v)),
      l$advanceDetails,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentDeductionFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$grossAmount = grossAmount;
    final lOther$grossAmount = other.grossAmount;
    if (l$grossAmount != lOther$grossAmount) {
      return false;
    }
    final l$cashDeductions = cashDeductions;
    final lOther$cashDeductions = other.cashDeductions;
    if (l$cashDeductions != lOther$cashDeductions) {
      return false;
    }
    final l$totalFee = totalFee;
    final lOther$totalFee = other.totalFee;
    if (l$totalFee != lOther$totalFee) {
      return false;
    }
    final l$totalAdvanceOffset = totalAdvanceOffset;
    final lOther$totalAdvanceOffset = other.totalAdvanceOffset;
    if (l$totalAdvanceOffset != lOther$totalAdvanceOffset) {
      return false;
    }
    final l$netPayable = netPayable;
    final lOther$netPayable = other.netPayable;
    if (l$netPayable != lOther$netPayable) {
      return false;
    }
    final l$netPaid = netPaid;
    final lOther$netPaid = other.netPaid;
    if (l$netPaid != lOther$netPaid) {
      return false;
    }
    final l$roundingAdjustmentOnFee = roundingAdjustmentOnFee;
    final lOther$roundingAdjustmentOnFee = other.roundingAdjustmentOnFee;
    if (l$roundingAdjustmentOnFee != lOther$roundingAdjustmentOnFee) {
      return false;
    }
    final l$haulageCharges = haulageCharges;
    final lOther$haulageCharges = other.haulageCharges;
    if (l$haulageCharges != lOther$haulageCharges) {
      return false;
    }
    final l$encashmentValues = encashmentValues;
    final lOther$encashmentValues = other.encashmentValues;
    if (l$encashmentValues != lOther$encashmentValues) {
      return false;
    }
    final l$paymentDeductionItems = paymentDeductionItems;
    final lOther$paymentDeductionItems = other.paymentDeductionItems;
    if (l$paymentDeductionItems != null &&
        lOther$paymentDeductionItems != null) {
      if (l$paymentDeductionItems.length !=
          lOther$paymentDeductionItems.length) {
        return false;
      }
      for (int i = 0; i < l$paymentDeductionItems.length; i++) {
        final l$paymentDeductionItems$entry = l$paymentDeductionItems[i];
        final lOther$paymentDeductionItems$entry =
            lOther$paymentDeductionItems[i];
        if (l$paymentDeductionItems$entry !=
            lOther$paymentDeductionItems$entry) {
          return false;
        }
      }
    } else if (l$paymentDeductionItems != lOther$paymentDeductionItems) {
      return false;
    }
    final l$advanceDetails = advanceDetails;
    final lOther$advanceDetails = other.advanceDetails;
    if (l$advanceDetails != lOther$advanceDetails) {
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

extension UtilityExtension$Fragment$PaymentDeductionFields
    on Fragment$PaymentDeductionFields {
  CopyWith$Fragment$PaymentDeductionFields<Fragment$PaymentDeductionFields>
  get copyWith => CopyWith$Fragment$PaymentDeductionFields(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentDeductionFields<TRes> {
  factory CopyWith$Fragment$PaymentDeductionFields(
    Fragment$PaymentDeductionFields instance,
    TRes Function(Fragment$PaymentDeductionFields) then,
  ) = _CopyWithImpl$Fragment$PaymentDeductionFields;

  factory CopyWith$Fragment$PaymentDeductionFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentDeductionFields;

  TRes call({
    double? grossAmount,
    double? cashDeductions,
    double? totalFee,
    double? totalAdvanceOffset,
    double? netPayable,
    double? netPaid,
    double? roundingAdjustmentOnFee,
    double? haulageCharges,
    Fragment$EncashmentValueFields? encashmentValues,
    List<Fragment$PaymentDeductionItemFields>? paymentDeductionItems,
    Fragment$PaymentDeductionFields$advanceDetails? advanceDetails,
    String? $__typename,
  });
  CopyWith$Fragment$EncashmentValueFields<TRes> get encashmentValues;
  TRes paymentDeductionItems(
    Iterable<Fragment$PaymentDeductionItemFields>? Function(
      Iterable<
        CopyWith$Fragment$PaymentDeductionItemFields<
          Fragment$PaymentDeductionItemFields
        >
      >?,
    )
    _fn,
  );
  CopyWith$Fragment$PaymentDeductionFields$advanceDetails<TRes>
  get advanceDetails;
}

class _CopyWithImpl$Fragment$PaymentDeductionFields<TRes>
    implements CopyWith$Fragment$PaymentDeductionFields<TRes> {
  _CopyWithImpl$Fragment$PaymentDeductionFields(this._instance, this._then);

  final Fragment$PaymentDeductionFields _instance;

  final TRes Function(Fragment$PaymentDeductionFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? grossAmount = _undefined,
    Object? cashDeductions = _undefined,
    Object? totalFee = _undefined,
    Object? totalAdvanceOffset = _undefined,
    Object? netPayable = _undefined,
    Object? netPaid = _undefined,
    Object? roundingAdjustmentOnFee = _undefined,
    Object? haulageCharges = _undefined,
    Object? encashmentValues = _undefined,
    Object? paymentDeductionItems = _undefined,
    Object? advanceDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentDeductionFields(
      grossAmount: grossAmount == _undefined || grossAmount == null
          ? _instance.grossAmount
          : (grossAmount as double),
      cashDeductions: cashDeductions == _undefined || cashDeductions == null
          ? _instance.cashDeductions
          : (cashDeductions as double),
      totalFee: totalFee == _undefined || totalFee == null
          ? _instance.totalFee
          : (totalFee as double),
      totalAdvanceOffset:
          totalAdvanceOffset == _undefined || totalAdvanceOffset == null
          ? _instance.totalAdvanceOffset
          : (totalAdvanceOffset as double),
      netPayable: netPayable == _undefined || netPayable == null
          ? _instance.netPayable
          : (netPayable as double),
      netPaid: netPaid == _undefined || netPaid == null
          ? _instance.netPaid
          : (netPaid as double),
      roundingAdjustmentOnFee:
          roundingAdjustmentOnFee == _undefined ||
              roundingAdjustmentOnFee == null
          ? _instance.roundingAdjustmentOnFee
          : (roundingAdjustmentOnFee as double),
      haulageCharges: haulageCharges == _undefined || haulageCharges == null
          ? _instance.haulageCharges
          : (haulageCharges as double),
      encashmentValues: encashmentValues == _undefined
          ? _instance.encashmentValues
          : (encashmentValues as Fragment$EncashmentValueFields?),
      paymentDeductionItems: paymentDeductionItems == _undefined
          ? _instance.paymentDeductionItems
          : (paymentDeductionItems
                as List<Fragment$PaymentDeductionItemFields>?),
      advanceDetails: advanceDetails == _undefined
          ? _instance.advanceDetails
          : (advanceDetails as Fragment$PaymentDeductionFields$advanceDetails?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$EncashmentValueFields<TRes> get encashmentValues {
    final local$encashmentValues = _instance.encashmentValues;
    return local$encashmentValues == null
        ? CopyWith$Fragment$EncashmentValueFields.stub(_then(_instance))
        : CopyWith$Fragment$EncashmentValueFields(
            local$encashmentValues,
            (e) => call(encashmentValues: e),
          );
  }

  TRes paymentDeductionItems(
    Iterable<Fragment$PaymentDeductionItemFields>? Function(
      Iterable<
        CopyWith$Fragment$PaymentDeductionItemFields<
          Fragment$PaymentDeductionItemFields
        >
      >?,
    )
    _fn,
  ) => call(
    paymentDeductionItems: _fn(
      _instance.paymentDeductionItems?.map(
        (e) => CopyWith$Fragment$PaymentDeductionItemFields(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Fragment$PaymentDeductionFields$advanceDetails<TRes>
  get advanceDetails {
    final local$advanceDetails = _instance.advanceDetails;
    return local$advanceDetails == null
        ? CopyWith$Fragment$PaymentDeductionFields$advanceDetails.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$PaymentDeductionFields$advanceDetails(
            local$advanceDetails,
            (e) => call(advanceDetails: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$PaymentDeductionFields<TRes>
    implements CopyWith$Fragment$PaymentDeductionFields<TRes> {
  _CopyWithStubImpl$Fragment$PaymentDeductionFields(this._res);

  TRes _res;

  call({
    double? grossAmount,
    double? cashDeductions,
    double? totalFee,
    double? totalAdvanceOffset,
    double? netPayable,
    double? netPaid,
    double? roundingAdjustmentOnFee,
    double? haulageCharges,
    Fragment$EncashmentValueFields? encashmentValues,
    List<Fragment$PaymentDeductionItemFields>? paymentDeductionItems,
    Fragment$PaymentDeductionFields$advanceDetails? advanceDetails,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$EncashmentValueFields<TRes> get encashmentValues =>
      CopyWith$Fragment$EncashmentValueFields.stub(_res);

  paymentDeductionItems(_fn) => _res;

  CopyWith$Fragment$PaymentDeductionFields$advanceDetails<TRes>
  get advanceDetails =>
      CopyWith$Fragment$PaymentDeductionFields$advanceDetails.stub(_res);
}

const fragmentDefinitionPaymentDeductionFields = FragmentDefinitionNode(
  name: NameNode(value: 'PaymentDeductionFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'PaymentDeductions'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'grossAmount'),
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
        name: NameNode(value: 'totalFee'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'totalAdvanceOffset'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'netPayable'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'netPaid'),
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
        name: NameNode(value: 'haulageCharges'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'encashmentValues'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'EncashmentValueFields'),
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
        name: NameNode(value: 'paymentDeductionItems'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'PaymentDeductionItemFields'),
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
        name: NameNode(value: 'advanceDetails'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'totalOffset'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'advanceAmountBreakup'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'advanceId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'advanceAmountBeforeOffset'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'applicableOffset'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'advanceAmountAfterOffset'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'details'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FragmentSpreadNode(
                          name: NameNode(value: 'AdvanceFields'),
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
const documentNodeFragmentPaymentDeductionFields = DocumentNode(
  definitions: [
    fragmentDefinitionPaymentDeductionFields,
    fragmentDefinitionEncashmentValueFields,
    fragmentDefinitionPaymentDeductionItemFields,
    fragmentDefinitionAdvanceFields,
  ],
);

class Fragment$PaymentDeductionFields$advanceDetails {
  Fragment$PaymentDeductionFields$advanceDetails({
    required this.totalOffset,
    required this.advanceAmountBreakup,
    this.$__typename = 'AdvanceAdjustmentResult',
  });

  factory Fragment$PaymentDeductionFields$advanceDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalOffset = json['totalOffset'];
    final l$advanceAmountBreakup = json['advanceAmountBreakup'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentDeductionFields$advanceDetails(
      totalOffset: (l$totalOffset as num).toDouble(),
      advanceAmountBreakup: (l$advanceAmountBreakup as List<dynamic>)
          .map(
            (e) =>
                Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final double totalOffset;

  final List<
    Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup
  >
  advanceAmountBreakup;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalOffset = totalOffset;
    _resultData['totalOffset'] = l$totalOffset;
    final l$advanceAmountBreakup = advanceAmountBreakup;
    _resultData['advanceAmountBreakup'] = l$advanceAmountBreakup
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalOffset = totalOffset;
    final l$advanceAmountBreakup = advanceAmountBreakup;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalOffset,
      Object.hashAll(l$advanceAmountBreakup.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentDeductionFields$advanceDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalOffset = totalOffset;
    final lOther$totalOffset = other.totalOffset;
    if (l$totalOffset != lOther$totalOffset) {
      return false;
    }
    final l$advanceAmountBreakup = advanceAmountBreakup;
    final lOther$advanceAmountBreakup = other.advanceAmountBreakup;
    if (l$advanceAmountBreakup.length != lOther$advanceAmountBreakup.length) {
      return false;
    }
    for (int i = 0; i < l$advanceAmountBreakup.length; i++) {
      final l$advanceAmountBreakup$entry = l$advanceAmountBreakup[i];
      final lOther$advanceAmountBreakup$entry = lOther$advanceAmountBreakup[i];
      if (l$advanceAmountBreakup$entry != lOther$advanceAmountBreakup$entry) {
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

extension UtilityExtension$Fragment$PaymentDeductionFields$advanceDetails
    on Fragment$PaymentDeductionFields$advanceDetails {
  CopyWith$Fragment$PaymentDeductionFields$advanceDetails<
    Fragment$PaymentDeductionFields$advanceDetails
  >
  get copyWith =>
      CopyWith$Fragment$PaymentDeductionFields$advanceDetails(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentDeductionFields$advanceDetails<TRes> {
  factory CopyWith$Fragment$PaymentDeductionFields$advanceDetails(
    Fragment$PaymentDeductionFields$advanceDetails instance,
    TRes Function(Fragment$PaymentDeductionFields$advanceDetails) then,
  ) = _CopyWithImpl$Fragment$PaymentDeductionFields$advanceDetails;

  factory CopyWith$Fragment$PaymentDeductionFields$advanceDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentDeductionFields$advanceDetails;

  TRes call({
    double? totalOffset,
    List<Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup>?
    advanceAmountBreakup,
    String? $__typename,
  });
  TRes advanceAmountBreakup(
    Iterable<
      Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup
    >
    Function(
      Iterable<
        CopyWith$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup<
          Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$PaymentDeductionFields$advanceDetails<TRes>
    implements CopyWith$Fragment$PaymentDeductionFields$advanceDetails<TRes> {
  _CopyWithImpl$Fragment$PaymentDeductionFields$advanceDetails(
    this._instance,
    this._then,
  );

  final Fragment$PaymentDeductionFields$advanceDetails _instance;

  final TRes Function(Fragment$PaymentDeductionFields$advanceDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalOffset = _undefined,
    Object? advanceAmountBreakup = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentDeductionFields$advanceDetails(
      totalOffset: totalOffset == _undefined || totalOffset == null
          ? _instance.totalOffset
          : (totalOffset as double),
      advanceAmountBreakup:
          advanceAmountBreakup == _undefined || advanceAmountBreakup == null
          ? _instance.advanceAmountBreakup
          : (advanceAmountBreakup
                as List<
                  Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes advanceAmountBreakup(
    Iterable<
      Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup
    >
    Function(
      Iterable<
        CopyWith$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup<
          Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup
        >
      >,
    )
    _fn,
  ) => call(
    advanceAmountBreakup: _fn(
      _instance.advanceAmountBreakup.map(
        (e) =>
            CopyWith$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$PaymentDeductionFields$advanceDetails<TRes>
    implements CopyWith$Fragment$PaymentDeductionFields$advanceDetails<TRes> {
  _CopyWithStubImpl$Fragment$PaymentDeductionFields$advanceDetails(this._res);

  TRes _res;

  call({
    double? totalOffset,
    List<Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup>?
    advanceAmountBreakup,
    String? $__typename,
  }) => _res;

  advanceAmountBreakup(_fn) => _res;
}

class Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup {
  Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup({
    required this.advanceId,
    required this.advanceAmountBeforeOffset,
    required this.applicableOffset,
    required this.advanceAmountAfterOffset,
    this.details,
    this.$__typename = 'AdvanceUsage',
  });

  factory Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$advanceId = json['advanceId'];
    final l$advanceAmountBeforeOffset = json['advanceAmountBeforeOffset'];
    final l$applicableOffset = json['applicableOffset'];
    final l$advanceAmountAfterOffset = json['advanceAmountAfterOffset'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup(
      advanceId: (l$advanceId as String),
      advanceAmountBeforeOffset: (l$advanceAmountBeforeOffset as num)
          .toDouble(),
      applicableOffset: (l$applicableOffset as num).toDouble(),
      advanceAmountAfterOffset: (l$advanceAmountAfterOffset as num).toDouble(),
      details: l$details == null
          ? null
          : Fragment$AdvanceFields.fromJson(
              (l$details as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String advanceId;

  final double advanceAmountBeforeOffset;

  final double applicableOffset;

  final double advanceAmountAfterOffset;

  final Fragment$AdvanceFields? details;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$advanceId = advanceId;
    _resultData['advanceId'] = l$advanceId;
    final l$advanceAmountBeforeOffset = advanceAmountBeforeOffset;
    _resultData['advanceAmountBeforeOffset'] = l$advanceAmountBeforeOffset;
    final l$applicableOffset = applicableOffset;
    _resultData['applicableOffset'] = l$applicableOffset;
    final l$advanceAmountAfterOffset = advanceAmountAfterOffset;
    _resultData['advanceAmountAfterOffset'] = l$advanceAmountAfterOffset;
    final l$details = details;
    _resultData['details'] = l$details?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$advanceId = advanceId;
    final l$advanceAmountBeforeOffset = advanceAmountBeforeOffset;
    final l$applicableOffset = applicableOffset;
    final l$advanceAmountAfterOffset = advanceAmountAfterOffset;
    final l$details = details;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$advanceId,
      l$advanceAmountBeforeOffset,
      l$applicableOffset,
      l$advanceAmountAfterOffset,
      l$details,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$advanceId = advanceId;
    final lOther$advanceId = other.advanceId;
    if (l$advanceId != lOther$advanceId) {
      return false;
    }
    final l$advanceAmountBeforeOffset = advanceAmountBeforeOffset;
    final lOther$advanceAmountBeforeOffset = other.advanceAmountBeforeOffset;
    if (l$advanceAmountBeforeOffset != lOther$advanceAmountBeforeOffset) {
      return false;
    }
    final l$applicableOffset = applicableOffset;
    final lOther$applicableOffset = other.applicableOffset;
    if (l$applicableOffset != lOther$applicableOffset) {
      return false;
    }
    final l$advanceAmountAfterOffset = advanceAmountAfterOffset;
    final lOther$advanceAmountAfterOffset = other.advanceAmountAfterOffset;
    if (l$advanceAmountAfterOffset != lOther$advanceAmountAfterOffset) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
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

extension UtilityExtension$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup
    on Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup {
  CopyWith$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup<
    Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup
  >
  get copyWith =>
      CopyWith$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup<
  TRes
> {
  factory CopyWith$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup(
    Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup
    instance,
    TRes Function(
      Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup,
    )
    then,
  ) = _CopyWithImpl$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup;

  factory CopyWith$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup;

  TRes call({
    String? advanceId,
    double? advanceAmountBeforeOffset,
    double? applicableOffset,
    double? advanceAmountAfterOffset,
    Fragment$AdvanceFields? details,
    String? $__typename,
  });
  CopyWith$Fragment$AdvanceFields<TRes> get details;
}

class _CopyWithImpl$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup<
  TRes
>
    implements
        CopyWith$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup<
          TRes
        > {
  _CopyWithImpl$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup(
    this._instance,
    this._then,
  );

  final Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup
  _instance;

  final TRes Function(
    Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? advanceId = _undefined,
    Object? advanceAmountBeforeOffset = _undefined,
    Object? applicableOffset = _undefined,
    Object? advanceAmountAfterOffset = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup(
      advanceId: advanceId == _undefined || advanceId == null
          ? _instance.advanceId
          : (advanceId as String),
      advanceAmountBeforeOffset:
          advanceAmountBeforeOffset == _undefined ||
              advanceAmountBeforeOffset == null
          ? _instance.advanceAmountBeforeOffset
          : (advanceAmountBeforeOffset as double),
      applicableOffset:
          applicableOffset == _undefined || applicableOffset == null
          ? _instance.applicableOffset
          : (applicableOffset as double),
      advanceAmountAfterOffset:
          advanceAmountAfterOffset == _undefined ||
              advanceAmountAfterOffset == null
          ? _instance.advanceAmountAfterOffset
          : (advanceAmountAfterOffset as double),
      details: details == _undefined
          ? _instance.details
          : (details as Fragment$AdvanceFields?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AdvanceFields<TRes> get details {
    final local$details = _instance.details;
    return local$details == null
        ? CopyWith$Fragment$AdvanceFields.stub(_then(_instance))
        : CopyWith$Fragment$AdvanceFields(
            local$details,
            (e) => call(details: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup<
  TRes
>
    implements
        CopyWith$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup<
          TRes
        > {
  _CopyWithStubImpl$Fragment$PaymentDeductionFields$advanceDetails$advanceAmountBreakup(
    this._res,
  );

  TRes _res;

  call({
    String? advanceId,
    double? advanceAmountBeforeOffset,
    double? applicableOffset,
    double? advanceAmountAfterOffset,
    Fragment$AdvanceFields? details,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$AdvanceFields<TRes> get details =>
      CopyWith$Fragment$AdvanceFields.stub(_res);
}
