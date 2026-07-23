import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddAccountManager {
  factory Variables$Mutation$AddAccountManager({
    required Input$CreateAccountManagerInput input,
  }) => Variables$Mutation$AddAccountManager._({r'input': input});

  Variables$Mutation$AddAccountManager._(this._$data);

  factory Variables$Mutation$AddAccountManager.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateAccountManagerInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$AddAccountManager._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateAccountManagerInput get input =>
      (_$data['input'] as Input$CreateAccountManagerInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddAccountManager<
    Variables$Mutation$AddAccountManager
  >
  get copyWith => CopyWith$Variables$Mutation$AddAccountManager(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddAccountManager ||
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

abstract class CopyWith$Variables$Mutation$AddAccountManager<TRes> {
  factory CopyWith$Variables$Mutation$AddAccountManager(
    Variables$Mutation$AddAccountManager instance,
    TRes Function(Variables$Mutation$AddAccountManager) then,
  ) = _CopyWithImpl$Variables$Mutation$AddAccountManager;

  factory CopyWith$Variables$Mutation$AddAccountManager.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddAccountManager;

  TRes call({Input$CreateAccountManagerInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddAccountManager<TRes>
    implements CopyWith$Variables$Mutation$AddAccountManager<TRes> {
  _CopyWithImpl$Variables$Mutation$AddAccountManager(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddAccountManager _instance;

  final TRes Function(Variables$Mutation$AddAccountManager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$AddAccountManager._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateAccountManagerInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddAccountManager<TRes>
    implements CopyWith$Variables$Mutation$AddAccountManager<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddAccountManager(this._res);

  TRes _res;

  call({Input$CreateAccountManagerInput? input}) => _res;
}

class Mutation$AddAccountManager {
  Mutation$AddAccountManager({
    this.addAccountManager,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddAccountManager.fromJson(Map<String, dynamic> json) {
    final l$addAccountManager = json['addAccountManager'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountManager(
      addAccountManager: l$addAccountManager == null
          ? null
          : Mutation$AddAccountManager$addAccountManager.fromJson(
              (l$addAccountManager as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddAccountManager$addAccountManager? addAccountManager;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addAccountManager = addAccountManager;
    _resultData['addAccountManager'] = l$addAccountManager?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addAccountManager = addAccountManager;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addAccountManager, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddAccountManager ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addAccountManager = addAccountManager;
    final lOther$addAccountManager = other.addAccountManager;
    if (l$addAccountManager != lOther$addAccountManager) {
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

extension UtilityExtension$Mutation$AddAccountManager
    on Mutation$AddAccountManager {
  CopyWith$Mutation$AddAccountManager<Mutation$AddAccountManager>
  get copyWith => CopyWith$Mutation$AddAccountManager(this, (i) => i);
}

abstract class CopyWith$Mutation$AddAccountManager<TRes> {
  factory CopyWith$Mutation$AddAccountManager(
    Mutation$AddAccountManager instance,
    TRes Function(Mutation$AddAccountManager) then,
  ) = _CopyWithImpl$Mutation$AddAccountManager;

  factory CopyWith$Mutation$AddAccountManager.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddAccountManager;

  TRes call({
    Mutation$AddAccountManager$addAccountManager? addAccountManager,
    String? $__typename,
  });
  CopyWith$Mutation$AddAccountManager$addAccountManager<TRes>
  get addAccountManager;
}

class _CopyWithImpl$Mutation$AddAccountManager<TRes>
    implements CopyWith$Mutation$AddAccountManager<TRes> {
  _CopyWithImpl$Mutation$AddAccountManager(this._instance, this._then);

  final Mutation$AddAccountManager _instance;

  final TRes Function(Mutation$AddAccountManager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addAccountManager = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddAccountManager(
      addAccountManager: addAccountManager == _undefined
          ? _instance.addAccountManager
          : (addAccountManager
                as Mutation$AddAccountManager$addAccountManager?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddAccountManager$addAccountManager<TRes>
  get addAccountManager {
    final local$addAccountManager = _instance.addAccountManager;
    return local$addAccountManager == null
        ? CopyWith$Mutation$AddAccountManager$addAccountManager.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$AddAccountManager$addAccountManager(
            local$addAccountManager,
            (e) => call(addAccountManager: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$AddAccountManager<TRes>
    implements CopyWith$Mutation$AddAccountManager<TRes> {
  _CopyWithStubImpl$Mutation$AddAccountManager(this._res);

  TRes _res;

  call({
    Mutation$AddAccountManager$addAccountManager? addAccountManager,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddAccountManager$addAccountManager<TRes>
  get addAccountManager =>
      CopyWith$Mutation$AddAccountManager$addAccountManager.stub(_res);
}

const documentNodeMutationAddAccountManager = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddAccountManager'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateAccountManagerInput'),
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
            name: NameNode(value: 'addAccountManager'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'createOrUpdateAccountManagerInput'),
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

class Mutation$AddAccountManager$addAccountManager {
  Mutation$AddAccountManager$addAccountManager({required this.$__typename});

  factory Mutation$AddAccountManager$addAccountManager.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "Account":
        return Mutation$AddAccountManager$addAccountManager$$Account.fromJson(
          json,
        );

      case "AccountManagerError":
        return Mutation$AddAccountManager$addAccountManager$$AccountManagerError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$AddAccountManager$addAccountManager(
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
    if (other is! Mutation$AddAccountManager$addAccountManager ||
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

extension UtilityExtension$Mutation$AddAccountManager$addAccountManager
    on Mutation$AddAccountManager$addAccountManager {
  CopyWith$Mutation$AddAccountManager$addAccountManager<
    Mutation$AddAccountManager$addAccountManager
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountManager$addAccountManager(this, (i) => i);

  _T when<_T>({
    required _T Function(Mutation$AddAccountManager$addAccountManager$$Account)
    account,
    required _T Function(
      Mutation$AddAccountManager$addAccountManager$$AccountManagerError,
    )
    accountManagerError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        return account(
          this as Mutation$AddAccountManager$addAccountManager$$Account,
        );

      case "AccountManagerError":
        return accountManagerError(
          this
              as Mutation$AddAccountManager$addAccountManager$$AccountManagerError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$AddAccountManager$addAccountManager$$Account)? account,
    _T Function(
      Mutation$AddAccountManager$addAccountManager$$AccountManagerError,
    )?
    accountManagerError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        if (account != null) {
          return account(
            this as Mutation$AddAccountManager$addAccountManager$$Account,
          );
        } else {
          return orElse();
        }

      case "AccountManagerError":
        if (accountManagerError != null) {
          return accountManagerError(
            this
                as Mutation$AddAccountManager$addAccountManager$$AccountManagerError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$AddAccountManager$addAccountManager<TRes> {
  factory CopyWith$Mutation$AddAccountManager$addAccountManager(
    Mutation$AddAccountManager$addAccountManager instance,
    TRes Function(Mutation$AddAccountManager$addAccountManager) then,
  ) = _CopyWithImpl$Mutation$AddAccountManager$addAccountManager;

  factory CopyWith$Mutation$AddAccountManager$addAccountManager.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountManager$addAccountManager<TRes>
    implements CopyWith$Mutation$AddAccountManager$addAccountManager<TRes> {
  _CopyWithImpl$Mutation$AddAccountManager$addAccountManager(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountManager$addAccountManager _instance;

  final TRes Function(Mutation$AddAccountManager$addAccountManager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$AddAccountManager$addAccountManager(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager<TRes>
    implements CopyWith$Mutation$AddAccountManager$addAccountManager<TRes> {
  _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$AddAccountManager$addAccountManager$$Account
    implements Mutation$AddAccountManager$addAccountManager {
  Mutation$AddAccountManager$addAccountManager$$Account({
    required this.primaryManager,
    this.accountManagers,
    this.$__typename = 'Account',
  });

  factory Mutation$AddAccountManager$addAccountManager$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$primaryManager = json['primaryManager'];
    final l$accountManagers = json['accountManagers'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountManager$addAccountManager$$Account(
      primaryManager:
          Mutation$AddAccountManager$addAccountManager$$Account$primaryManager.fromJson(
            (l$primaryManager as Map<String, dynamic>),
          ),
      accountManagers: (l$accountManagers as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation$AddAccountManager$addAccountManager$$Account$accountManagers.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddAccountManager$addAccountManager$$Account$primaryManager
  primaryManager;

  final List<
    Mutation$AddAccountManager$addAccountManager$$Account$accountManagers?
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
    if (other is! Mutation$AddAccountManager$addAccountManager$$Account ||
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

extension UtilityExtension$Mutation$AddAccountManager$addAccountManager$$Account
    on Mutation$AddAccountManager$addAccountManager$$Account {
  CopyWith$Mutation$AddAccountManager$addAccountManager$$Account<
    Mutation$AddAccountManager$addAccountManager$$Account
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountManager$addAccountManager$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddAccountManager$addAccountManager$$Account<
  TRes
> {
  factory CopyWith$Mutation$AddAccountManager$addAccountManager$$Account(
    Mutation$AddAccountManager$addAccountManager$$Account instance,
    TRes Function(Mutation$AddAccountManager$addAccountManager$$Account) then,
  ) = _CopyWithImpl$Mutation$AddAccountManager$addAccountManager$$Account;

  factory CopyWith$Mutation$AddAccountManager$addAccountManager$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager$$Account;

  TRes call({
    Mutation$AddAccountManager$addAccountManager$$Account$primaryManager?
    primaryManager,
    List<
      Mutation$AddAccountManager$addAccountManager$$Account$accountManagers?
    >?
    accountManagers,
    String? $__typename,
  });
  CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager<
    TRes
  >
  get primaryManager;
  TRes accountManagers(
    Iterable<
      Mutation$AddAccountManager$addAccountManager$$Account$accountManagers?
    >?
    Function(
      Iterable<
        CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers<
          Mutation$AddAccountManager$addAccountManager$$Account$accountManagers
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$AddAccountManager$addAccountManager$$Account<TRes>
    implements
        CopyWith$Mutation$AddAccountManager$addAccountManager$$Account<TRes> {
  _CopyWithImpl$Mutation$AddAccountManager$addAccountManager$$Account(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountManager$addAccountManager$$Account _instance;

  final TRes Function(Mutation$AddAccountManager$addAccountManager$$Account)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? primaryManager = _undefined,
    Object? accountManagers = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddAccountManager$addAccountManager$$Account(
      primaryManager: primaryManager == _undefined || primaryManager == null
          ? _instance.primaryManager
          : (primaryManager
                as Mutation$AddAccountManager$addAccountManager$$Account$primaryManager),
      accountManagers: accountManagers == _undefined
          ? _instance.accountManagers
          : (accountManagers
                as List<
                  Mutation$AddAccountManager$addAccountManager$$Account$accountManagers?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager<
    TRes
  >
  get primaryManager {
    final local$primaryManager = _instance.primaryManager;
    return CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager(
      local$primaryManager,
      (e) => call(primaryManager: e),
    );
  }

  TRes accountManagers(
    Iterable<
      Mutation$AddAccountManager$addAccountManager$$Account$accountManagers?
    >?
    Function(
      Iterable<
        CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers<
          Mutation$AddAccountManager$addAccountManager$$Account$accountManagers
        >?
      >?,
    )
    _fn,
  ) => call(
    accountManagers: _fn(
      _instance.accountManagers?.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager$$Account<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountManager$addAccountManager$$Account<TRes> {
  _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager$$Account(
    this._res,
  );

  TRes _res;

  call({
    Mutation$AddAccountManager$addAccountManager$$Account$primaryManager?
    primaryManager,
    List<
      Mutation$AddAccountManager$addAccountManager$$Account$accountManagers?
    >?
    accountManagers,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager<
    TRes
  >
  get primaryManager =>
      CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager.stub(
        _res,
      );

  accountManagers(_fn) => _res;
}

class Mutation$AddAccountManager$addAccountManager$$Account$primaryManager {
  Mutation$AddAccountManager$addAccountManager$$Account$primaryManager({
    this.name,
    this.$__typename = 'ManagementDetail',
  });

  factory Mutation$AddAccountManager$addAccountManager$$Account$primaryManager.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountManager$addAccountManager$$Account$primaryManager(
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
            is! Mutation$AddAccountManager$addAccountManager$$Account$primaryManager ||
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

extension UtilityExtension$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager
    on Mutation$AddAccountManager$addAccountManager$$Account$primaryManager {
  CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager<
    Mutation$AddAccountManager$addAccountManager$$Account$primaryManager
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager<
  TRes
> {
  factory CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager(
    Mutation$AddAccountManager$addAccountManager$$Account$primaryManager
    instance,
    TRes Function(
      Mutation$AddAccountManager$addAccountManager$$Account$primaryManager,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager;

  factory CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager<
          TRes
        > {
  _CopyWithImpl$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountManager$addAccountManager$$Account$primaryManager
  _instance;

  final TRes Function(
    Mutation$AddAccountManager$addAccountManager$$Account$primaryManager,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$AddAccountManager$addAccountManager$$Account$primaryManager(
          name: name == _undefined ? _instance.name : (name as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager$$Account$primaryManager(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Mutation$AddAccountManager$addAccountManager$$Account$accountManagers {
  Mutation$AddAccountManager$addAccountManager$$Account$accountManagers({
    this.name,
    this.$__typename = 'AccountManagerWithKey',
  });

  factory Mutation$AddAccountManager$addAccountManager$$Account$accountManagers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountManager$addAccountManager$$Account$accountManagers(
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
            is! Mutation$AddAccountManager$addAccountManager$$Account$accountManagers ||
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

extension UtilityExtension$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers
    on Mutation$AddAccountManager$addAccountManager$$Account$accountManagers {
  CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers<
    Mutation$AddAccountManager$addAccountManager$$Account$accountManagers
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers<
  TRes
> {
  factory CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers(
    Mutation$AddAccountManager$addAccountManager$$Account$accountManagers
    instance,
    TRes Function(
      Mutation$AddAccountManager$addAccountManager$$Account$accountManagers,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers;

  factory CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers<
          TRes
        > {
  _CopyWithImpl$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountManager$addAccountManager$$Account$accountManagers
  _instance;

  final TRes Function(
    Mutation$AddAccountManager$addAccountManager$$Account$accountManagers,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$AddAccountManager$addAccountManager$$Account$accountManagers(
          name: name == _undefined ? _instance.name : (name as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager$$Account$accountManagers(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Mutation$AddAccountManager$addAccountManager$$AccountManagerError
    implements Mutation$AddAccountManager$addAccountManager {
  Mutation$AddAccountManager$addAccountManager$$AccountManagerError({
    required this.message,
    this.$__typename = 'AccountManagerError',
  });

  factory Mutation$AddAccountManager$addAccountManager$$AccountManagerError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountManager$addAccountManager$$AccountManagerError(
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
            is! Mutation$AddAccountManager$addAccountManager$$AccountManagerError ||
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

extension UtilityExtension$Mutation$AddAccountManager$addAccountManager$$AccountManagerError
    on Mutation$AddAccountManager$addAccountManager$$AccountManagerError {
  CopyWith$Mutation$AddAccountManager$addAccountManager$$AccountManagerError<
    Mutation$AddAccountManager$addAccountManager$$AccountManagerError
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountManager$addAccountManager$$AccountManagerError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddAccountManager$addAccountManager$$AccountManagerError<
  TRes
> {
  factory CopyWith$Mutation$AddAccountManager$addAccountManager$$AccountManagerError(
    Mutation$AddAccountManager$addAccountManager$$AccountManagerError instance,
    TRes Function(
      Mutation$AddAccountManager$addAccountManager$$AccountManagerError,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddAccountManager$addAccountManager$$AccountManagerError;

  factory CopyWith$Mutation$AddAccountManager$addAccountManager$$AccountManagerError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager$$AccountManagerError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountManager$addAccountManager$$AccountManagerError<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountManager$addAccountManager$$AccountManagerError<
          TRes
        > {
  _CopyWithImpl$Mutation$AddAccountManager$addAccountManager$$AccountManagerError(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountManager$addAccountManager$$AccountManagerError
  _instance;

  final TRes Function(
    Mutation$AddAccountManager$addAccountManager$$AccountManagerError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$AddAccountManager$addAccountManager$$AccountManagerError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager$$AccountManagerError<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountManager$addAccountManager$$AccountManagerError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddAccountManager$addAccountManager$$AccountManagerError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
