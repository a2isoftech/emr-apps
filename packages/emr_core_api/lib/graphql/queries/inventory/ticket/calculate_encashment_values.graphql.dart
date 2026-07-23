import '../../../fragments/payments/encashment_values.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$CalculateEncashmentValues {
  factory Variables$Query$CalculateEncashmentValues({
    required double amount,
    required String yardId,
    required Enum$PaymentMethod paymentMethod,
  }) => Variables$Query$CalculateEncashmentValues._({
    r'amount': amount,
    r'yardId': yardId,
    r'paymentMethod': paymentMethod,
  });

  Variables$Query$CalculateEncashmentValues._(this._$data);

  factory Variables$Query$CalculateEncashmentValues.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$amount = data['amount'];
    result$data['amount'] = (l$amount as num).toDouble();
    final l$yardId = data['yardId'];
    result$data['yardId'] = (l$yardId as String);
    final l$paymentMethod = data['paymentMethod'];
    result$data['paymentMethod'] = fromJson$Enum$PaymentMethod(
      (l$paymentMethod as String),
    );
    return Variables$Query$CalculateEncashmentValues._(result$data);
  }

  Map<String, dynamic> _$data;

  double get amount => (_$data['amount'] as double);

  String get yardId => (_$data['yardId'] as String);

  Enum$PaymentMethod get paymentMethod =>
      (_$data['paymentMethod'] as Enum$PaymentMethod);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$amount = amount;
    result$data['amount'] = l$amount;
    final l$yardId = yardId;
    result$data['yardId'] = l$yardId;
    final l$paymentMethod = paymentMethod;
    result$data['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    return result$data;
  }

  CopyWith$Variables$Query$CalculateEncashmentValues<
    Variables$Query$CalculateEncashmentValues
  >
  get copyWith =>
      CopyWith$Variables$Query$CalculateEncashmentValues(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$CalculateEncashmentValues ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$yardId = yardId;
    final lOther$yardId = other.yardId;
    if (l$yardId != lOther$yardId) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$yardId = yardId;
    final l$paymentMethod = paymentMethod;
    return Object.hashAll([l$amount, l$yardId, l$paymentMethod]);
  }
}

abstract class CopyWith$Variables$Query$CalculateEncashmentValues<TRes> {
  factory CopyWith$Variables$Query$CalculateEncashmentValues(
    Variables$Query$CalculateEncashmentValues instance,
    TRes Function(Variables$Query$CalculateEncashmentValues) then,
  ) = _CopyWithImpl$Variables$Query$CalculateEncashmentValues;

  factory CopyWith$Variables$Query$CalculateEncashmentValues.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CalculateEncashmentValues;

  TRes call({
    double? amount,
    String? yardId,
    Enum$PaymentMethod? paymentMethod,
  });
}

class _CopyWithImpl$Variables$Query$CalculateEncashmentValues<TRes>
    implements CopyWith$Variables$Query$CalculateEncashmentValues<TRes> {
  _CopyWithImpl$Variables$Query$CalculateEncashmentValues(
    this._instance,
    this._then,
  );

  final Variables$Query$CalculateEncashmentValues _instance;

  final TRes Function(Variables$Query$CalculateEncashmentValues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? yardId = _undefined,
    Object? paymentMethod = _undefined,
  }) => _then(
    Variables$Query$CalculateEncashmentValues._({
      ..._instance._$data,
      if (amount != _undefined && amount != null) 'amount': (amount as double),
      if (yardId != _undefined && yardId != null) 'yardId': (yardId as String),
      if (paymentMethod != _undefined && paymentMethod != null)
        'paymentMethod': (paymentMethod as Enum$PaymentMethod),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$CalculateEncashmentValues<TRes>
    implements CopyWith$Variables$Query$CalculateEncashmentValues<TRes> {
  _CopyWithStubImpl$Variables$Query$CalculateEncashmentValues(this._res);

  TRes _res;

  call({double? amount, String? yardId, Enum$PaymentMethod? paymentMethod}) =>
      _res;
}

class Query$CalculateEncashmentValues {
  Query$CalculateEncashmentValues({
    this.calculateEncashmentValues,
    this.$__typename = 'Query',
  });

  factory Query$CalculateEncashmentValues.fromJson(Map<String, dynamic> json) {
    final l$calculateEncashmentValues = json['calculateEncashmentValues'];
    final l$$__typename = json['__typename'];
    return Query$CalculateEncashmentValues(
      calculateEncashmentValues: l$calculateEncashmentValues == null
          ? null
          : Fragment$EncashmentValueFields.fromJson(
              (l$calculateEncashmentValues as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$EncashmentValueFields? calculateEncashmentValues;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$calculateEncashmentValues = calculateEncashmentValues;
    _resultData['calculateEncashmentValues'] = l$calculateEncashmentValues
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$calculateEncashmentValues = calculateEncashmentValues;
    final l$$__typename = $__typename;
    return Object.hashAll([l$calculateEncashmentValues, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CalculateEncashmentValues ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$calculateEncashmentValues = calculateEncashmentValues;
    final lOther$calculateEncashmentValues = other.calculateEncashmentValues;
    if (l$calculateEncashmentValues != lOther$calculateEncashmentValues) {
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

extension UtilityExtension$Query$CalculateEncashmentValues
    on Query$CalculateEncashmentValues {
  CopyWith$Query$CalculateEncashmentValues<Query$CalculateEncashmentValues>
  get copyWith => CopyWith$Query$CalculateEncashmentValues(this, (i) => i);
}

abstract class CopyWith$Query$CalculateEncashmentValues<TRes> {
  factory CopyWith$Query$CalculateEncashmentValues(
    Query$CalculateEncashmentValues instance,
    TRes Function(Query$CalculateEncashmentValues) then,
  ) = _CopyWithImpl$Query$CalculateEncashmentValues;

  factory CopyWith$Query$CalculateEncashmentValues.stub(TRes res) =
      _CopyWithStubImpl$Query$CalculateEncashmentValues;

  TRes call({
    Fragment$EncashmentValueFields? calculateEncashmentValues,
    String? $__typename,
  });
  CopyWith$Fragment$EncashmentValueFields<TRes> get calculateEncashmentValues;
}

class _CopyWithImpl$Query$CalculateEncashmentValues<TRes>
    implements CopyWith$Query$CalculateEncashmentValues<TRes> {
  _CopyWithImpl$Query$CalculateEncashmentValues(this._instance, this._then);

  final Query$CalculateEncashmentValues _instance;

  final TRes Function(Query$CalculateEncashmentValues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? calculateEncashmentValues = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$CalculateEncashmentValues(
      calculateEncashmentValues: calculateEncashmentValues == _undefined
          ? _instance.calculateEncashmentValues
          : (calculateEncashmentValues as Fragment$EncashmentValueFields?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$EncashmentValueFields<TRes> get calculateEncashmentValues {
    final local$calculateEncashmentValues = _instance.calculateEncashmentValues;
    return local$calculateEncashmentValues == null
        ? CopyWith$Fragment$EncashmentValueFields.stub(_then(_instance))
        : CopyWith$Fragment$EncashmentValueFields(
            local$calculateEncashmentValues,
            (e) => call(calculateEncashmentValues: e),
          );
  }
}

class _CopyWithStubImpl$Query$CalculateEncashmentValues<TRes>
    implements CopyWith$Query$CalculateEncashmentValues<TRes> {
  _CopyWithStubImpl$Query$CalculateEncashmentValues(this._res);

  TRes _res;

  call({
    Fragment$EncashmentValueFields? calculateEncashmentValues,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$EncashmentValueFields<TRes> get calculateEncashmentValues =>
      CopyWith$Fragment$EncashmentValueFields.stub(_res);
}

const documentNodeQueryCalculateEncashmentValues = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'CalculateEncashmentValues'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'amount')),
          type: NamedTypeNode(
            name: NameNode(value: 'Decimal'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'yardId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'paymentMethod')),
          type: NamedTypeNode(
            name: NameNode(value: 'PaymentMethod'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'calculateEncashmentValues'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'amount'),
                value: VariableNode(name: NameNode(value: 'amount')),
              ),
              ArgumentNode(
                name: NameNode(value: 'yardId'),
                value: VariableNode(name: NameNode(value: 'yardId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'paymentMethod'),
                value: VariableNode(name: NameNode(value: 'paymentMethod')),
              ),
            ],
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
    ),
    fragmentDefinitionEncashmentValueFields,
  ],
);
