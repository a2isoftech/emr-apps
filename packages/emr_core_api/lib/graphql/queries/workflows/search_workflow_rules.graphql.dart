import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$SearchWorkflowRules {
  factory Variables$Query$SearchWorkflowRules({
    required Input$WorkflowRuleSearchInput input,
  }) => Variables$Query$SearchWorkflowRules._({r'input': input});

  Variables$Query$SearchWorkflowRules._(this._$data);

  factory Variables$Query$SearchWorkflowRules.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$WorkflowRuleSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$SearchWorkflowRules._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$WorkflowRuleSearchInput get input =>
      (_$data['input'] as Input$WorkflowRuleSearchInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$SearchWorkflowRules<
    Variables$Query$SearchWorkflowRules
  >
  get copyWith => CopyWith$Variables$Query$SearchWorkflowRules(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchWorkflowRules ||
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

abstract class CopyWith$Variables$Query$SearchWorkflowRules<TRes> {
  factory CopyWith$Variables$Query$SearchWorkflowRules(
    Variables$Query$SearchWorkflowRules instance,
    TRes Function(Variables$Query$SearchWorkflowRules) then,
  ) = _CopyWithImpl$Variables$Query$SearchWorkflowRules;

  factory CopyWith$Variables$Query$SearchWorkflowRules.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchWorkflowRules;

  TRes call({Input$WorkflowRuleSearchInput? input});
}

class _CopyWithImpl$Variables$Query$SearchWorkflowRules<TRes>
    implements CopyWith$Variables$Query$SearchWorkflowRules<TRes> {
  _CopyWithImpl$Variables$Query$SearchWorkflowRules(this._instance, this._then);

  final Variables$Query$SearchWorkflowRules _instance;

  final TRes Function(Variables$Query$SearchWorkflowRules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$SearchWorkflowRules._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$WorkflowRuleSearchInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchWorkflowRules<TRes>
    implements CopyWith$Variables$Query$SearchWorkflowRules<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchWorkflowRules(this._res);

  TRes _res;

  call({Input$WorkflowRuleSearchInput? input}) => _res;
}

class Query$SearchWorkflowRules {
  Query$SearchWorkflowRules({
    required this.searchWorkflowRules,
    this.$__typename = 'Query',
  });

  factory Query$SearchWorkflowRules.fromJson(Map<String, dynamic> json) {
    final l$searchWorkflowRules = json['searchWorkflowRules'];
    final l$$__typename = json['__typename'];
    return Query$SearchWorkflowRules(
      searchWorkflowRules: (l$searchWorkflowRules as List<dynamic>)
          .map(
            (e) => Query$SearchWorkflowRules$searchWorkflowRules.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchWorkflowRules$searchWorkflowRules> searchWorkflowRules;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchWorkflowRules = searchWorkflowRules;
    _resultData['searchWorkflowRules'] = l$searchWorkflowRules
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchWorkflowRules = searchWorkflowRules;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$searchWorkflowRules.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchWorkflowRules ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchWorkflowRules = searchWorkflowRules;
    final lOther$searchWorkflowRules = other.searchWorkflowRules;
    if (l$searchWorkflowRules.length != lOther$searchWorkflowRules.length) {
      return false;
    }
    for (int i = 0; i < l$searchWorkflowRules.length; i++) {
      final l$searchWorkflowRules$entry = l$searchWorkflowRules[i];
      final lOther$searchWorkflowRules$entry = lOther$searchWorkflowRules[i];
      if (l$searchWorkflowRules$entry != lOther$searchWorkflowRules$entry) {
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

extension UtilityExtension$Query$SearchWorkflowRules
    on Query$SearchWorkflowRules {
  CopyWith$Query$SearchWorkflowRules<Query$SearchWorkflowRules> get copyWith =>
      CopyWith$Query$SearchWorkflowRules(this, (i) => i);
}

abstract class CopyWith$Query$SearchWorkflowRules<TRes> {
  factory CopyWith$Query$SearchWorkflowRules(
    Query$SearchWorkflowRules instance,
    TRes Function(Query$SearchWorkflowRules) then,
  ) = _CopyWithImpl$Query$SearchWorkflowRules;

  factory CopyWith$Query$SearchWorkflowRules.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchWorkflowRules;

  TRes call({
    List<Query$SearchWorkflowRules$searchWorkflowRules>? searchWorkflowRules,
    String? $__typename,
  });
  TRes searchWorkflowRules(
    Iterable<Query$SearchWorkflowRules$searchWorkflowRules> Function(
      Iterable<
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules<
          Query$SearchWorkflowRules$searchWorkflowRules
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchWorkflowRules<TRes>
    implements CopyWith$Query$SearchWorkflowRules<TRes> {
  _CopyWithImpl$Query$SearchWorkflowRules(this._instance, this._then);

  final Query$SearchWorkflowRules _instance;

  final TRes Function(Query$SearchWorkflowRules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchWorkflowRules = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchWorkflowRules(
      searchWorkflowRules:
          searchWorkflowRules == _undefined || searchWorkflowRules == null
          ? _instance.searchWorkflowRules
          : (searchWorkflowRules
                as List<Query$SearchWorkflowRules$searchWorkflowRules>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes searchWorkflowRules(
    Iterable<Query$SearchWorkflowRules$searchWorkflowRules> Function(
      Iterable<
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules<
          Query$SearchWorkflowRules$searchWorkflowRules
        >
      >,
    )
    _fn,
  ) => call(
    searchWorkflowRules: _fn(
      _instance.searchWorkflowRules.map(
        (e) =>
            CopyWith$Query$SearchWorkflowRules$searchWorkflowRules(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchWorkflowRules<TRes>
    implements CopyWith$Query$SearchWorkflowRules<TRes> {
  _CopyWithStubImpl$Query$SearchWorkflowRules(this._res);

  TRes _res;

  call({
    List<Query$SearchWorkflowRules$searchWorkflowRules>? searchWorkflowRules,
    String? $__typename,
  }) => _res;

  searchWorkflowRules(_fn) => _res;
}

const documentNodeQuerySearchWorkflowRules = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchWorkflowRules'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'WorkflowRuleSearchInput'),
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
            name: NameNode(value: 'searchWorkflowRules'),
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
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'StocktakeRule'),
                      isNonNull: false,
                    ),
                  ),
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
                        name: NameNode(value: 'productFamily'),
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
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'YardPaymentRule'),
                      isNonNull: false,
                    ),
                  ),
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
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'AccountApprovalRule'),
                      isNonNull: false,
                    ),
                  ),
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

class Query$SearchWorkflowRules$searchWorkflowRules {
  Query$SearchWorkflowRules$searchWorkflowRules({required this.$__typename});

  factory Query$SearchWorkflowRules$searchWorkflowRules.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "StocktakeRule":
        return Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule.fromJson(
          json,
        );

      case "YardPaymentRule":
        return Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule.fromJson(
          json,
        );

      case "AccountApprovalRule":
        return Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Query$SearchWorkflowRules$searchWorkflowRules(
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchWorkflowRules$searchWorkflowRules ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SearchWorkflowRules$searchWorkflowRules
    on Query$SearchWorkflowRules$searchWorkflowRules {
  CopyWith$Query$SearchWorkflowRules$searchWorkflowRules<
    Query$SearchWorkflowRules$searchWorkflowRules
  >
  get copyWith =>
      CopyWith$Query$SearchWorkflowRules$searchWorkflowRules(this, (i) => i);

  _T when<_T>({
    required _T Function(
      Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule,
    )
    stocktakeRule,
    required _T Function(
      Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule,
    )
    yardPaymentRule,
    required _T Function(
      Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule,
    )
    accountApprovalRule,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "StocktakeRule":
        return stocktakeRule(
          this as Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule,
        );

      case "YardPaymentRule":
        return yardPaymentRule(
          this
              as Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule,
        );

      case "AccountApprovalRule":
        return accountApprovalRule(
          this
              as Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule)?
    stocktakeRule,
    _T Function(Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule)?
    yardPaymentRule,
    _T Function(
      Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule,
    )?
    accountApprovalRule,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "StocktakeRule":
        if (stocktakeRule != null) {
          return stocktakeRule(
            this
                as Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule,
          );
        } else {
          return orElse();
        }

      case "YardPaymentRule":
        if (yardPaymentRule != null) {
          return yardPaymentRule(
            this
                as Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule,
          );
        } else {
          return orElse();
        }

      case "AccountApprovalRule":
        if (accountApprovalRule != null) {
          return accountApprovalRule(
            this
                as Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$SearchWorkflowRules$searchWorkflowRules<TRes> {
  factory CopyWith$Query$SearchWorkflowRules$searchWorkflowRules(
    Query$SearchWorkflowRules$searchWorkflowRules instance,
    TRes Function(Query$SearchWorkflowRules$searchWorkflowRules) then,
  ) = _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules;

  factory CopyWith$Query$SearchWorkflowRules$searchWorkflowRules.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules<TRes>
    implements CopyWith$Query$SearchWorkflowRules$searchWorkflowRules<TRes> {
  _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules(
    this._instance,
    this._then,
  );

  final Query$SearchWorkflowRules$searchWorkflowRules _instance;

  final TRes Function(Query$SearchWorkflowRules$searchWorkflowRules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Query$SearchWorkflowRules$searchWorkflowRules(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules<TRes>
    implements CopyWith$Query$SearchWorkflowRules$searchWorkflowRules<TRes> {
  _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule
    implements Query$SearchWorkflowRules$searchWorkflowRules {
  Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule({
    required this.id,
    required this.productFamily,
    required this.yardCode,
    required this.levelUserEmails,
    this.$__typename = 'StocktakeRule',
  });

  factory Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$productFamily = json['productFamily'];
    final l$yardCode = json['yardCode'];
    final l$levelUserEmails = json['levelUserEmails'];
    final l$$__typename = json['__typename'];
    return Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule(
      id: (l$id as String),
      productFamily: (l$productFamily as String),
      yardCode: (l$yardCode as String),
      levelUserEmails: (l$levelUserEmails as List<dynamic>)
          .map(
            (e) =>
                Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String productFamily;

  final String yardCode;

  final List<
    Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails
  >
  levelUserEmails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$productFamily = productFamily;
    _resultData['productFamily'] = l$productFamily;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
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
    final l$productFamily = productFamily;
    final l$yardCode = yardCode;
    final l$levelUserEmails = levelUserEmails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$productFamily,
      l$yardCode,
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
            is! Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$productFamily = productFamily;
    final lOther$productFamily = other.productFamily;
    if (l$productFamily != lOther$productFamily) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
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

extension UtilityExtension$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule
    on Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule {
  CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule<
    Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule
  >
  get copyWith =>
      CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule<
  TRes
> {
  factory CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule(
    Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule instance,
    TRes Function(Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule)
    then,
  ) = _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule;

  factory CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule;

  TRes call({
    String? id,
    String? productFamily,
    String? yardCode,
    List<
      Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails
    >?
    levelUserEmails,
    String? $__typename,
  });
  TRes levelUserEmails(
    Iterable<
      Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails
    >
    Function(
      Iterable<
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails<
          Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule<
  TRes
>
    implements
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule<
          TRes
        > {
  _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule(
    this._instance,
    this._then,
  );

  final Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule _instance;

  final TRes Function(
    Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? productFamily = _undefined,
    Object? yardCode = _undefined,
    Object? levelUserEmails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      productFamily: productFamily == _undefined || productFamily == null
          ? _instance.productFamily
          : (productFamily as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      levelUserEmails: levelUserEmails == _undefined || levelUserEmails == null
          ? _instance.levelUserEmails
          : (levelUserEmails
                as List<
                  Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes levelUserEmails(
    Iterable<
      Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails
    >
    Function(
      Iterable<
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails<
          Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails
        >
      >,
    )
    _fn,
  ) => call(
    levelUserEmails: _fn(
      _instance.levelUserEmails.map(
        (e) =>
            CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule<
  TRes
>
    implements
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? productFamily,
    String? yardCode,
    List<
      Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails
    >?
    levelUserEmails,
    String? $__typename,
  }) => _res;

  levelUserEmails(_fn) => _res;
}

class Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails {
  Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfInt32AndListOfString',
  });

  factory Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails(
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
            is! Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails ||
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

extension UtilityExtension$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails
    on Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails {
  CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails<
    Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails
  >
  get copyWith =>
      CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails<
  TRes
> {
  factory CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails(
    Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails
    instance,
    TRes Function(
      Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails,
    )
    then,
  ) = _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails;

  factory CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails;

  TRes call({int? key, List<String>? value, String? $__typename});
}

class _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails<
  TRes
>
    implements
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails<
          TRes
        > {
  _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails(
    this._instance,
    this._then,
  );

  final Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails
  _instance;

  final TRes Function(
    Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails(
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

class _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails<
  TRes
>
    implements
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$StocktakeRule$levelUserEmails(
    this._res,
  );

  TRes _res;

  call({int? key, List<String>? value, String? $__typename}) => _res;
}

class Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule
    implements Query$SearchWorkflowRules$searchWorkflowRules {
  Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule({
    required this.id,
    required this.yardCode,
    required this.minAmount,
    required this.maxAmount,
    required this.levelUserEmails,
    this.$__typename = 'YardPaymentRule',
  });

  factory Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$yardCode = json['yardCode'];
    final l$minAmount = json['minAmount'];
    final l$maxAmount = json['maxAmount'];
    final l$levelUserEmails = json['levelUserEmails'];
    final l$$__typename = json['__typename'];
    return Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule(
      id: (l$id as String),
      yardCode: (l$yardCode as String),
      minAmount: (l$minAmount as num).toDouble(),
      maxAmount: (l$maxAmount as num).toDouble(),
      levelUserEmails: (l$levelUserEmails as List<dynamic>)
          .map(
            (e) =>
                Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails.fromJson(
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
    Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails
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
            is! Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule ||
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

extension UtilityExtension$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule
    on Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule {
  CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule<
    Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule
  >
  get copyWith =>
      CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule<
  TRes
> {
  factory CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule(
    Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule instance,
    TRes Function(
      Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule,
    )
    then,
  ) = _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule;

  factory CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule;

  TRes call({
    String? id,
    String? yardCode,
    double? minAmount,
    double? maxAmount,
    List<
      Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails
    >?
    levelUserEmails,
    String? $__typename,
  });
  TRes levelUserEmails(
    Iterable<
      Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails
    >
    Function(
      Iterable<
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails<
          Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule<
  TRes
>
    implements
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule<
          TRes
        > {
  _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule(
    this._instance,
    this._then,
  );

  final Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule
  _instance;

  final TRes Function(
    Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule,
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
    Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule(
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
                  Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes levelUserEmails(
    Iterable<
      Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails
    >
    Function(
      Iterable<
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails<
          Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails
        >
      >,
    )
    _fn,
  ) => call(
    levelUserEmails: _fn(
      _instance.levelUserEmails.map(
        (e) =>
            CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule<
  TRes
>
    implements
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? yardCode,
    double? minAmount,
    double? maxAmount,
    List<
      Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails
    >?
    levelUserEmails,
    String? $__typename,
  }) => _res;

  levelUserEmails(_fn) => _res;
}

class Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails {
  Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfInt32AndListOfString',
  });

  factory Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails(
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
            is! Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails ||
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

extension UtilityExtension$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails
    on Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails {
  CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails<
    Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails
  >
  get copyWith =>
      CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails<
  TRes
> {
  factory CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails(
    Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails
    instance,
    TRes Function(
      Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails,
    )
    then,
  ) = _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails;

  factory CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails;

  TRes call({int? key, List<String>? value, String? $__typename});
}

class _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails<
  TRes
>
    implements
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails<
          TRes
        > {
  _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails(
    this._instance,
    this._then,
  );

  final Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails
  _instance;

  final TRes Function(
    Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails(
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

class _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails<
  TRes
>
    implements
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$YardPaymentRule$levelUserEmails(
    this._res,
  );

  TRes _res;

  call({int? key, List<String>? value, String? $__typename}) => _res;
}

class Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule
    implements Query$SearchWorkflowRules$searchWorkflowRules {
  Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule({
    required this.id,
    required this.yardCode,
    required this.levelUserEmails,
    this.$__typename = 'AccountApprovalRule',
  });

  factory Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$yardCode = json['yardCode'];
    final l$levelUserEmails = json['levelUserEmails'];
    final l$$__typename = json['__typename'];
    return Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule(
      id: (l$id as String),
      yardCode: (l$yardCode as String),
      levelUserEmails: (l$levelUserEmails as List<dynamic>)
          .map(
            (e) =>
                Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String yardCode;

  final List<
    Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails
  >
  levelUserEmails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
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
    final l$levelUserEmails = levelUserEmails;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$yardCode,
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
            is! Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule ||
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

extension UtilityExtension$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule
    on Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule {
  CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule<
    Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule
  >
  get copyWith =>
      CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule<
  TRes
> {
  factory CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule(
    Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule instance,
    TRes Function(
      Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule,
    )
    then,
  ) = _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule;

  factory CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule;

  TRes call({
    String? id,
    String? yardCode,
    List<
      Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails
    >?
    levelUserEmails,
    String? $__typename,
  });
  TRes levelUserEmails(
    Iterable<
      Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails
    >
    Function(
      Iterable<
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails<
          Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule<
  TRes
>
    implements
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule<
          TRes
        > {
  _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule(
    this._instance,
    this._then,
  );

  final Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule
  _instance;

  final TRes Function(
    Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? yardCode = _undefined,
    Object? levelUserEmails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      levelUserEmails: levelUserEmails == _undefined || levelUserEmails == null
          ? _instance.levelUserEmails
          : (levelUserEmails
                as List<
                  Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes levelUserEmails(
    Iterable<
      Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails
    >
    Function(
      Iterable<
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails<
          Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails
        >
      >,
    )
    _fn,
  ) => call(
    levelUserEmails: _fn(
      _instance.levelUserEmails.map(
        (e) =>
            CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule<
  TRes
>
    implements
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? yardCode,
    List<
      Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails
    >?
    levelUserEmails,
    String? $__typename,
  }) => _res;

  levelUserEmails(_fn) => _res;
}

class Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails {
  Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfInt32AndListOfString',
  });

  factory Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails(
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
            is! Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails ||
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

extension UtilityExtension$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails
    on
        Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails {
  CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails<
    Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails
  >
  get copyWith =>
      CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails<
  TRes
> {
  factory CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails(
    Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails
    instance,
    TRes Function(
      Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails,
    )
    then,
  ) = _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails;

  factory CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails;

  TRes call({int? key, List<String>? value, String? $__typename});
}

class _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails<
  TRes
>
    implements
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails<
          TRes
        > {
  _CopyWithImpl$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails(
    this._instance,
    this._then,
  );

  final Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails
  _instance;

  final TRes Function(
    Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails(
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

class _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails<
  TRes
>
    implements
        CopyWith$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails<
          TRes
        > {
  _CopyWithStubImpl$Query$SearchWorkflowRules$searchWorkflowRules$$AccountApprovalRule$levelUserEmails(
    this._res,
  );

  TRes _res;

  call({int? key, List<String>? value, String? $__typename}) => _res;
}
