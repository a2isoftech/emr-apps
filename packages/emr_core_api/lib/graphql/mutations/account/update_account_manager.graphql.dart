import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateAccountManager {
  factory Variables$Mutation$UpdateAccountManager({
    required Input$UpdateAccountManagerInput input,
  }) => Variables$Mutation$UpdateAccountManager._({r'input': input});

  Variables$Mutation$UpdateAccountManager._(this._$data);

  factory Variables$Mutation$UpdateAccountManager.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateAccountManagerInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateAccountManager._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateAccountManagerInput get input =>
      (_$data['input'] as Input$UpdateAccountManagerInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAccountManager<
    Variables$Mutation$UpdateAccountManager
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateAccountManager(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateAccountManager ||
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

abstract class CopyWith$Variables$Mutation$UpdateAccountManager<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAccountManager(
    Variables$Mutation$UpdateAccountManager instance,
    TRes Function(Variables$Mutation$UpdateAccountManager) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAccountManager;

  factory CopyWith$Variables$Mutation$UpdateAccountManager.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAccountManager;

  TRes call({Input$UpdateAccountManagerInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateAccountManager<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountManager<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAccountManager(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAccountManager _instance;

  final TRes Function(Variables$Mutation$UpdateAccountManager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateAccountManager._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateAccountManagerInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAccountManager<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountManager<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAccountManager(this._res);

  TRes _res;

  call({Input$UpdateAccountManagerInput? input}) => _res;
}

class Mutation$UpdateAccountManager {
  Mutation$UpdateAccountManager({
    this.updateAccountManager,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAccountManager.fromJson(Map<String, dynamic> json) {
    final l$updateAccountManager = json['updateAccountManager'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountManager(
      updateAccountManager: l$updateAccountManager == null
          ? null
          : Mutation$UpdateAccountManager$updateAccountManager.fromJson(
              (l$updateAccountManager as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAccountManager$updateAccountManager?
  updateAccountManager;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAccountManager = updateAccountManager;
    _resultData['updateAccountManager'] = l$updateAccountManager?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAccountManager = updateAccountManager;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateAccountManager, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccountManager ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAccountManager = updateAccountManager;
    final lOther$updateAccountManager = other.updateAccountManager;
    if (l$updateAccountManager != lOther$updateAccountManager) {
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

extension UtilityExtension$Mutation$UpdateAccountManager
    on Mutation$UpdateAccountManager {
  CopyWith$Mutation$UpdateAccountManager<Mutation$UpdateAccountManager>
  get copyWith => CopyWith$Mutation$UpdateAccountManager(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateAccountManager<TRes> {
  factory CopyWith$Mutation$UpdateAccountManager(
    Mutation$UpdateAccountManager instance,
    TRes Function(Mutation$UpdateAccountManager) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountManager;

  factory CopyWith$Mutation$UpdateAccountManager.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccountManager;

  TRes call({
    Mutation$UpdateAccountManager$updateAccountManager? updateAccountManager,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccountManager$updateAccountManager<TRes>
  get updateAccountManager;
}

class _CopyWithImpl$Mutation$UpdateAccountManager<TRes>
    implements CopyWith$Mutation$UpdateAccountManager<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountManager(this._instance, this._then);

  final Mutation$UpdateAccountManager _instance;

  final TRes Function(Mutation$UpdateAccountManager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAccountManager = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountManager(
      updateAccountManager: updateAccountManager == _undefined
          ? _instance.updateAccountManager
          : (updateAccountManager
                as Mutation$UpdateAccountManager$updateAccountManager?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccountManager$updateAccountManager<TRes>
  get updateAccountManager {
    final local$updateAccountManager = _instance.updateAccountManager;
    return local$updateAccountManager == null
        ? CopyWith$Mutation$UpdateAccountManager$updateAccountManager.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateAccountManager$updateAccountManager(
            local$updateAccountManager,
            (e) => call(updateAccountManager: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccountManager<TRes>
    implements CopyWith$Mutation$UpdateAccountManager<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountManager(this._res);

  TRes _res;

  call({
    Mutation$UpdateAccountManager$updateAccountManager? updateAccountManager,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccountManager$updateAccountManager<TRes>
  get updateAccountManager =>
      CopyWith$Mutation$UpdateAccountManager$updateAccountManager.stub(_res);
}

const documentNodeMutationUpdateAccountManager = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateAccountManager'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateAccountManagerInput'),
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
            name: NameNode(value: 'updateAccountManager'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'updateAccountManagerInput'),
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
                              name: NameNode(value: 'type'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'priority'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'serviceType'),
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

class Mutation$UpdateAccountManager$updateAccountManager {
  Mutation$UpdateAccountManager$updateAccountManager({
    required this.$__typename,
  });

  factory Mutation$UpdateAccountManager$updateAccountManager.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "Account":
        return Mutation$UpdateAccountManager$updateAccountManager$$Account.fromJson(
          json,
        );

      case "AccountManagerError":
        return Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateAccountManager$updateAccountManager(
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
    if (other is! Mutation$UpdateAccountManager$updateAccountManager ||
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

extension UtilityExtension$Mutation$UpdateAccountManager$updateAccountManager
    on Mutation$UpdateAccountManager$updateAccountManager {
  CopyWith$Mutation$UpdateAccountManager$updateAccountManager<
    Mutation$UpdateAccountManager$updateAccountManager
  >
  get copyWith => CopyWith$Mutation$UpdateAccountManager$updateAccountManager(
    this,
    (i) => i,
  );

  _T when<_T>({
    required _T Function(
      Mutation$UpdateAccountManager$updateAccountManager$$Account,
    )
    account,
    required _T Function(
      Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError,
    )
    accountManagerError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        return account(
          this as Mutation$UpdateAccountManager$updateAccountManager$$Account,
        );

      case "AccountManagerError":
        return accountManagerError(
          this
              as Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$UpdateAccountManager$updateAccountManager$$Account)?
    account,
    _T Function(
      Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError,
    )?
    accountManagerError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        if (account != null) {
          return account(
            this as Mutation$UpdateAccountManager$updateAccountManager$$Account,
          );
        } else {
          return orElse();
        }

      case "AccountManagerError":
        if (accountManagerError != null) {
          return accountManagerError(
            this
                as Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateAccountManager$updateAccountManager<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountManager$updateAccountManager(
    Mutation$UpdateAccountManager$updateAccountManager instance,
    TRes Function(Mutation$UpdateAccountManager$updateAccountManager) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager;

  factory CopyWith$Mutation$UpdateAccountManager$updateAccountManager.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager<TRes>
    implements
        CopyWith$Mutation$UpdateAccountManager$updateAccountManager<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountManager$updateAccountManager _instance;

  final TRes Function(Mutation$UpdateAccountManager$updateAccountManager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateAccountManager$updateAccountManager(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager<TRes>
    implements
        CopyWith$Mutation$UpdateAccountManager$updateAccountManager<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateAccountManager$updateAccountManager$$Account
    implements Mutation$UpdateAccountManager$updateAccountManager {
  Mutation$UpdateAccountManager$updateAccountManager$$Account({
    required this.primaryManager,
    this.accountManagers,
    this.$__typename = 'Account',
  });

  factory Mutation$UpdateAccountManager$updateAccountManager$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$primaryManager = json['primaryManager'];
    final l$accountManagers = json['accountManagers'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountManager$updateAccountManager$$Account(
      primaryManager:
          Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager.fromJson(
            (l$primaryManager as Map<String, dynamic>),
          ),
      accountManagers: (l$accountManagers as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager
  primaryManager;

  final List<
    Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers?
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
    if (other is! Mutation$UpdateAccountManager$updateAccountManager$$Account ||
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

extension UtilityExtension$Mutation$UpdateAccountManager$updateAccountManager$$Account
    on Mutation$UpdateAccountManager$updateAccountManager$$Account {
  CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account<
    Mutation$UpdateAccountManager$updateAccountManager$$Account
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account(
    Mutation$UpdateAccountManager$updateAccountManager$$Account instance,
    TRes Function(Mutation$UpdateAccountManager$updateAccountManager$$Account)
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account;

  factory CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account;

  TRes call({
    Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager?
    primaryManager,
    List<
      Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers?
    >?
    accountManagers,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager<
    TRes
  >
  get primaryManager;
  TRes accountManagers(
    Iterable<
      Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers?
    >?
    Function(
      Iterable<
        CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers<
          Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountManager$updateAccountManager$$Account _instance;

  final TRes Function(
    Mutation$UpdateAccountManager$updateAccountManager$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? primaryManager = _undefined,
    Object? accountManagers = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountManager$updateAccountManager$$Account(
      primaryManager: primaryManager == _undefined || primaryManager == null
          ? _instance.primaryManager
          : (primaryManager
                as Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager),
      accountManagers: accountManagers == _undefined
          ? _instance.accountManagers
          : (accountManagers
                as List<
                  Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager<
    TRes
  >
  get primaryManager {
    final local$primaryManager = _instance.primaryManager;
    return CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager(
      local$primaryManager,
      (e) => call(primaryManager: e),
    );
  }

  TRes accountManagers(
    Iterable<
      Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers?
    >?
    Function(
      Iterable<
        CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers<
          Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers
        >?
      >?,
    )
    _fn,
  ) => call(
    accountManagers: _fn(
      _instance.accountManagers?.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account(
    this._res,
  );

  TRes _res;

  call({
    Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager?
    primaryManager,
    List<
      Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers?
    >?
    accountManagers,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager<
    TRes
  >
  get primaryManager =>
      CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager.stub(
        _res,
      );

  accountManagers(_fn) => _res;
}

class Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager {
  Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager({
    this.name,
    this.$__typename = 'ManagementDetail',
  });

  factory Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager(
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
            is! Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager ||
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

extension UtilityExtension$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager
    on Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager {
  CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager<
    Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager(
    Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager
    instance,
    TRes Function(
      Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager;

  factory CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager
  _instance;

  final TRes Function(
    Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager(
      name: name == _undefined ? _instance.name : (name as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account$primaryManager(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers {
  Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers({
    this.name,
    this.type,
    required this.priority,
    this.serviceType,
    this.$__typename = 'AccountManagerWithKey',
  });

  factory Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$type = json['type'];
    final l$priority = json['priority'];
    final l$serviceType = json['serviceType'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers(
      name: (l$name as String?),
      type: l$type == null
          ? null
          : fromJson$Enum$ManagementType((l$type as String)),
      priority: (l$priority as int),
      serviceType: l$serviceType == null
          ? null
          : fromJson$Enum$ServiceType((l$serviceType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final Enum$ManagementType? type;

  final int priority;

  final Enum$ServiceType? serviceType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = l$type == null
        ? null
        : toJson$Enum$ManagementType(l$type);
    final l$priority = priority;
    _resultData['priority'] = l$priority;
    final l$serviceType = serviceType;
    _resultData['serviceType'] = l$serviceType == null
        ? null
        : toJson$Enum$ServiceType(l$serviceType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$type = type;
    final l$priority = priority;
    final l$serviceType = serviceType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$type,
      l$priority,
      l$serviceType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$priority = priority;
    final lOther$priority = other.priority;
    if (l$priority != lOther$priority) {
      return false;
    }
    final l$serviceType = serviceType;
    final lOther$serviceType = other.serviceType;
    if (l$serviceType != lOther$serviceType) {
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

extension UtilityExtension$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers
    on Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers {
  CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers<
    Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers(
    Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers
    instance,
    TRes Function(
      Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers;

  factory CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers;

  TRes call({
    String? name,
    Enum$ManagementType? type,
    int? priority,
    Enum$ServiceType? serviceType,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers
  _instance;

  final TRes Function(
    Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? type = _undefined,
    Object? priority = _undefined,
    Object? serviceType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers(
      name: name == _undefined ? _instance.name : (name as String?),
      type: type == _undefined
          ? _instance.type
          : (type as Enum$ManagementType?),
      priority: priority == _undefined || priority == null
          ? _instance.priority
          : (priority as int),
      serviceType: serviceType == _undefined
          ? _instance.serviceType
          : (serviceType as Enum$ServiceType?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager$$Account$accountManagers(
    this._res,
  );

  TRes _res;

  call({
    String? name,
    Enum$ManagementType? type,
    int? priority,
    Enum$ServiceType? serviceType,
    String? $__typename,
  }) => _res;
}

class Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError
    implements Mutation$UpdateAccountManager$updateAccountManager {
  Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError({
    required this.message,
    this.$__typename = 'AccountManagerError',
  });

  factory Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError(
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
            is! Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError ||
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

extension UtilityExtension$Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError
    on Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError {
  CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError<
    Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError(
    Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError
    instance,
    TRes Function(
      Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError;

  factory CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError
  _instance;

  final TRes Function(
    Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountManager$updateAccountManager$$AccountManagerError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
