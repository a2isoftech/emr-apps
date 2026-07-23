import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$PaymentRecordItemFields {
  Fragment$PaymentRecordItemFields({
    required this.paymentMethod,
    required this.totalAmount,
    required this.totalFee,
    required this.payableAfterCost,
    required this.payableAmount,
    this.paymentMethodDetails,
    this.$__typename = 'PaymentRecordItem',
  });

  factory Fragment$PaymentRecordItemFields.fromJson(Map<String, dynamic> json) {
    final l$paymentMethod = json['paymentMethod'];
    final l$totalAmount = json['totalAmount'];
    final l$totalFee = json['totalFee'];
    final l$payableAfterCost = json['payableAfterCost'];
    final l$payableAmount = json['payableAmount'];
    final l$paymentMethodDetails = json['paymentMethodDetails'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentRecordItemFields(
      paymentMethod: fromJson$Enum$PaymentMethod((l$paymentMethod as String)),
      totalAmount: (l$totalAmount as num).toDouble(),
      totalFee: (l$totalFee as num).toDouble(),
      payableAfterCost: (l$payableAfterCost as num).toDouble(),
      payableAmount: (l$payableAmount as num).toDouble(),
      paymentMethodDetails: (l$paymentMethodDetails as Map<String, dynamic>?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$PaymentMethod paymentMethod;

  final double totalAmount;

  final double totalFee;

  final double payableAfterCost;

  final double payableAmount;

  final Map<String, dynamic>? paymentMethodDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$totalAmount = totalAmount;
    _resultData['totalAmount'] = l$totalAmount;
    final l$totalFee = totalFee;
    _resultData['totalFee'] = l$totalFee;
    final l$payableAfterCost = payableAfterCost;
    _resultData['payableAfterCost'] = l$payableAfterCost;
    final l$payableAmount = payableAmount;
    _resultData['payableAmount'] = l$payableAmount;
    final l$paymentMethodDetails = paymentMethodDetails;
    _resultData['paymentMethodDetails'] = l$paymentMethodDetails;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentMethod = paymentMethod;
    final l$totalAmount = totalAmount;
    final l$totalFee = totalFee;
    final l$payableAfterCost = payableAfterCost;
    final l$payableAmount = payableAmount;
    final l$paymentMethodDetails = paymentMethodDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paymentMethod,
      l$totalAmount,
      l$totalFee,
      l$payableAfterCost,
      l$payableAmount,
      l$paymentMethodDetails,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentRecordItemFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$totalAmount = totalAmount;
    final lOther$totalAmount = other.totalAmount;
    if (l$totalAmount != lOther$totalAmount) {
      return false;
    }
    final l$totalFee = totalFee;
    final lOther$totalFee = other.totalFee;
    if (l$totalFee != lOther$totalFee) {
      return false;
    }
    final l$payableAfterCost = payableAfterCost;
    final lOther$payableAfterCost = other.payableAfterCost;
    if (l$payableAfterCost != lOther$payableAfterCost) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$PaymentRecordItemFields
    on Fragment$PaymentRecordItemFields {
  CopyWith$Fragment$PaymentRecordItemFields<Fragment$PaymentRecordItemFields>
  get copyWith => CopyWith$Fragment$PaymentRecordItemFields(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentRecordItemFields<TRes> {
  factory CopyWith$Fragment$PaymentRecordItemFields(
    Fragment$PaymentRecordItemFields instance,
    TRes Function(Fragment$PaymentRecordItemFields) then,
  ) = _CopyWithImpl$Fragment$PaymentRecordItemFields;

  factory CopyWith$Fragment$PaymentRecordItemFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentRecordItemFields;

  TRes call({
    Enum$PaymentMethod? paymentMethod,
    double? totalAmount,
    double? totalFee,
    double? payableAfterCost,
    double? payableAmount,
    Map<String, dynamic>? paymentMethodDetails,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentRecordItemFields<TRes>
    implements CopyWith$Fragment$PaymentRecordItemFields<TRes> {
  _CopyWithImpl$Fragment$PaymentRecordItemFields(this._instance, this._then);

  final Fragment$PaymentRecordItemFields _instance;

  final TRes Function(Fragment$PaymentRecordItemFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentMethod = _undefined,
    Object? totalAmount = _undefined,
    Object? totalFee = _undefined,
    Object? payableAfterCost = _undefined,
    Object? payableAmount = _undefined,
    Object? paymentMethodDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentRecordItemFields(
      paymentMethod: paymentMethod == _undefined || paymentMethod == null
          ? _instance.paymentMethod
          : (paymentMethod as Enum$PaymentMethod),
      totalAmount: totalAmount == _undefined || totalAmount == null
          ? _instance.totalAmount
          : (totalAmount as double),
      totalFee: totalFee == _undefined || totalFee == null
          ? _instance.totalFee
          : (totalFee as double),
      payableAfterCost:
          payableAfterCost == _undefined || payableAfterCost == null
          ? _instance.payableAfterCost
          : (payableAfterCost as double),
      payableAmount: payableAmount == _undefined || payableAmount == null
          ? _instance.payableAmount
          : (payableAmount as double),
      paymentMethodDetails: paymentMethodDetails == _undefined
          ? _instance.paymentMethodDetails
          : (paymentMethodDetails as Map<String, dynamic>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PaymentRecordItemFields<TRes>
    implements CopyWith$Fragment$PaymentRecordItemFields<TRes> {
  _CopyWithStubImpl$Fragment$PaymentRecordItemFields(this._res);

  TRes _res;

  call({
    Enum$PaymentMethod? paymentMethod,
    double? totalAmount,
    double? totalFee,
    double? payableAfterCost,
    double? payableAmount,
    Map<String, dynamic>? paymentMethodDetails,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionPaymentRecordItemFields = FragmentDefinitionNode(
  name: NameNode(value: 'PaymentRecordItemFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'PaymentRecordItem'),
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
        name: NameNode(value: 'totalAmount'),
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
        name: NameNode(value: 'payableAfterCost'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentPaymentRecordItemFields = DocumentNode(
  definitions: [fragmentDefinitionPaymentRecordItemFields],
);
