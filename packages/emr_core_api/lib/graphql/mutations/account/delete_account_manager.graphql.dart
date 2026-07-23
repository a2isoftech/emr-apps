import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DeleteAccountManager {
  factory Variables$Mutation$DeleteAccountManager({
    required Input$DeleteAccountManagerInput input,
  }) => Variables$Mutation$DeleteAccountManager._({r'input': input});

  Variables$Mutation$DeleteAccountManager._(this._$data);

  factory Variables$Mutation$DeleteAccountManager.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$DeleteAccountManagerInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$DeleteAccountManager._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DeleteAccountManagerInput get input =>
      (_$data['input'] as Input$DeleteAccountManagerInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteAccountManager<
    Variables$Mutation$DeleteAccountManager
  >
  get copyWith =>
      CopyWith$Variables$Mutation$DeleteAccountManager(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteAccountManager ||
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

abstract class CopyWith$Variables$Mutation$DeleteAccountManager<TRes> {
  factory CopyWith$Variables$Mutation$DeleteAccountManager(
    Variables$Mutation$DeleteAccountManager instance,
    TRes Function(Variables$Mutation$DeleteAccountManager) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteAccountManager;

  factory CopyWith$Variables$Mutation$DeleteAccountManager.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteAccountManager;

  TRes call({Input$DeleteAccountManagerInput? input});
}

class _CopyWithImpl$Variables$Mutation$DeleteAccountManager<TRes>
    implements CopyWith$Variables$Mutation$DeleteAccountManager<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteAccountManager(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteAccountManager _instance;

  final TRes Function(Variables$Mutation$DeleteAccountManager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$DeleteAccountManager._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$DeleteAccountManagerInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteAccountManager<TRes>
    implements CopyWith$Variables$Mutation$DeleteAccountManager<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteAccountManager(this._res);

  TRes _res;

  call({Input$DeleteAccountManagerInput? input}) => _res;
}

class Mutation$DeleteAccountManager {
  Mutation$DeleteAccountManager({
    this.deleteAccountManager,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteAccountManager.fromJson(Map<String, dynamic> json) {
    final l$deleteAccountManager = json['deleteAccountManager'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountManager(
      deleteAccountManager: l$deleteAccountManager == null
          ? null
          : Mutation$DeleteAccountManager$deleteAccountManager.fromJson(
              (l$deleteAccountManager as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteAccountManager$deleteAccountManager?
  deleteAccountManager;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAccountManager = deleteAccountManager;
    _resultData['deleteAccountManager'] = l$deleteAccountManager?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAccountManager = deleteAccountManager;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteAccountManager, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteAccountManager ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAccountManager = deleteAccountManager;
    final lOther$deleteAccountManager = other.deleteAccountManager;
    if (l$deleteAccountManager != lOther$deleteAccountManager) {
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

extension UtilityExtension$Mutation$DeleteAccountManager
    on Mutation$DeleteAccountManager {
  CopyWith$Mutation$DeleteAccountManager<Mutation$DeleteAccountManager>
  get copyWith => CopyWith$Mutation$DeleteAccountManager(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteAccountManager<TRes> {
  factory CopyWith$Mutation$DeleteAccountManager(
    Mutation$DeleteAccountManager instance,
    TRes Function(Mutation$DeleteAccountManager) then,
  ) = _CopyWithImpl$Mutation$DeleteAccountManager;

  factory CopyWith$Mutation$DeleteAccountManager.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAccountManager;

  TRes call({
    Mutation$DeleteAccountManager$deleteAccountManager? deleteAccountManager,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteAccountManager$deleteAccountManager<TRes>
  get deleteAccountManager;
}

class _CopyWithImpl$Mutation$DeleteAccountManager<TRes>
    implements CopyWith$Mutation$DeleteAccountManager<TRes> {
  _CopyWithImpl$Mutation$DeleteAccountManager(this._instance, this._then);

  final Mutation$DeleteAccountManager _instance;

  final TRes Function(Mutation$DeleteAccountManager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAccountManager = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteAccountManager(
      deleteAccountManager: deleteAccountManager == _undefined
          ? _instance.deleteAccountManager
          : (deleteAccountManager
                as Mutation$DeleteAccountManager$deleteAccountManager?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteAccountManager$deleteAccountManager<TRes>
  get deleteAccountManager {
    final local$deleteAccountManager = _instance.deleteAccountManager;
    return local$deleteAccountManager == null
        ? CopyWith$Mutation$DeleteAccountManager$deleteAccountManager.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$DeleteAccountManager$deleteAccountManager(
            local$deleteAccountManager,
            (e) => call(deleteAccountManager: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$DeleteAccountManager<TRes>
    implements CopyWith$Mutation$DeleteAccountManager<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccountManager(this._res);

  TRes _res;

  call({
    Mutation$DeleteAccountManager$deleteAccountManager? deleteAccountManager,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteAccountManager$deleteAccountManager<TRes>
  get deleteAccountManager =>
      CopyWith$Mutation$DeleteAccountManager$deleteAccountManager.stub(_res);
}

const documentNodeMutationDeleteAccountManager = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteAccountManager'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'DeleteAccountManagerInput'),
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
            name: NameNode(value: 'deleteAccountManager'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'deleteAccountManagerInput'),
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

class Mutation$DeleteAccountManager$deleteAccountManager {
  Mutation$DeleteAccountManager$deleteAccountManager({
    required this.$__typename,
  });

  factory Mutation$DeleteAccountManager$deleteAccountManager.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "Account":
        return Mutation$DeleteAccountManager$deleteAccountManager$$Account.fromJson(
          json,
        );

      case "AccountManagerError":
        return Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$DeleteAccountManager$deleteAccountManager(
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
    if (other is! Mutation$DeleteAccountManager$deleteAccountManager ||
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

extension UtilityExtension$Mutation$DeleteAccountManager$deleteAccountManager
    on Mutation$DeleteAccountManager$deleteAccountManager {
  CopyWith$Mutation$DeleteAccountManager$deleteAccountManager<
    Mutation$DeleteAccountManager$deleteAccountManager
  >
  get copyWith => CopyWith$Mutation$DeleteAccountManager$deleteAccountManager(
    this,
    (i) => i,
  );

  _T when<_T>({
    required _T Function(
      Mutation$DeleteAccountManager$deleteAccountManager$$Account,
    )
    account,
    required _T Function(
      Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError,
    )
    accountManagerError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        return account(
          this as Mutation$DeleteAccountManager$deleteAccountManager$$Account,
        );

      case "AccountManagerError":
        return accountManagerError(
          this
              as Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$DeleteAccountManager$deleteAccountManager$$Account)?
    account,
    _T Function(
      Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError,
    )?
    accountManagerError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        if (account != null) {
          return account(
            this as Mutation$DeleteAccountManager$deleteAccountManager$$Account,
          );
        } else {
          return orElse();
        }

      case "AccountManagerError":
        if (accountManagerError != null) {
          return accountManagerError(
            this
                as Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$DeleteAccountManager$deleteAccountManager<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountManager$deleteAccountManager(
    Mutation$DeleteAccountManager$deleteAccountManager instance,
    TRes Function(Mutation$DeleteAccountManager$deleteAccountManager) then,
  ) = _CopyWithImpl$Mutation$DeleteAccountManager$deleteAccountManager;

  factory CopyWith$Mutation$DeleteAccountManager$deleteAccountManager.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountManager$deleteAccountManager;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountManager$deleteAccountManager<TRes>
    implements
        CopyWith$Mutation$DeleteAccountManager$deleteAccountManager<TRes> {
  _CopyWithImpl$Mutation$DeleteAccountManager$deleteAccountManager(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountManager$deleteAccountManager _instance;

  final TRes Function(Mutation$DeleteAccountManager$deleteAccountManager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$DeleteAccountManager$deleteAccountManager(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteAccountManager$deleteAccountManager<TRes>
    implements
        CopyWith$Mutation$DeleteAccountManager$deleteAccountManager<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccountManager$deleteAccountManager(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$DeleteAccountManager$deleteAccountManager$$Account
    implements Mutation$DeleteAccountManager$deleteAccountManager {
  Mutation$DeleteAccountManager$deleteAccountManager$$Account({
    this.accountManagers,
    this.$__typename = 'Account',
  });

  factory Mutation$DeleteAccountManager$deleteAccountManager$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountManagers = json['accountManagers'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountManager$deleteAccountManager$$Account(
      accountManagers: (l$accountManagers as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers?
  >?
  accountManagers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$accountManagers = accountManagers;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (other is! Mutation$DeleteAccountManager$deleteAccountManager$$Account ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$DeleteAccountManager$deleteAccountManager$$Account
    on Mutation$DeleteAccountManager$deleteAccountManager$$Account {
  CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account<
    Mutation$DeleteAccountManager$deleteAccountManager$$Account
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account(
    Mutation$DeleteAccountManager$deleteAccountManager$$Account instance,
    TRes Function(Mutation$DeleteAccountManager$deleteAccountManager$$Account)
    then,
  ) = _CopyWithImpl$Mutation$DeleteAccountManager$deleteAccountManager$$Account;

  factory CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountManager$deleteAccountManager$$Account;

  TRes call({
    List<
      Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers?
    >?
    accountManagers,
    String? $__typename,
  });
  TRes accountManagers(
    Iterable<
      Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers?
    >?
    Function(
      Iterable<
        CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers<
          Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers
        >?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$DeleteAccountManager$deleteAccountManager$$Account<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteAccountManager$deleteAccountManager$$Account(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountManager$deleteAccountManager$$Account _instance;

  final TRes Function(
    Mutation$DeleteAccountManager$deleteAccountManager$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountManagers = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteAccountManager$deleteAccountManager$$Account(
      accountManagers: accountManagers == _undefined
          ? _instance.accountManagers
          : (accountManagers
                as List<
                  Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers?
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes accountManagers(
    Iterable<
      Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers?
    >?
    Function(
      Iterable<
        CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers<
          Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers
        >?
      >?,
    )
    _fn,
  ) => call(
    accountManagers: _fn(
      _instance.accountManagers?.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Mutation$DeleteAccountManager$deleteAccountManager$$Account<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteAccountManager$deleteAccountManager$$Account(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers?
    >?
    accountManagers,
    String? $__typename,
  }) => _res;

  accountManagers(_fn) => _res;
}

class Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers {
  Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers({
    this.name,
    this.$__typename = 'AccountManagerWithKey',
  });

  factory Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers(
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
            is! Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers ||
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

extension UtilityExtension$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers
    on Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers {
  CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers<
    Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers(
    Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers
    instance,
    TRes Function(
      Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers;

  factory CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers
  _instance;

  final TRes Function(
    Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers(
      name: name == _undefined ? _instance.name : (name as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteAccountManager$deleteAccountManager$$Account$accountManagers(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError
    implements Mutation$DeleteAccountManager$deleteAccountManager {
  Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError({
    required this.message,
    this.$__typename = 'AccountManagerError',
  });

  factory Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError(
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
            is! Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError ||
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

extension UtilityExtension$Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError
    on Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError {
  CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError<
    Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError(
    Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError
    instance,
    TRes Function(
      Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError;

  factory CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError
  _instance;

  final TRes Function(
    Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteAccountManager$deleteAccountManager$$AccountManagerError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
