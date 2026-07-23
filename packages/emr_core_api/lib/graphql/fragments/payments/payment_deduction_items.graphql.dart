import '../../schema.graphql.dart';
import 'encashment_values.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$PaymentDeductionItemFields {
  Fragment$PaymentDeductionItemFields({
    required this.paymentMethod,
    required this.grossAmount,
    required this.totalFee,
    required this.payableAfterCostAndDeduction,
    required this.payableAmount,
    required this.roundingAdjustment,
    this.encashmentValues,
    this.$__typename = 'PaymentDeductionItem',
  });

  factory Fragment$PaymentDeductionItemFields.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$paymentMethod = json['paymentMethod'];
    final l$grossAmount = json['grossAmount'];
    final l$totalFee = json['totalFee'];
    final l$payableAfterCostAndDeduction = json['payableAfterCostAndDeduction'];
    final l$payableAmount = json['payableAmount'];
    final l$roundingAdjustment = json['roundingAdjustment'];
    final l$encashmentValues = json['encashmentValues'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentDeductionItemFields(
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      grossAmount: (l$grossAmount as num).toDouble(),
      totalFee: (l$totalFee as num).toDouble(),
      payableAfterCostAndDeduction: (l$payableAfterCostAndDeduction as num)
          .toDouble(),
      payableAmount: (l$payableAmount as num).toDouble(),
      roundingAdjustment: (l$roundingAdjustment as num).toDouble(),
      encashmentValues: l$encashmentValues == null
          ? null
          : Fragment$EncashmentValueFields.fromJson(
              (l$encashmentValues as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PaymentMethod paymentMethod;

  final double grossAmount;

  final double totalFee;

  final double payableAfterCostAndDeduction;

  final double payableAmount;

  final double roundingAdjustment;

  final Fragment$EncashmentValueFields? encashmentValues;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$grossAmount = grossAmount;
    _resultData['grossAmount'] = l$grossAmount;
    final l$totalFee = totalFee;
    _resultData['totalFee'] = l$totalFee;
    final l$payableAfterCostAndDeduction = payableAfterCostAndDeduction;
    _resultData['payableAfterCostAndDeduction'] =
        l$payableAfterCostAndDeduction;
    final l$payableAmount = payableAmount;
    _resultData['payableAmount'] = l$payableAmount;
    final l$roundingAdjustment = roundingAdjustment;
    _resultData['roundingAdjustment'] = l$roundingAdjustment;
    final l$encashmentValues = encashmentValues;
    _resultData['encashmentValues'] = l$encashmentValues?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentMethod = paymentMethod;
    final l$grossAmount = grossAmount;
    final l$totalFee = totalFee;
    final l$payableAfterCostAndDeduction = payableAfterCostAndDeduction;
    final l$payableAmount = payableAmount;
    final l$roundingAdjustment = roundingAdjustment;
    final l$encashmentValues = encashmentValues;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paymentMethod,
      l$grossAmount,
      l$totalFee,
      l$payableAfterCostAndDeduction,
      l$payableAmount,
      l$roundingAdjustment,
      l$encashmentValues,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentDeductionItemFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$grossAmount = grossAmount;
    final lOther$grossAmount = other.grossAmount;
    if (l$grossAmount != lOther$grossAmount) {
      return false;
    }
    final l$totalFee = totalFee;
    final lOther$totalFee = other.totalFee;
    if (l$totalFee != lOther$totalFee) {
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
    final l$roundingAdjustment = roundingAdjustment;
    final lOther$roundingAdjustment = other.roundingAdjustment;
    if (l$roundingAdjustment != lOther$roundingAdjustment) {
      return false;
    }
    final l$encashmentValues = encashmentValues;
    final lOther$encashmentValues = other.encashmentValues;
    if (l$encashmentValues != lOther$encashmentValues) {
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

extension UtilityExtension$Fragment$PaymentDeductionItemFields
    on Fragment$PaymentDeductionItemFields {
  CopyWith$Fragment$PaymentDeductionItemFields<
    Fragment$PaymentDeductionItemFields
  >
  get copyWith => CopyWith$Fragment$PaymentDeductionItemFields(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentDeductionItemFields<TRes> {
  factory CopyWith$Fragment$PaymentDeductionItemFields(
    Fragment$PaymentDeductionItemFields instance,
    TRes Function(Fragment$PaymentDeductionItemFields) then,
  ) = _CopyWithImpl$Fragment$PaymentDeductionItemFields;

  factory CopyWith$Fragment$PaymentDeductionItemFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentDeductionItemFields;

  TRes call({
    Enum$PaymentMethod? paymentMethod,
    double? grossAmount,
    double? totalFee,
    double? payableAfterCostAndDeduction,
    double? payableAmount,
    double? roundingAdjustment,
    Fragment$EncashmentValueFields? encashmentValues,
    String? $__typename,
  });
  CopyWith$Fragment$EncashmentValueFields<TRes> get encashmentValues;
}

class _CopyWithImpl$Fragment$PaymentDeductionItemFields<TRes>
    implements CopyWith$Fragment$PaymentDeductionItemFields<TRes> {
  _CopyWithImpl$Fragment$PaymentDeductionItemFields(this._instance, this._then);

  final Fragment$PaymentDeductionItemFields _instance;

  final TRes Function(Fragment$PaymentDeductionItemFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentMethod = _undefined,
    Object? grossAmount = _undefined,
    Object? totalFee = _undefined,
    Object? payableAfterCostAndDeduction = _undefined,
    Object? payableAmount = _undefined,
    Object? roundingAdjustment = _undefined,
    Object? encashmentValues = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentDeductionItemFields(
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      grossAmount: grossAmount == _undefined || grossAmount == null
          ? _instance.grossAmount
          : (grossAmount as double),
      totalFee: totalFee == _undefined || totalFee == null
          ? _instance.totalFee
          : (totalFee as double),
      payableAfterCostAndDeduction:
          payableAfterCostAndDeduction == _undefined ||
              payableAfterCostAndDeduction == null
          ? _instance.payableAfterCostAndDeduction
          : (payableAfterCostAndDeduction as double),
      payableAmount: payableAmount == _undefined || payableAmount == null
          ? _instance.payableAmount
          : (payableAmount as double),
      roundingAdjustment:
          roundingAdjustment == _undefined || roundingAdjustment == null
          ? _instance.roundingAdjustment
          : (roundingAdjustment as double),
      encashmentValues: encashmentValues == _undefined
          ? _instance.encashmentValues
          : (encashmentValues as Fragment$EncashmentValueFields?),
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
}

class _CopyWithStubImpl$Fragment$PaymentDeductionItemFields<TRes>
    implements CopyWith$Fragment$PaymentDeductionItemFields<TRes> {
  _CopyWithStubImpl$Fragment$PaymentDeductionItemFields(this._res);

  TRes _res;

  call({
    Enum$PaymentMethod? paymentMethod,
    double? grossAmount,
    double? totalFee,
    double? payableAfterCostAndDeduction,
    double? payableAmount,
    double? roundingAdjustment,
    Fragment$EncashmentValueFields? encashmentValues,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$EncashmentValueFields<TRes> get encashmentValues =>
      CopyWith$Fragment$EncashmentValueFields.stub(_res);
}

const fragmentDefinitionPaymentDeductionItemFields = FragmentDefinitionNode(
  name: NameNode(value: 'PaymentDeductionItemFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'PaymentDeductionItem'),
      isNonNull: false,
    ),
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
        name: NameNode(value: 'grossAmount'),
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
        name: NameNode(value: 'roundingAdjustment'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentPaymentDeductionItemFields = DocumentNode(
  definitions: [
    fragmentDefinitionPaymentDeductionItemFields,
    fragmentDefinitionEncashmentValueFields,
  ],
);
