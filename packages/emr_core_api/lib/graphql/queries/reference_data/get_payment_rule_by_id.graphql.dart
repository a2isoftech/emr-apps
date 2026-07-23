import '../../fragments/payment_rule_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetPaymentRuleById {
  factory Variables$Query$GetPaymentRuleById({required String PaymentRuleId}) =>
      Variables$Query$GetPaymentRuleById._({r'PaymentRuleId': PaymentRuleId});

  Variables$Query$GetPaymentRuleById._(this._$data);

  factory Variables$Query$GetPaymentRuleById.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$PaymentRuleId = data['PaymentRuleId'];
    result$data['PaymentRuleId'] = (l$PaymentRuleId as String);
    return Variables$Query$GetPaymentRuleById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get PaymentRuleId => (_$data['PaymentRuleId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$PaymentRuleId = PaymentRuleId;
    result$data['PaymentRuleId'] = l$PaymentRuleId;
    return result$data;
  }

  CopyWith$Variables$Query$GetPaymentRuleById<
    Variables$Query$GetPaymentRuleById
  >
  get copyWith => CopyWith$Variables$Query$GetPaymentRuleById(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetPaymentRuleById ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$PaymentRuleId = PaymentRuleId;
    final lOther$PaymentRuleId = other.PaymentRuleId;
    if (l$PaymentRuleId != lOther$PaymentRuleId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$PaymentRuleId = PaymentRuleId;
    return Object.hashAll([l$PaymentRuleId]);
  }
}

abstract class CopyWith$Variables$Query$GetPaymentRuleById<TRes> {
  factory CopyWith$Variables$Query$GetPaymentRuleById(
    Variables$Query$GetPaymentRuleById instance,
    TRes Function(Variables$Query$GetPaymentRuleById) then,
  ) = _CopyWithImpl$Variables$Query$GetPaymentRuleById;

  factory CopyWith$Variables$Query$GetPaymentRuleById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetPaymentRuleById;

  TRes call({String? PaymentRuleId});
}

class _CopyWithImpl$Variables$Query$GetPaymentRuleById<TRes>
    implements CopyWith$Variables$Query$GetPaymentRuleById<TRes> {
  _CopyWithImpl$Variables$Query$GetPaymentRuleById(this._instance, this._then);

  final Variables$Query$GetPaymentRuleById _instance;

  final TRes Function(Variables$Query$GetPaymentRuleById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? PaymentRuleId = _undefined}) => _then(
    Variables$Query$GetPaymentRuleById._({
      ..._instance._$data,
      if (PaymentRuleId != _undefined && PaymentRuleId != null)
        'PaymentRuleId': (PaymentRuleId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetPaymentRuleById<TRes>
    implements CopyWith$Variables$Query$GetPaymentRuleById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetPaymentRuleById(this._res);

  TRes _res;

  call({String? PaymentRuleId}) => _res;
}

class Query$GetPaymentRuleById {
  Query$GetPaymentRuleById({
    required this.paymentRule,
    this.$__typename = 'Query',
  });

  factory Query$GetPaymentRuleById.fromJson(Map<String, dynamic> json) {
    final l$paymentRule = json['paymentRule'];
    final l$$__typename = json['__typename'];
    return Query$GetPaymentRuleById(
      paymentRule: Fragment$PaymentRuleFragment.fromJson(
        (l$paymentRule as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PaymentRuleFragment paymentRule;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentRule = paymentRule;
    _resultData['paymentRule'] = l$paymentRule.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentRule = paymentRule;
    final l$$__typename = $__typename;
    return Object.hashAll([l$paymentRule, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPaymentRuleById ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentRule = paymentRule;
    final lOther$paymentRule = other.paymentRule;
    if (l$paymentRule != lOther$paymentRule) {
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

extension UtilityExtension$Query$GetPaymentRuleById
    on Query$GetPaymentRuleById {
  CopyWith$Query$GetPaymentRuleById<Query$GetPaymentRuleById> get copyWith =>
      CopyWith$Query$GetPaymentRuleById(this, (i) => i);
}

abstract class CopyWith$Query$GetPaymentRuleById<TRes> {
  factory CopyWith$Query$GetPaymentRuleById(
    Query$GetPaymentRuleById instance,
    TRes Function(Query$GetPaymentRuleById) then,
  ) = _CopyWithImpl$Query$GetPaymentRuleById;

  factory CopyWith$Query$GetPaymentRuleById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPaymentRuleById;

  TRes call({Fragment$PaymentRuleFragment? paymentRule, String? $__typename});
  CopyWith$Fragment$PaymentRuleFragment<TRes> get paymentRule;
}

class _CopyWithImpl$Query$GetPaymentRuleById<TRes>
    implements CopyWith$Query$GetPaymentRuleById<TRes> {
  _CopyWithImpl$Query$GetPaymentRuleById(this._instance, this._then);

  final Query$GetPaymentRuleById _instance;

  final TRes Function(Query$GetPaymentRuleById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentRule = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetPaymentRuleById(
      paymentRule: paymentRule == _undefined || paymentRule == null
          ? _instance.paymentRule
          : (paymentRule as Fragment$PaymentRuleFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentRuleFragment<TRes> get paymentRule {
    final local$paymentRule = _instance.paymentRule;
    return CopyWith$Fragment$PaymentRuleFragment(
      local$paymentRule,
      (e) => call(paymentRule: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetPaymentRuleById<TRes>
    implements CopyWith$Query$GetPaymentRuleById<TRes> {
  _CopyWithStubImpl$Query$GetPaymentRuleById(this._res);

  TRes _res;

  call({Fragment$PaymentRuleFragment? paymentRule, String? $__typename}) =>
      _res;

  CopyWith$Fragment$PaymentRuleFragment<TRes> get paymentRule =>
      CopyWith$Fragment$PaymentRuleFragment.stub(_res);
}

const documentNodeQueryGetPaymentRuleById = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetPaymentRuleById'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'PaymentRuleId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'paymentRule'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(
                        name: NameNode(value: 'PaymentRuleId'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'PaymentRuleFragment'),
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
    fragmentDefinitionPaymentRuleFragment,
  ],
);
