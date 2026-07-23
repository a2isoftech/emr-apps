import '../../fragments/payment_rule_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateYardPaymentRule {
  factory Variables$Mutation$CreateYardPaymentRule({
    required Input$CreatePaymentRuleInput PaymentRule,
  }) =>
      Variables$Mutation$CreateYardPaymentRule._({r'PaymentRule': PaymentRule});

  Variables$Mutation$CreateYardPaymentRule._(this._$data);

  factory Variables$Mutation$CreateYardPaymentRule.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$PaymentRule = data['PaymentRule'];
    result$data['PaymentRule'] = Input$CreatePaymentRuleInput.fromJson(
      (l$PaymentRule as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateYardPaymentRule._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreatePaymentRuleInput get PaymentRule =>
      (_$data['PaymentRule'] as Input$CreatePaymentRuleInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$PaymentRule = PaymentRule;
    result$data['PaymentRule'] = l$PaymentRule.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateYardPaymentRule<
    Variables$Mutation$CreateYardPaymentRule
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CreateYardPaymentRule(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateYardPaymentRule ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$PaymentRule = PaymentRule;
    final lOther$PaymentRule = other.PaymentRule;
    if (l$PaymentRule != lOther$PaymentRule) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$PaymentRule = PaymentRule;
    return Object.hashAll([l$PaymentRule]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateYardPaymentRule<TRes> {
  factory CopyWith$Variables$Mutation$CreateYardPaymentRule(
    Variables$Mutation$CreateYardPaymentRule instance,
    TRes Function(Variables$Mutation$CreateYardPaymentRule) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateYardPaymentRule;

  factory CopyWith$Variables$Mutation$CreateYardPaymentRule.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateYardPaymentRule;

  TRes call({Input$CreatePaymentRuleInput? PaymentRule});
}

class _CopyWithImpl$Variables$Mutation$CreateYardPaymentRule<TRes>
    implements CopyWith$Variables$Mutation$CreateYardPaymentRule<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateYardPaymentRule(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateYardPaymentRule _instance;

  final TRes Function(Variables$Mutation$CreateYardPaymentRule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? PaymentRule = _undefined}) => _then(
    Variables$Mutation$CreateYardPaymentRule._({
      ..._instance._$data,
      if (PaymentRule != _undefined && PaymentRule != null)
        'PaymentRule': (PaymentRule as Input$CreatePaymentRuleInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateYardPaymentRule<TRes>
    implements CopyWith$Variables$Mutation$CreateYardPaymentRule<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateYardPaymentRule(this._res);

  TRes _res;

  call({Input$CreatePaymentRuleInput? PaymentRule}) => _res;
}

class Mutation$CreateYardPaymentRule {
  Mutation$CreateYardPaymentRule({
    required this.createYardPaymentRule,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateYardPaymentRule.fromJson(Map<String, dynamic> json) {
    final l$createYardPaymentRule = json['createYardPaymentRule'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateYardPaymentRule(
      createYardPaymentRule: Fragment$PaymentRuleFragment.fromJson(
        (l$createYardPaymentRule as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PaymentRuleFragment createYardPaymentRule;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createYardPaymentRule = createYardPaymentRule;
    _resultData['createYardPaymentRule'] = l$createYardPaymentRule.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createYardPaymentRule = createYardPaymentRule;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createYardPaymentRule, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateYardPaymentRule ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createYardPaymentRule = createYardPaymentRule;
    final lOther$createYardPaymentRule = other.createYardPaymentRule;
    if (l$createYardPaymentRule != lOther$createYardPaymentRule) {
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

extension UtilityExtension$Mutation$CreateYardPaymentRule
    on Mutation$CreateYardPaymentRule {
  CopyWith$Mutation$CreateYardPaymentRule<Mutation$CreateYardPaymentRule>
  get copyWith => CopyWith$Mutation$CreateYardPaymentRule(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateYardPaymentRule<TRes> {
  factory CopyWith$Mutation$CreateYardPaymentRule(
    Mutation$CreateYardPaymentRule instance,
    TRes Function(Mutation$CreateYardPaymentRule) then,
  ) = _CopyWithImpl$Mutation$CreateYardPaymentRule;

  factory CopyWith$Mutation$CreateYardPaymentRule.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateYardPaymentRule;

  TRes call({
    Fragment$PaymentRuleFragment? createYardPaymentRule,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentRuleFragment<TRes> get createYardPaymentRule;
}

class _CopyWithImpl$Mutation$CreateYardPaymentRule<TRes>
    implements CopyWith$Mutation$CreateYardPaymentRule<TRes> {
  _CopyWithImpl$Mutation$CreateYardPaymentRule(this._instance, this._then);

  final Mutation$CreateYardPaymentRule _instance;

  final TRes Function(Mutation$CreateYardPaymentRule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createYardPaymentRule = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateYardPaymentRule(
      createYardPaymentRule:
          createYardPaymentRule == _undefined || createYardPaymentRule == null
          ? _instance.createYardPaymentRule
          : (createYardPaymentRule as Fragment$PaymentRuleFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentRuleFragment<TRes> get createYardPaymentRule {
    final local$createYardPaymentRule = _instance.createYardPaymentRule;
    return CopyWith$Fragment$PaymentRuleFragment(
      local$createYardPaymentRule,
      (e) => call(createYardPaymentRule: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateYardPaymentRule<TRes>
    implements CopyWith$Mutation$CreateYardPaymentRule<TRes> {
  _CopyWithStubImpl$Mutation$CreateYardPaymentRule(this._res);

  TRes _res;

  call({
    Fragment$PaymentRuleFragment? createYardPaymentRule,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentRuleFragment<TRes> get createYardPaymentRule =>
      CopyWith$Fragment$PaymentRuleFragment.stub(_res);
}

const documentNodeMutationCreateYardPaymentRule = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateYardPaymentRule'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'PaymentRule')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreatePaymentRuleInput'),
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
            name: NameNode(value: 'createYardPaymentRule'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'PaymentRule')),
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
