import '../../fragments/payment_rule_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateYardPaymentRule {
  factory Variables$Mutation$UpdateYardPaymentRule({
    required Input$UpdateYardPaymentRuleInput input,
  }) => Variables$Mutation$UpdateYardPaymentRule._({r'input': input});

  Variables$Mutation$UpdateYardPaymentRule._(this._$data);

  factory Variables$Mutation$UpdateYardPaymentRule.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateYardPaymentRuleInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateYardPaymentRule._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateYardPaymentRuleInput get input =>
      (_$data['input'] as Input$UpdateYardPaymentRuleInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateYardPaymentRule<
    Variables$Mutation$UpdateYardPaymentRule
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateYardPaymentRule(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateYardPaymentRule ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateYardPaymentRule<TRes> {
  factory CopyWith$Variables$Mutation$UpdateYardPaymentRule(
    Variables$Mutation$UpdateYardPaymentRule instance,
    TRes Function(Variables$Mutation$UpdateYardPaymentRule) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateYardPaymentRule;

  factory CopyWith$Variables$Mutation$UpdateYardPaymentRule.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateYardPaymentRule;

  TRes call({Input$UpdateYardPaymentRuleInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateYardPaymentRule<TRes>
    implements CopyWith$Variables$Mutation$UpdateYardPaymentRule<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateYardPaymentRule(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateYardPaymentRule _instance;

  final TRes Function(Variables$Mutation$UpdateYardPaymentRule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateYardPaymentRule._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateYardPaymentRuleInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateYardPaymentRule<TRes>
    implements CopyWith$Variables$Mutation$UpdateYardPaymentRule<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateYardPaymentRule(this._res);

  TRes _res;

  call({Input$UpdateYardPaymentRuleInput? input}) => _res;
}

class Mutation$UpdateYardPaymentRule {
  Mutation$UpdateYardPaymentRule({
    required this.updateYardPaymentRule,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateYardPaymentRule.fromJson(Map<String, dynamic> json) {
    final l$updateYardPaymentRule = json['updateYardPaymentRule'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateYardPaymentRule(
      updateYardPaymentRule: Fragment$PaymentRuleFragment.fromJson(
        (l$updateYardPaymentRule as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PaymentRuleFragment updateYardPaymentRule;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateYardPaymentRule = updateYardPaymentRule;
    _resultData['updateYardPaymentRule'] = l$updateYardPaymentRule.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateYardPaymentRule = updateYardPaymentRule;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateYardPaymentRule, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateYardPaymentRule ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateYardPaymentRule = updateYardPaymentRule;
    final lOther$updateYardPaymentRule = other.updateYardPaymentRule;
    if (l$updateYardPaymentRule != lOther$updateYardPaymentRule) {
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

extension UtilityExtension$Mutation$UpdateYardPaymentRule
    on Mutation$UpdateYardPaymentRule {
  CopyWith$Mutation$UpdateYardPaymentRule<Mutation$UpdateYardPaymentRule>
  get copyWith => CopyWith$Mutation$UpdateYardPaymentRule(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateYardPaymentRule<TRes> {
  factory CopyWith$Mutation$UpdateYardPaymentRule(
    Mutation$UpdateYardPaymentRule instance,
    TRes Function(Mutation$UpdateYardPaymentRule) then,
  ) = _CopyWithImpl$Mutation$UpdateYardPaymentRule;

  factory CopyWith$Mutation$UpdateYardPaymentRule.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateYardPaymentRule;

  TRes call({
    Fragment$PaymentRuleFragment? updateYardPaymentRule,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentRuleFragment<TRes> get updateYardPaymentRule;
}

class _CopyWithImpl$Mutation$UpdateYardPaymentRule<TRes>
    implements CopyWith$Mutation$UpdateYardPaymentRule<TRes> {
  _CopyWithImpl$Mutation$UpdateYardPaymentRule(this._instance, this._then);

  final Mutation$UpdateYardPaymentRule _instance;

  final TRes Function(Mutation$UpdateYardPaymentRule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateYardPaymentRule = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateYardPaymentRule(
      updateYardPaymentRule:
          updateYardPaymentRule == _undefined || updateYardPaymentRule == null
          ? _instance.updateYardPaymentRule
          : (updateYardPaymentRule as Fragment$PaymentRuleFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentRuleFragment<TRes> get updateYardPaymentRule {
    final local$updateYardPaymentRule = _instance.updateYardPaymentRule;
    return CopyWith$Fragment$PaymentRuleFragment(
      local$updateYardPaymentRule,
      (e) => call(updateYardPaymentRule: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateYardPaymentRule<TRes>
    implements CopyWith$Mutation$UpdateYardPaymentRule<TRes> {
  _CopyWithStubImpl$Mutation$UpdateYardPaymentRule(this._res);

  TRes _res;

  call({
    Fragment$PaymentRuleFragment? updateYardPaymentRule,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentRuleFragment<TRes> get updateYardPaymentRule =>
      CopyWith$Fragment$PaymentRuleFragment.stub(_res);
}

const documentNodeMutationUpdateYardPaymentRule = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateYardPaymentRule'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateYardPaymentRuleInput'),
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
            name: NameNode(value: 'updateYardPaymentRule'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
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
