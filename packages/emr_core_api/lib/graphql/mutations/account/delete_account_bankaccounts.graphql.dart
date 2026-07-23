import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DeletePartyBankAccount {
  factory Variables$Mutation$DeletePartyBankAccount({
    required Input$DeleteBankAccountInput bankAccountInput,
  }) => Variables$Mutation$DeletePartyBankAccount._({
    r'bankAccountInput': bankAccountInput,
  });

  Variables$Mutation$DeletePartyBankAccount._(this._$data);

  factory Variables$Mutation$DeletePartyBankAccount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$bankAccountInput = data['bankAccountInput'];
    result$data['bankAccountInput'] = Input$DeleteBankAccountInput.fromJson(
      (l$bankAccountInput as Map<String, dynamic>),
    );
    return Variables$Mutation$DeletePartyBankAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DeleteBankAccountInput get bankAccountInput =>
      (_$data['bankAccountInput'] as Input$DeleteBankAccountInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$bankAccountInput = bankAccountInput;
    result$data['bankAccountInput'] = l$bankAccountInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeletePartyBankAccount<
    Variables$Mutation$DeletePartyBankAccount
  >
  get copyWith =>
      CopyWith$Variables$Mutation$DeletePartyBankAccount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeletePartyBankAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankAccountInput = bankAccountInput;
    final lOther$bankAccountInput = other.bankAccountInput;
    if (l$bankAccountInput != lOther$bankAccountInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bankAccountInput = bankAccountInput;
    return Object.hashAll([l$bankAccountInput]);
  }
}

abstract class CopyWith$Variables$Mutation$DeletePartyBankAccount<TRes> {
  factory CopyWith$Variables$Mutation$DeletePartyBankAccount(
    Variables$Mutation$DeletePartyBankAccount instance,
    TRes Function(Variables$Mutation$DeletePartyBankAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$DeletePartyBankAccount;

  factory CopyWith$Variables$Mutation$DeletePartyBankAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeletePartyBankAccount;

  TRes call({Input$DeleteBankAccountInput? bankAccountInput});
}

class _CopyWithImpl$Variables$Mutation$DeletePartyBankAccount<TRes>
    implements CopyWith$Variables$Mutation$DeletePartyBankAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$DeletePartyBankAccount(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeletePartyBankAccount _instance;

  final TRes Function(Variables$Mutation$DeletePartyBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? bankAccountInput = _undefined}) => _then(
    Variables$Mutation$DeletePartyBankAccount._({
      ..._instance._$data,
      if (bankAccountInput != _undefined && bankAccountInput != null)
        'bankAccountInput': (bankAccountInput as Input$DeleteBankAccountInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeletePartyBankAccount<TRes>
    implements CopyWith$Variables$Mutation$DeletePartyBankAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeletePartyBankAccount(this._res);

  TRes _res;

  call({Input$DeleteBankAccountInput? bankAccountInput}) => _res;
}

class Mutation$DeletePartyBankAccount {
  Mutation$DeletePartyBankAccount({
    this.deletePartyBankAccounts,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeletePartyBankAccount.fromJson(Map<String, dynamic> json) {
    final l$deletePartyBankAccounts = json['deletePartyBankAccounts'];
    final l$$__typename = json['__typename'];
    return Mutation$DeletePartyBankAccount(
      deletePartyBankAccounts: l$deletePartyBankAccounts == null
          ? null
          : Mutation$DeletePartyBankAccount$deletePartyBankAccounts.fromJson(
              (l$deletePartyBankAccounts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeletePartyBankAccount$deletePartyBankAccounts?
  deletePartyBankAccounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deletePartyBankAccounts = deletePartyBankAccounts;
    _resultData['deletePartyBankAccounts'] = l$deletePartyBankAccounts
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deletePartyBankAccounts = deletePartyBankAccounts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deletePartyBankAccounts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeletePartyBankAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletePartyBankAccounts = deletePartyBankAccounts;
    final lOther$deletePartyBankAccounts = other.deletePartyBankAccounts;
    if (l$deletePartyBankAccounts != lOther$deletePartyBankAccounts) {
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

extension UtilityExtension$Mutation$DeletePartyBankAccount
    on Mutation$DeletePartyBankAccount {
  CopyWith$Mutation$DeletePartyBankAccount<Mutation$DeletePartyBankAccount>
  get copyWith => CopyWith$Mutation$DeletePartyBankAccount(this, (i) => i);
}

abstract class CopyWith$Mutation$DeletePartyBankAccount<TRes> {
  factory CopyWith$Mutation$DeletePartyBankAccount(
    Mutation$DeletePartyBankAccount instance,
    TRes Function(Mutation$DeletePartyBankAccount) then,
  ) = _CopyWithImpl$Mutation$DeletePartyBankAccount;

  factory CopyWith$Mutation$DeletePartyBankAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeletePartyBankAccount;

  TRes call({
    Mutation$DeletePartyBankAccount$deletePartyBankAccounts?
    deletePartyBankAccounts,
    String? $__typename,
  });
  CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts<TRes>
  get deletePartyBankAccounts;
}

class _CopyWithImpl$Mutation$DeletePartyBankAccount<TRes>
    implements CopyWith$Mutation$DeletePartyBankAccount<TRes> {
  _CopyWithImpl$Mutation$DeletePartyBankAccount(this._instance, this._then);

  final Mutation$DeletePartyBankAccount _instance;

  final TRes Function(Mutation$DeletePartyBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deletePartyBankAccounts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeletePartyBankAccount(
      deletePartyBankAccounts: deletePartyBankAccounts == _undefined
          ? _instance.deletePartyBankAccounts
          : (deletePartyBankAccounts
                as Mutation$DeletePartyBankAccount$deletePartyBankAccounts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts<TRes>
  get deletePartyBankAccounts {
    final local$deletePartyBankAccounts = _instance.deletePartyBankAccounts;
    return local$deletePartyBankAccounts == null
        ? CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts(
            local$deletePartyBankAccounts,
            (e) => call(deletePartyBankAccounts: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$DeletePartyBankAccount<TRes>
    implements CopyWith$Mutation$DeletePartyBankAccount<TRes> {
  _CopyWithStubImpl$Mutation$DeletePartyBankAccount(this._res);

  TRes _res;

  call({
    Mutation$DeletePartyBankAccount$deletePartyBankAccounts?
    deletePartyBankAccounts,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts<TRes>
  get deletePartyBankAccounts =>
      CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts.stub(
        _res,
      );
}

const documentNodeMutationDeletePartyBankAccount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeletePartyBankAccount'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'bankAccountInput')),
          type: NamedTypeNode(
            name: NameNode(value: 'DeleteBankAccountInput'),
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
            name: NameNode(value: 'deletePartyBankAccounts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'deleteBankAccountInput'),
                value: VariableNode(name: NameNode(value: 'bankAccountInput')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'AccountBankAccountError'),
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

class Mutation$DeletePartyBankAccount$deletePartyBankAccounts {
  Mutation$DeletePartyBankAccount$deletePartyBankAccounts({
    required this.$__typename,
  });

  factory Mutation$DeletePartyBankAccount$deletePartyBankAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountBankAccountError":
        return Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError.fromJson(
          json,
        );

      case "Account":
        return Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$DeletePartyBankAccount$deletePartyBankAccounts(
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
    if (other is! Mutation$DeletePartyBankAccount$deletePartyBankAccounts ||
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

extension UtilityExtension$Mutation$DeletePartyBankAccount$deletePartyBankAccounts
    on Mutation$DeletePartyBankAccount$deletePartyBankAccounts {
  CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts<
    Mutation$DeletePartyBankAccount$deletePartyBankAccounts
  >
  get copyWith =>
      CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError,
    )
    accountBankAccountError,
    required _T Function(
      Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account,
    )
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountBankAccountError":
        return accountBankAccountError(
          this
              as Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError,
        );

      case "Account":
        return account(
          this
              as Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError,
    )?
    accountBankAccountError,
    _T Function(
      Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account,
    )?
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountBankAccountError":
        if (accountBankAccountError != null) {
          return accountBankAccountError(
            this
                as Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts<
  TRes
> {
  factory CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts(
    Mutation$DeletePartyBankAccount$deletePartyBankAccounts instance,
    TRes Function(Mutation$DeletePartyBankAccount$deletePartyBankAccounts) then,
  ) = _CopyWithImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts;

  factory CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts<
  TRes
>
    implements
        CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts<TRes> {
  _CopyWithImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts(
    this._instance,
    this._then,
  );

  final Mutation$DeletePartyBankAccount$deletePartyBankAccounts _instance;

  final TRes Function(Mutation$DeletePartyBankAccount$deletePartyBankAccounts)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$DeletePartyBankAccount$deletePartyBankAccounts(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts<
  TRes
>
    implements
        CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts<TRes> {
  _CopyWithStubImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError
    implements Mutation$DeletePartyBankAccount$deletePartyBankAccounts {
  Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError({
    required this.message,
    this.$__typename = 'AccountBankAccountError',
  });

  factory Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError(
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
            is! Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError ||
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

extension UtilityExtension$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError
    on
        Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError {
  CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError<
    Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError
  >
  get copyWith =>
      CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError<
  TRes
> {
  factory CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError(
    Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError
    instance,
    TRes Function(
      Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError;

  factory CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError<
  TRes
>
    implements
        CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError<
          TRes
        > {
  _CopyWithImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError(
    this._instance,
    this._then,
  );

  final Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError
  _instance;

  final TRes Function(
    Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError<
  TRes
>
    implements
        CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$AccountBankAccountError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account
    implements Mutation$DeletePartyBankAccount$deletePartyBankAccounts {
  Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account({
    required this.name,
    this.$__typename = 'Account',
  });

  factory Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

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
            is! Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account ||
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

extension UtilityExtension$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account
    on Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account {
  CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account<
    Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account
  >
  get copyWith =>
      CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account<
  TRes
> {
  factory CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account(
    Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account instance,
    TRes Function(
      Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account;

  factory CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account<
  TRes
>
    implements
        CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account(
    this._instance,
    this._then,
  );

  final Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account
  _instance;

  final TRes Function(
    Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account<
  TRes
>
    implements
        CopyWith$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeletePartyBankAccount$deletePartyBankAccounts$$Account(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
