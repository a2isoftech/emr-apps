import '../../../fragments/inventory/ticket/payment_validation_result_fragment.graphql.dart';
import '../../../fragments/payment/advance_fields.graphql.dart';
import '../../../fragments/payments/encashment_values.graphql.dart';
import '../../../fragments/payments/payment_deduction.graphql.dart';
import '../../../fragments/payments/payment_deduction_items.graphql.dart';
import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$ValidateAdvanceWithPaymentMethod {
  factory Variables$Query$ValidateAdvanceWithPaymentMethod({
    required Enum$PaymentMethod paymentMethod,
    required String advanceId,
    required String payingYardId,
    List<Input$SplitPaymentBreakupInput>? splitPaymentBreakups,
  }) => Variables$Query$ValidateAdvanceWithPaymentMethod._({
    r'paymentMethod': paymentMethod,
    r'advanceId': advanceId,
    r'payingYardId': payingYardId,
    if (splitPaymentBreakups != null)
      r'splitPaymentBreakups': splitPaymentBreakups,
  });

  Variables$Query$ValidateAdvanceWithPaymentMethod._(this._$data);

  factory Variables$Query$ValidateAdvanceWithPaymentMethod.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$paymentMethod = data['paymentMethod'];
    result$data['paymentMethod'] = fromJson$Enum$PaymentMethod(
      (l$paymentMethod as String),
    );
    final l$advanceId = data['advanceId'];
    result$data['advanceId'] = (l$advanceId as String);
    final l$payingYardId = data['payingYardId'];
    result$data['payingYardId'] = (l$payingYardId as String);
    if (data.containsKey('splitPaymentBreakups')) {
      final l$splitPaymentBreakups = data['splitPaymentBreakups'];
      result$data['splitPaymentBreakups'] =
          (l$splitPaymentBreakups as List<dynamic>?)
              ?.map(
                (e) => Input$SplitPaymentBreakupInput.fromJson(
                  (e as Map<String, dynamic>),
                ),
              )
              .toList();
    }
    return Variables$Query$ValidateAdvanceWithPaymentMethod._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$PaymentMethod get paymentMethod =>
      (_$data['paymentMethod'] as Enum$PaymentMethod);

  String get advanceId => (_$data['advanceId'] as String);

  String get payingYardId => (_$data['payingYardId'] as String);

  List<Input$SplitPaymentBreakupInput>? get splitPaymentBreakups =>
      (_$data['splitPaymentBreakups'] as List<Input$SplitPaymentBreakupInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$paymentMethod = paymentMethod;
    result$data['paymentMethod'] = toJson$Enum$PaymentMethod(l$paymentMethod);
    final l$advanceId = advanceId;
    result$data['advanceId'] = l$advanceId;
    final l$payingYardId = payingYardId;
    result$data['payingYardId'] = l$payingYardId;
    if (_$data.containsKey('splitPaymentBreakups')) {
      final l$splitPaymentBreakups = splitPaymentBreakups;
      result$data['splitPaymentBreakups'] = l$splitPaymentBreakups
          ?.map((e) => e.toJson())
          .toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$ValidateAdvanceWithPaymentMethod<
    Variables$Query$ValidateAdvanceWithPaymentMethod
  >
  get copyWith =>
      CopyWith$Variables$Query$ValidateAdvanceWithPaymentMethod(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ValidateAdvanceWithPaymentMethod ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$advanceId = advanceId;
    final lOther$advanceId = other.advanceId;
    if (l$advanceId != lOther$advanceId) {
      return false;
    }
    final l$payingYardId = payingYardId;
    final lOther$payingYardId = other.payingYardId;
    if (l$payingYardId != lOther$payingYardId) {
      return false;
    }
    final l$splitPaymentBreakups = splitPaymentBreakups;
    final lOther$splitPaymentBreakups = other.splitPaymentBreakups;
    if (_$data.containsKey('splitPaymentBreakups') !=
        other._$data.containsKey('splitPaymentBreakups')) {
      return false;
    }
    if (l$splitPaymentBreakups != null && lOther$splitPaymentBreakups != null) {
      if (l$splitPaymentBreakups.length != lOther$splitPaymentBreakups.length) {
        return false;
      }
      for (int i = 0; i < l$splitPaymentBreakups.length; i++) {
        final l$splitPaymentBreakups$entry = l$splitPaymentBreakups[i];
        final lOther$splitPaymentBreakups$entry =
            lOther$splitPaymentBreakups[i];
        if (l$splitPaymentBreakups$entry != lOther$splitPaymentBreakups$entry) {
          return false;
        }
      }
    } else if (l$splitPaymentBreakups != lOther$splitPaymentBreakups) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$paymentMethod = paymentMethod;
    final l$advanceId = advanceId;
    final l$payingYardId = payingYardId;
    final l$splitPaymentBreakups = splitPaymentBreakups;
    return Object.hashAll([
      l$paymentMethod,
      l$advanceId,
      l$payingYardId,
      _$data.containsKey('splitPaymentBreakups')
          ? l$splitPaymentBreakups == null
                ? null
                : Object.hashAll(l$splitPaymentBreakups.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$ValidateAdvanceWithPaymentMethod<TRes> {
  factory CopyWith$Variables$Query$ValidateAdvanceWithPaymentMethod(
    Variables$Query$ValidateAdvanceWithPaymentMethod instance,
    TRes Function(Variables$Query$ValidateAdvanceWithPaymentMethod) then,
  ) = _CopyWithImpl$Variables$Query$ValidateAdvanceWithPaymentMethod;

  factory CopyWith$Variables$Query$ValidateAdvanceWithPaymentMethod.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$ValidateAdvanceWithPaymentMethod;

  TRes call({
    Enum$PaymentMethod? paymentMethod,
    String? advanceId,
    String? payingYardId,
    List<Input$SplitPaymentBreakupInput>? splitPaymentBreakups,
  });
}

class _CopyWithImpl$Variables$Query$ValidateAdvanceWithPaymentMethod<TRes>
    implements CopyWith$Variables$Query$ValidateAdvanceWithPaymentMethod<TRes> {
  _CopyWithImpl$Variables$Query$ValidateAdvanceWithPaymentMethod(
    this._instance,
    this._then,
  );

  final Variables$Query$ValidateAdvanceWithPaymentMethod _instance;

  final TRes Function(Variables$Query$ValidateAdvanceWithPaymentMethod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentMethod = _undefined,
    Object? advanceId = _undefined,
    Object? payingYardId = _undefined,
    Object? splitPaymentBreakups = _undefined,
  }) => _then(
    Variables$Query$ValidateAdvanceWithPaymentMethod._({
      ..._instance._$data,
      if (paymentMethod != _undefined && paymentMethod != null)
        'paymentMethod': (paymentMethod as Enum$PaymentMethod),
      if (advanceId != _undefined && advanceId != null)
        'advanceId': (advanceId as String),
      if (payingYardId != _undefined && payingYardId != null)
        'payingYardId': (payingYardId as String),
      if (splitPaymentBreakups != _undefined)
        'splitPaymentBreakups':
            (splitPaymentBreakups as List<Input$SplitPaymentBreakupInput>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ValidateAdvanceWithPaymentMethod<TRes>
    implements CopyWith$Variables$Query$ValidateAdvanceWithPaymentMethod<TRes> {
  _CopyWithStubImpl$Variables$Query$ValidateAdvanceWithPaymentMethod(this._res);

  TRes _res;

  call({
    Enum$PaymentMethod? paymentMethod,
    String? advanceId,
    String? payingYardId,
    List<Input$SplitPaymentBreakupInput>? splitPaymentBreakups,
  }) => _res;
}

class Query$ValidateAdvanceWithPaymentMethod {
  Query$ValidateAdvanceWithPaymentMethod({
    required this.validateAdvanceWithPaymentMethod,
    required this.paymentDeductionsForAdvance,
    this.$__typename = 'Query',
  });

  factory Query$ValidateAdvanceWithPaymentMethod.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$validateAdvanceWithPaymentMethod =
        json['validateAdvanceWithPaymentMethod'];
    final l$paymentDeductionsForAdvance = json['paymentDeductionsForAdvance'];
    final l$$__typename = json['__typename'];
    return Query$ValidateAdvanceWithPaymentMethod(
      validateAdvanceWithPaymentMethod:
          Fragment$PaymentRuleResultFields.fromJson(
            (l$validateAdvanceWithPaymentMethod as Map<String, dynamic>),
          ),
      paymentDeductionsForAdvance: Fragment$PaymentDeductionFields.fromJson(
        (l$paymentDeductionsForAdvance as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PaymentRuleResultFields validateAdvanceWithPaymentMethod;

  final Fragment$PaymentDeductionFields paymentDeductionsForAdvance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$validateAdvanceWithPaymentMethod = validateAdvanceWithPaymentMethod;
    _resultData['validateAdvanceWithPaymentMethod'] =
        l$validateAdvanceWithPaymentMethod.toJson();
    final l$paymentDeductionsForAdvance = paymentDeductionsForAdvance;
    _resultData['paymentDeductionsForAdvance'] = l$paymentDeductionsForAdvance
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$validateAdvanceWithPaymentMethod = validateAdvanceWithPaymentMethod;
    final l$paymentDeductionsForAdvance = paymentDeductionsForAdvance;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$validateAdvanceWithPaymentMethod,
      l$paymentDeductionsForAdvance,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ValidateAdvanceWithPaymentMethod ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$validateAdvanceWithPaymentMethod = validateAdvanceWithPaymentMethod;
    final lOther$validateAdvanceWithPaymentMethod =
        other.validateAdvanceWithPaymentMethod;
    if (l$validateAdvanceWithPaymentMethod !=
        lOther$validateAdvanceWithPaymentMethod) {
      return false;
    }
    final l$paymentDeductionsForAdvance = paymentDeductionsForAdvance;
    final lOther$paymentDeductionsForAdvance =
        other.paymentDeductionsForAdvance;
    if (l$paymentDeductionsForAdvance != lOther$paymentDeductionsForAdvance) {
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

extension UtilityExtension$Query$ValidateAdvanceWithPaymentMethod
    on Query$ValidateAdvanceWithPaymentMethod {
  CopyWith$Query$ValidateAdvanceWithPaymentMethod<
    Query$ValidateAdvanceWithPaymentMethod
  >
  get copyWith =>
      CopyWith$Query$ValidateAdvanceWithPaymentMethod(this, (i) => i);
}

abstract class CopyWith$Query$ValidateAdvanceWithPaymentMethod<TRes> {
  factory CopyWith$Query$ValidateAdvanceWithPaymentMethod(
    Query$ValidateAdvanceWithPaymentMethod instance,
    TRes Function(Query$ValidateAdvanceWithPaymentMethod) then,
  ) = _CopyWithImpl$Query$ValidateAdvanceWithPaymentMethod;

  factory CopyWith$Query$ValidateAdvanceWithPaymentMethod.stub(TRes res) =
      _CopyWithStubImpl$Query$ValidateAdvanceWithPaymentMethod;

  TRes call({
    Fragment$PaymentRuleResultFields? validateAdvanceWithPaymentMethod,
    Fragment$PaymentDeductionFields? paymentDeductionsForAdvance,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentRuleResultFields<TRes>
  get validateAdvanceWithPaymentMethod;
  CopyWith$Fragment$PaymentDeductionFields<TRes>
  get paymentDeductionsForAdvance;
}

class _CopyWithImpl$Query$ValidateAdvanceWithPaymentMethod<TRes>
    implements CopyWith$Query$ValidateAdvanceWithPaymentMethod<TRes> {
  _CopyWithImpl$Query$ValidateAdvanceWithPaymentMethod(
    this._instance,
    this._then,
  );

  final Query$ValidateAdvanceWithPaymentMethod _instance;

  final TRes Function(Query$ValidateAdvanceWithPaymentMethod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? validateAdvanceWithPaymentMethod = _undefined,
    Object? paymentDeductionsForAdvance = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ValidateAdvanceWithPaymentMethod(
      validateAdvanceWithPaymentMethod:
          validateAdvanceWithPaymentMethod == _undefined ||
              validateAdvanceWithPaymentMethod == null
          ? _instance.validateAdvanceWithPaymentMethod
          : (validateAdvanceWithPaymentMethod
                as Fragment$PaymentRuleResultFields),
      paymentDeductionsForAdvance:
          paymentDeductionsForAdvance == _undefined ||
              paymentDeductionsForAdvance == null
          ? _instance.paymentDeductionsForAdvance
          : (paymentDeductionsForAdvance as Fragment$PaymentDeductionFields),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$PaymentRuleResultFields<TRes>
  get validateAdvanceWithPaymentMethod {
    final local$validateAdvanceWithPaymentMethod =
        _instance.validateAdvanceWithPaymentMethod;
    return CopyWith$Fragment$PaymentRuleResultFields(
      local$validateAdvanceWithPaymentMethod,
      (e) => call(validateAdvanceWithPaymentMethod: e),
    );
  }

  CopyWith$Fragment$PaymentDeductionFields<TRes>
  get paymentDeductionsForAdvance {
    final local$paymentDeductionsForAdvance =
        _instance.paymentDeductionsForAdvance;
    return CopyWith$Fragment$PaymentDeductionFields(
      local$paymentDeductionsForAdvance,
      (e) => call(paymentDeductionsForAdvance: e),
    );
  }
}

class _CopyWithStubImpl$Query$ValidateAdvanceWithPaymentMethod<TRes>
    implements CopyWith$Query$ValidateAdvanceWithPaymentMethod<TRes> {
  _CopyWithStubImpl$Query$ValidateAdvanceWithPaymentMethod(this._res);

  TRes _res;

  call({
    Fragment$PaymentRuleResultFields? validateAdvanceWithPaymentMethod,
    Fragment$PaymentDeductionFields? paymentDeductionsForAdvance,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$PaymentRuleResultFields<TRes>
  get validateAdvanceWithPaymentMethod =>
      CopyWith$Fragment$PaymentRuleResultFields.stub(_res);

  CopyWith$Fragment$PaymentDeductionFields<TRes>
  get paymentDeductionsForAdvance =>
      CopyWith$Fragment$PaymentDeductionFields.stub(_res);
}

const documentNodeQueryValidateAdvanceWithPaymentMethod = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ValidateAdvanceWithPaymentMethod'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'paymentMethod')),
          type: NamedTypeNode(
            name: NameNode(value: 'PaymentMethod'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'advanceId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'payingYardId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'splitPaymentBreakups')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'SplitPaymentBreakupInput'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'validateAdvanceWithPaymentMethod'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'paymentMethod'),
                value: VariableNode(name: NameNode(value: 'paymentMethod')),
              ),
              ArgumentNode(
                name: NameNode(value: 'advanceId'),
                value: VariableNode(name: NameNode(value: 'advanceId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'payingYardId'),
                value: VariableNode(name: NameNode(value: 'payingYardId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'splitPaymentBreakups'),
                value: VariableNode(
                  name: NameNode(value: 'splitPaymentBreakups'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'PaymentRuleResultFields'),
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
            name: NameNode(value: 'paymentDeductionsForAdvance'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'paymentMethod'),
                value: VariableNode(name: NameNode(value: 'paymentMethod')),
              ),
              ArgumentNode(
                name: NameNode(value: 'advanceId'),
                value: VariableNode(name: NameNode(value: 'advanceId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'payingYardId'),
                value: VariableNode(name: NameNode(value: 'payingYardId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'splitPaymentBreakups'),
                value: VariableNode(
                  name: NameNode(value: 'splitPaymentBreakups'),
                ),
              ),
            ],
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionPaymentRuleResultFields,
    fragmentDefinitionPaymentDeductionFields,
    fragmentDefinitionEncashmentValueFields,
    fragmentDefinitionPaymentDeductionItemFields,
    fragmentDefinitionAdvanceFields,
  ],
);
