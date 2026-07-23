import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$ReorderAccountManagers {
  factory Variables$Mutation$ReorderAccountManagers({
    required Input$ReorderAccountManagersInput input,
  }) => Variables$Mutation$ReorderAccountManagers._({r'input': input});

  Variables$Mutation$ReorderAccountManagers._(this._$data);

  factory Variables$Mutation$ReorderAccountManagers.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ReorderAccountManagersInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$ReorderAccountManagers._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ReorderAccountManagersInput get input =>
      (_$data['input'] as Input$ReorderAccountManagersInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ReorderAccountManagers<
    Variables$Mutation$ReorderAccountManagers
  >
  get copyWith =>
      CopyWith$Variables$Mutation$ReorderAccountManagers(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ReorderAccountManagers ||
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

abstract class CopyWith$Variables$Mutation$ReorderAccountManagers<TRes> {
  factory CopyWith$Variables$Mutation$ReorderAccountManagers(
    Variables$Mutation$ReorderAccountManagers instance,
    TRes Function(Variables$Mutation$ReorderAccountManagers) then,
  ) = _CopyWithImpl$Variables$Mutation$ReorderAccountManagers;

  factory CopyWith$Variables$Mutation$ReorderAccountManagers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ReorderAccountManagers;

  TRes call({Input$ReorderAccountManagersInput? input});
}

class _CopyWithImpl$Variables$Mutation$ReorderAccountManagers<TRes>
    implements CopyWith$Variables$Mutation$ReorderAccountManagers<TRes> {
  _CopyWithImpl$Variables$Mutation$ReorderAccountManagers(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ReorderAccountManagers _instance;

  final TRes Function(Variables$Mutation$ReorderAccountManagers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$ReorderAccountManagers._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$ReorderAccountManagersInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ReorderAccountManagers<TRes>
    implements CopyWith$Variables$Mutation$ReorderAccountManagers<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ReorderAccountManagers(this._res);

  TRes _res;

  call({Input$ReorderAccountManagersInput? input}) => _res;
}

class Mutation$ReorderAccountManagers {
  Mutation$ReorderAccountManagers({
    this.reorderAccountManagers,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ReorderAccountManagers.fromJson(Map<String, dynamic> json) {
    final l$reorderAccountManagers = json['reorderAccountManagers'];
    final l$$__typename = json['__typename'];
    return Mutation$ReorderAccountManagers(
      reorderAccountManagers: l$reorderAccountManagers == null
          ? null
          : Mutation$ReorderAccountManagers$reorderAccountManagers.fromJson(
              (l$reorderAccountManagers as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ReorderAccountManagers$reorderAccountManagers?
  reorderAccountManagers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$reorderAccountManagers = reorderAccountManagers;
    _resultData['reorderAccountManagers'] = l$reorderAccountManagers?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$reorderAccountManagers = reorderAccountManagers;
    final l$$__typename = $__typename;
    return Object.hashAll([l$reorderAccountManagers, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ReorderAccountManagers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reorderAccountManagers = reorderAccountManagers;
    final lOther$reorderAccountManagers = other.reorderAccountManagers;
    if (l$reorderAccountManagers != lOther$reorderAccountManagers) {
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

extension UtilityExtension$Mutation$ReorderAccountManagers
    on Mutation$ReorderAccountManagers {
  CopyWith$Mutation$ReorderAccountManagers<Mutation$ReorderAccountManagers>
  get copyWith => CopyWith$Mutation$ReorderAccountManagers(this, (i) => i);
}

abstract class CopyWith$Mutation$ReorderAccountManagers<TRes> {
  factory CopyWith$Mutation$ReorderAccountManagers(
    Mutation$ReorderAccountManagers instance,
    TRes Function(Mutation$ReorderAccountManagers) then,
  ) = _CopyWithImpl$Mutation$ReorderAccountManagers;

  factory CopyWith$Mutation$ReorderAccountManagers.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ReorderAccountManagers;

  TRes call({
    Mutation$ReorderAccountManagers$reorderAccountManagers?
    reorderAccountManagers,
    String? $__typename,
  });
  CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers<TRes>
  get reorderAccountManagers;
}

class _CopyWithImpl$Mutation$ReorderAccountManagers<TRes>
    implements CopyWith$Mutation$ReorderAccountManagers<TRes> {
  _CopyWithImpl$Mutation$ReorderAccountManagers(this._instance, this._then);

  final Mutation$ReorderAccountManagers _instance;

  final TRes Function(Mutation$ReorderAccountManagers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reorderAccountManagers = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ReorderAccountManagers(
      reorderAccountManagers: reorderAccountManagers == _undefined
          ? _instance.reorderAccountManagers
          : (reorderAccountManagers
                as Mutation$ReorderAccountManagers$reorderAccountManagers?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers<TRes>
  get reorderAccountManagers {
    final local$reorderAccountManagers = _instance.reorderAccountManagers;
    return local$reorderAccountManagers == null
        ? CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers(
            local$reorderAccountManagers,
            (e) => call(reorderAccountManagers: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ReorderAccountManagers<TRes>
    implements CopyWith$Mutation$ReorderAccountManagers<TRes> {
  _CopyWithStubImpl$Mutation$ReorderAccountManagers(this._res);

  TRes _res;

  call({
    Mutation$ReorderAccountManagers$reorderAccountManagers?
    reorderAccountManagers,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers<TRes>
  get reorderAccountManagers =>
      CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers.stub(
        _res,
      );
}

const documentNodeMutationReorderAccountManagers = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ReorderAccountManagers'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'ReorderAccountManagersInput'),
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
            name: NameNode(value: 'reorderAccountManagers'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'reorderAccountManagersInput'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'Account'),
                      isNonNull: false,
                    ),
                  ),
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'primaryManager'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'name'),
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
                        name: NameNode(value: 'accountManagers'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'name'),
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
                      name: NameNode(value: 'AccountManagerError'),
                      isNonNull: false,
                    ),
                  ),
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'message'),
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

class Mutation$ReorderAccountManagers$reorderAccountManagers {
  Mutation$ReorderAccountManagers$reorderAccountManagers({
    required this.$__typename,
  });

  factory Mutation$ReorderAccountManagers$reorderAccountManagers.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "Account":
        return Mutation$ReorderAccountManagers$reorderAccountManagers$$Account.fromJson(
          json,
        );

      case "AccountManagerError":
        return Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$ReorderAccountManagers$reorderAccountManagers(
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
    if (other is! Mutation$ReorderAccountManagers$reorderAccountManagers ||
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

extension UtilityExtension$Mutation$ReorderAccountManagers$reorderAccountManagers
    on Mutation$ReorderAccountManagers$reorderAccountManagers {
  CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers<
    Mutation$ReorderAccountManagers$reorderAccountManagers
  >
  get copyWith =>
      CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$ReorderAccountManagers$reorderAccountManagers$$Account,
    )
    account,
    required _T Function(
      Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError,
    )
    accountManagerError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        return account(
          this
              as Mutation$ReorderAccountManagers$reorderAccountManagers$$Account,
        );

      case "AccountManagerError":
        return accountManagerError(
          this
              as Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$ReorderAccountManagers$reorderAccountManagers$$Account,
    )?
    account,
    _T Function(
      Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError,
    )?
    accountManagerError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$ReorderAccountManagers$reorderAccountManagers$$Account,
          );
        } else {
          return orElse();
        }

      case "AccountManagerError":
        if (accountManagerError != null) {
          return accountManagerError(
            this
                as Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers<
  TRes
> {
  factory CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers(
    Mutation$ReorderAccountManagers$reorderAccountManagers instance,
    TRes Function(Mutation$ReorderAccountManagers$reorderAccountManagers) then,
  ) = _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers;

  factory CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers<TRes>
    implements
        CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers<TRes> {
  _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers(
    this._instance,
    this._then,
  );

  final Mutation$ReorderAccountManagers$reorderAccountManagers _instance;

  final TRes Function(Mutation$ReorderAccountManagers$reorderAccountManagers)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$ReorderAccountManagers$reorderAccountManagers(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers<
  TRes
>
    implements
        CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers<TRes> {
  _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ReorderAccountManagers$reorderAccountManagers$$Account
    implements Mutation$ReorderAccountManagers$reorderAccountManagers {
  Mutation$ReorderAccountManagers$reorderAccountManagers$$Account({
    required this.primaryManager,
    this.accountManagers,
    this.$__typename = 'Account',
  });

  factory Mutation$ReorderAccountManagers$reorderAccountManagers$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$primaryManager = json['primaryManager'];
    final l$accountManagers = json['accountManagers'];
    final l$$__typename = json['__typename'];
    return Mutation$ReorderAccountManagers$reorderAccountManagers$$Account(
      primaryManager:
          Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager.fromJson(
            (l$primaryManager as Map<String, dynamic>),
          ),
      accountManagers: (l$accountManagers as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager
  primaryManager;

  final List<
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers?
  >?
  accountManagers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$primaryManager = primaryManager;
    _resultData['primaryManager'] = l$primaryManager.toJson();
    final l$accountManagers = accountManagers;
    _resultData['accountManagers'] = l$accountManagers
        ?.map((e) => e?.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$primaryManager = primaryManager;
    final l$accountManagers = accountManagers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$primaryManager,
      l$accountManagers == null
          ? null
          : Object.hashAll(l$accountManagers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ReorderAccountManagers$reorderAccountManagers$$Account ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$primaryManager = primaryManager;
    final lOther$primaryManager = other.primaryManager;
    if (l$primaryManager != lOther$primaryManager) {
      return false;
    }
    final l$accountManagers = accountManagers;
    final lOther$accountManagers = other.accountManagers;
    if (l$accountManagers != null && lOther$accountManagers != null) {
      if (l$accountManagers.length != lOther$accountManagers.length) {
        return false;
      }
      for (int i = 0; i < l$accountManagers.length; i++) {
        final l$accountManagers$entry = l$accountManagers[i];
        final lOther$accountManagers$entry = lOther$accountManagers[i];
        if (l$accountManagers$entry != lOther$accountManagers$entry) {
          return false;
        }
      }
    } else if (l$accountManagers != lOther$accountManagers) {
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

extension UtilityExtension$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account
    on Mutation$ReorderAccountManagers$reorderAccountManagers$$Account {
  CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account<
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account
  >
  get copyWith =>
      CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account<
  TRes
> {
  factory CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account(
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account instance,
    TRes Function(
      Mutation$ReorderAccountManagers$reorderAccountManagers$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account;

  factory CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account;

  TRes call({
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager?
    primaryManager,
    List<
      Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers?
    >?
    accountManagers,
    String? $__typename,
  });
  CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager<
    TRes
  >
  get primaryManager;
  TRes accountManagers(
    Iterable<
      Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers?
    >?
    Function(
      Iterable<
        CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers<
          Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account<
  TRes
>
    implements
        CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account(
    this._instance,
    this._then,
  );

  final Mutation$ReorderAccountManagers$reorderAccountManagers$$Account
  _instance;

  final TRes Function(
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? primaryManager = _undefined,
    Object? accountManagers = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account(
      primaryManager: primaryManager == _undefined || primaryManager == null
          ? _instance.primaryManager
          : (primaryManager
                as Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager),
      accountManagers: accountManagers == _undefined
          ? _instance.accountManagers
          : (accountManagers
                as List<
                  Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager<
    TRes
  >
  get primaryManager {
    final local$primaryManager = _instance.primaryManager;
    return CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager(
      local$primaryManager,
      (e) => call(primaryManager: e),
    );
  }

  TRes accountManagers(
    Iterable<
      Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers?
    >?
    Function(
      Iterable<
        CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers<
          Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers
        >?
      >?,
    )
    _fn,
  ) => call(
    accountManagers: _fn(
      _instance.accountManagers?.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account<
  TRes
>
    implements
        CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager?
    primaryManager,
    List<
      Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers?
    >?
    accountManagers,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager<
    TRes
  >
  get primaryManager =>
      CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager.stub(
        _res,
      );

  accountManagers(_fn) => _res;
}

class Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager {
  Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager({
    this.name,
    this.$__typename = 'ManagementDetail',
  });

  factory Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager
    on Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager {
  CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager<
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager
  >
  get copyWith =>
      CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager<
  TRes
> {
  factory CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager(
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager
    instance,
    TRes Function(
      Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager,
    )
    then,
  ) = _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager;

  factory CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager<
  TRes
>
    implements
        CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager<
          TRes
        > {
  _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager(
    this._instance,
    this._then,
  );

  final Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager
  _instance;

  final TRes Function(
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager(
      name: name == _undefined ? _instance.name : (name as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager<
  TRes
>
    implements
        CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$primaryManager(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers {
  Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers({
    this.name,
    this.$__typename = 'AccountManagerWithKey',
  });

  factory Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers
    on
        Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers {
  CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers<
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers
  >
  get copyWith =>
      CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers<
  TRes
> {
  factory CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers(
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers
    instance,
    TRes Function(
      Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers,
    )
    then,
  ) = _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers;

  factory CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers<
  TRes
>
    implements
        CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers<
          TRes
        > {
  _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers(
    this._instance,
    this._then,
  );

  final Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers
  _instance;

  final TRes Function(
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers(
      name: name == _undefined ? _instance.name : (name as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers<
  TRes
>
    implements
        CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$Account$accountManagers(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError
    implements Mutation$ReorderAccountManagers$reorderAccountManagers {
  Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError({
    required this.message,
    this.$__typename = 'AccountManagerError',
  });

  factory Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError
    on Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError {
  CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError<
    Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError
  >
  get copyWith =>
      CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError<
  TRes
> {
  factory CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError(
    Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError
    instance,
    TRes Function(
      Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError,
    )
    then,
  ) = _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError;

  factory CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError<
  TRes
>
    implements
        CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError<
          TRes
        > {
  _CopyWithImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError(
    this._instance,
    this._then,
  );

  final Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError
  _instance;

  final TRes Function(
    Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError<
  TRes
>
    implements
        CopyWith$Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ReorderAccountManagers$reorderAccountManagers$$AccountManagerError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
