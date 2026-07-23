import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$ModifyWorkflowYardPaymentRule {
  factory Variables$Mutation$ModifyWorkflowYardPaymentRule({
    required Input$ModifyWorkflowYardPaymentRuleInput input,
  }) => Variables$Mutation$ModifyWorkflowYardPaymentRule._({r'input': input});

  Variables$Mutation$ModifyWorkflowYardPaymentRule._(this._$data);

  factory Variables$Mutation$ModifyWorkflowYardPaymentRule.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ModifyWorkflowYardPaymentRuleInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$ModifyWorkflowYardPaymentRule._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ModifyWorkflowYardPaymentRuleInput get input =>
      (_$data['input'] as Input$ModifyWorkflowYardPaymentRuleInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ModifyWorkflowYardPaymentRule<
    Variables$Mutation$ModifyWorkflowYardPaymentRule
  >
  get copyWith =>
      CopyWith$Variables$Mutation$ModifyWorkflowYardPaymentRule(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ModifyWorkflowYardPaymentRule ||
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

abstract class CopyWith$Variables$Mutation$ModifyWorkflowYardPaymentRule<TRes> {
  factory CopyWith$Variables$Mutation$ModifyWorkflowYardPaymentRule(
    Variables$Mutation$ModifyWorkflowYardPaymentRule instance,
    TRes Function(Variables$Mutation$ModifyWorkflowYardPaymentRule) then,
  ) = _CopyWithImpl$Variables$Mutation$ModifyWorkflowYardPaymentRule;

  factory CopyWith$Variables$Mutation$ModifyWorkflowYardPaymentRule.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$ModifyWorkflowYardPaymentRule;

  TRes call({Input$ModifyWorkflowYardPaymentRuleInput? input});
}

class _CopyWithImpl$Variables$Mutation$ModifyWorkflowYardPaymentRule<TRes>
    implements CopyWith$Variables$Mutation$ModifyWorkflowYardPaymentRule<TRes> {
  _CopyWithImpl$Variables$Mutation$ModifyWorkflowYardPaymentRule(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ModifyWorkflowYardPaymentRule _instance;

  final TRes Function(Variables$Mutation$ModifyWorkflowYardPaymentRule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$ModifyWorkflowYardPaymentRule._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$ModifyWorkflowYardPaymentRuleInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ModifyWorkflowYardPaymentRule<TRes>
    implements CopyWith$Variables$Mutation$ModifyWorkflowYardPaymentRule<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ModifyWorkflowYardPaymentRule(this._res);

  TRes _res;

  call({Input$ModifyWorkflowYardPaymentRuleInput? input}) => _res;
}

class Mutation$ModifyWorkflowYardPaymentRule {
  Mutation$ModifyWorkflowYardPaymentRule({
    required this.modifyWorkflowYardPaymentRule,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ModifyWorkflowYardPaymentRule.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$modifyWorkflowYardPaymentRule =
        json['modifyWorkflowYardPaymentRule'];
    final l$$__typename = json['__typename'];
    return Mutation$ModifyWorkflowYardPaymentRule(
      modifyWorkflowYardPaymentRule:
          Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule.fromJson(
            (l$modifyWorkflowYardPaymentRule as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule
  modifyWorkflowYardPaymentRule;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$modifyWorkflowYardPaymentRule = modifyWorkflowYardPaymentRule;
    _resultData['modifyWorkflowYardPaymentRule'] =
        l$modifyWorkflowYardPaymentRule.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$modifyWorkflowYardPaymentRule = modifyWorkflowYardPaymentRule;
    final l$$__typename = $__typename;
    return Object.hashAll([l$modifyWorkflowYardPaymentRule, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ModifyWorkflowYardPaymentRule ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$modifyWorkflowYardPaymentRule = modifyWorkflowYardPaymentRule;
    final lOther$modifyWorkflowYardPaymentRule =
        other.modifyWorkflowYardPaymentRule;
    if (l$modifyWorkflowYardPaymentRule !=
        lOther$modifyWorkflowYardPaymentRule) {
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

extension UtilityExtension$Mutation$ModifyWorkflowYardPaymentRule
    on Mutation$ModifyWorkflowYardPaymentRule {
  CopyWith$Mutation$ModifyWorkflowYardPaymentRule<
    Mutation$ModifyWorkflowYardPaymentRule
  >
  get copyWith =>
      CopyWith$Mutation$ModifyWorkflowYardPaymentRule(this, (i) => i);
}

abstract class CopyWith$Mutation$ModifyWorkflowYardPaymentRule<TRes> {
  factory CopyWith$Mutation$ModifyWorkflowYardPaymentRule(
    Mutation$ModifyWorkflowYardPaymentRule instance,
    TRes Function(Mutation$ModifyWorkflowYardPaymentRule) then,
  ) = _CopyWithImpl$Mutation$ModifyWorkflowYardPaymentRule;

  factory CopyWith$Mutation$ModifyWorkflowYardPaymentRule.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ModifyWorkflowYardPaymentRule;

  TRes call({
    Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule?
    modifyWorkflowYardPaymentRule,
    String? $__typename,
  });
  CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule<
    TRes
  >
  get modifyWorkflowYardPaymentRule;
}

class _CopyWithImpl$Mutation$ModifyWorkflowYardPaymentRule<TRes>
    implements CopyWith$Mutation$ModifyWorkflowYardPaymentRule<TRes> {
  _CopyWithImpl$Mutation$ModifyWorkflowYardPaymentRule(
    this._instance,
    this._then,
  );

  final Mutation$ModifyWorkflowYardPaymentRule _instance;

  final TRes Function(Mutation$ModifyWorkflowYardPaymentRule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? modifyWorkflowYardPaymentRule = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ModifyWorkflowYardPaymentRule(
      modifyWorkflowYardPaymentRule:
          modifyWorkflowYardPaymentRule == _undefined ||
              modifyWorkflowYardPaymentRule == null
          ? _instance.modifyWorkflowYardPaymentRule
          : (modifyWorkflowYardPaymentRule
                as Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule<
    TRes
  >
  get modifyWorkflowYardPaymentRule {
    final local$modifyWorkflowYardPaymentRule =
        _instance.modifyWorkflowYardPaymentRule;
    return CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule(
      local$modifyWorkflowYardPaymentRule,
      (e) => call(modifyWorkflowYardPaymentRule: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ModifyWorkflowYardPaymentRule<TRes>
    implements CopyWith$Mutation$ModifyWorkflowYardPaymentRule<TRes> {
  _CopyWithStubImpl$Mutation$ModifyWorkflowYardPaymentRule(this._res);

  TRes _res;

  call({
    Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule?
    modifyWorkflowYardPaymentRule,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule<
    TRes
  >
  get modifyWorkflowYardPaymentRule =>
      CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule.stub(
        _res,
      );
}

const documentNodeMutationModifyWorkflowYardPaymentRule = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ModifyWorkflowYardPaymentRule'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'ModifyWorkflowYardPaymentRuleInput'),
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
            name: NameNode(value: 'modifyWorkflowYardPaymentRule'),
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
                FieldNode(
                  name: NameNode(value: 'id'),
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
                  name: NameNode(value: 'minAmount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'maxAmount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'levelUserEmails'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'key'),
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
  ],
);

class Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule {
  Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule({
    required this.id,
    required this.yardCode,
    required this.minAmount,
    required this.maxAmount,
    required this.levelUserEmails,
    this.$__typename = 'YardPaymentRule',
  });

  factory Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$yardCode = json['yardCode'];
    final l$minAmount = json['minAmount'];
    final l$maxAmount = json['maxAmount'];
    final l$levelUserEmails = json['levelUserEmails'];
    final l$$__typename = json['__typename'];
    return Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule(
      id: (l$id as String),
      yardCode: (l$yardCode as String),
      minAmount: (l$minAmount as num).toDouble(),
      maxAmount: (l$maxAmount as num).toDouble(),
      levelUserEmails: (l$levelUserEmails as List<dynamic>)
          .map(
            (e) =>
                Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String yardCode;

  final double minAmount;

  final double maxAmount;

  final List<
    Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails
  >
  levelUserEmails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$minAmount = minAmount;
    _resultData['minAmount'] = l$minAmount;
    final l$maxAmount = maxAmount;
    _resultData['maxAmount'] = l$maxAmount;
    final l$levelUserEmails = levelUserEmails;
    _resultData['levelUserEmails'] = l$levelUserEmails
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$yardCode = yardCode;
    final l$minAmount = minAmount;
    final l$maxAmount = maxAmount;
    final l$levelUserEmails = levelUserEmails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$yardCode,
      l$minAmount,
      l$maxAmount,
      Object.hashAll(l$levelUserEmails.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$minAmount = minAmount;
    final lOther$minAmount = other.minAmount;
    if (l$minAmount != lOther$minAmount) {
      return false;
    }
    final l$maxAmount = maxAmount;
    final lOther$maxAmount = other.maxAmount;
    if (l$maxAmount != lOther$maxAmount) {
      return false;
    }
    final l$levelUserEmails = levelUserEmails;
    final lOther$levelUserEmails = other.levelUserEmails;
    if (l$levelUserEmails.length != lOther$levelUserEmails.length) {
      return false;
    }
    for (int i = 0; i < l$levelUserEmails.length; i++) {
      final l$levelUserEmails$entry = l$levelUserEmails[i];
      final lOther$levelUserEmails$entry = lOther$levelUserEmails[i];
      if (l$levelUserEmails$entry != lOther$levelUserEmails$entry) {
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

extension UtilityExtension$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule
    on Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule {
  CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule<
    Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule
  >
  get copyWith =>
      CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule<
  TRes
> {
  factory CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule(
    Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule
    instance,
    TRes Function(
      Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule,
    )
    then,
  ) = _CopyWithImpl$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule;

  factory CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule;

  TRes call({
    String? id,
    String? yardCode,
    double? minAmount,
    double? maxAmount,
    List<
      Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails
    >?
    levelUserEmails,
    String? $__typename,
  });
  TRes levelUserEmails(
    Iterable<
      Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails
    >
    Function(
      Iterable<
        CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails<
          Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule<
  TRes
>
    implements
        CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule<
          TRes
        > {
  _CopyWithImpl$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule(
    this._instance,
    this._then,
  );

  final Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule
  _instance;

  final TRes Function(
    Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? yardCode = _undefined,
    Object? minAmount = _undefined,
    Object? maxAmount = _undefined,
    Object? levelUserEmails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      minAmount: minAmount == _undefined || minAmount == null
          ? _instance.minAmount
          : (minAmount as double),
      maxAmount: maxAmount == _undefined || maxAmount == null
          ? _instance.maxAmount
          : (maxAmount as double),
      levelUserEmails: levelUserEmails == _undefined || levelUserEmails == null
          ? _instance.levelUserEmails
          : (levelUserEmails
                as List<
                  Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes levelUserEmails(
    Iterable<
      Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails
    >
    Function(
      Iterable<
        CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails<
          Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails
        >
      >,
    )
    _fn,
  ) => call(
    levelUserEmails: _fn(
      _instance.levelUserEmails.map(
        (e) =>
            CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule<
  TRes
>
    implements
        CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? yardCode,
    double? minAmount,
    double? maxAmount,
    List<
      Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails
    >?
    levelUserEmails,
    String? $__typename,
  }) => _res;

  levelUserEmails(_fn) => _res;
}

class Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails {
  Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfInt32AndListOfString',
  });

  factory Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails(
      key: (l$key as int),
      value: (l$value as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int key;

  final List<String> value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      Object.hashAll(l$value.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value.length != lOther$value.length) {
      return false;
    }
    for (int i = 0; i < l$value.length; i++) {
      final l$value$entry = l$value[i];
      final lOther$value$entry = lOther$value[i];
      if (l$value$entry != lOther$value$entry) {
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

extension UtilityExtension$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails
    on
        Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails {
  CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails<
    Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails
  >
  get copyWith =>
      CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails<
  TRes
> {
  factory CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails(
    Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails
    instance,
    TRes Function(
      Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails,
    )
    then,
  ) = _CopyWithImpl$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails;

  factory CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails;

  TRes call({int? key, List<String>? value, String? $__typename});
}

class _CopyWithImpl$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails<
  TRes
>
    implements
        CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails<
          TRes
        > {
  _CopyWithImpl$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails(
    this._instance,
    this._then,
  );

  final Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails
  _instance;

  final TRes Function(
    Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails(
      key: key == _undefined || key == null ? _instance.key : (key as int),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails<
  TRes
>
    implements
        CopyWith$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ModifyWorkflowYardPaymentRule$modifyWorkflowYardPaymentRule$levelUserEmails(
    this._res,
  );

  TRes _res;

  call({int? key, List<String>? value, String? $__typename}) => _res;
}
