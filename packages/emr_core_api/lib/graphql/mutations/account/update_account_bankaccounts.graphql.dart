import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdatePartyBankAccount {
  factory Variables$Mutation$UpdatePartyBankAccount({
    required Input$CreateOrUpdatePartyBankAccountInput bankAccountInput,
  }) => Variables$Mutation$UpdatePartyBankAccount._({
    r'bankAccountInput': bankAccountInput,
  });

  Variables$Mutation$UpdatePartyBankAccount._(this._$data);

  factory Variables$Mutation$UpdatePartyBankAccount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$bankAccountInput = data['bankAccountInput'];
    result$data['bankAccountInput'] =
        Input$CreateOrUpdatePartyBankAccountInput.fromJson(
          (l$bankAccountInput as Map<String, dynamic>),
        );
    return Variables$Mutation$UpdatePartyBankAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOrUpdatePartyBankAccountInput get bankAccountInput =>
      (_$data['bankAccountInput'] as Input$CreateOrUpdatePartyBankAccountInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$bankAccountInput = bankAccountInput;
    result$data['bankAccountInput'] = l$bankAccountInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdatePartyBankAccount<
    Variables$Mutation$UpdatePartyBankAccount
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdatePartyBankAccount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdatePartyBankAccount ||
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

abstract class CopyWith$Variables$Mutation$UpdatePartyBankAccount<TRes> {
  factory CopyWith$Variables$Mutation$UpdatePartyBankAccount(
    Variables$Mutation$UpdatePartyBankAccount instance,
    TRes Function(Variables$Mutation$UpdatePartyBankAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdatePartyBankAccount;

  factory CopyWith$Variables$Mutation$UpdatePartyBankAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdatePartyBankAccount;

  TRes call({Input$CreateOrUpdatePartyBankAccountInput? bankAccountInput});
}

class _CopyWithImpl$Variables$Mutation$UpdatePartyBankAccount<TRes>
    implements CopyWith$Variables$Mutation$UpdatePartyBankAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdatePartyBankAccount(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdatePartyBankAccount _instance;

  final TRes Function(Variables$Mutation$UpdatePartyBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? bankAccountInput = _undefined}) => _then(
    Variables$Mutation$UpdatePartyBankAccount._({
      ..._instance._$data,
      if (bankAccountInput != _undefined && bankAccountInput != null)
        'bankAccountInput':
            (bankAccountInput as Input$CreateOrUpdatePartyBankAccountInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdatePartyBankAccount<TRes>
    implements CopyWith$Variables$Mutation$UpdatePartyBankAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdatePartyBankAccount(this._res);

  TRes _res;

  call({Input$CreateOrUpdatePartyBankAccountInput? bankAccountInput}) => _res;
}

class Mutation$UpdatePartyBankAccount {
  Mutation$UpdatePartyBankAccount({
    this.updatePartyBankAccounts,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdatePartyBankAccount.fromJson(Map<String, dynamic> json) {
    final l$updatePartyBankAccounts = json['updatePartyBankAccounts'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePartyBankAccount(
      updatePartyBankAccounts: l$updatePartyBankAccounts == null
          ? null
          : Mutation$UpdatePartyBankAccount$updatePartyBankAccounts.fromJson(
              (l$updatePartyBankAccounts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdatePartyBankAccount$updatePartyBankAccounts?
  updatePartyBankAccounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePartyBankAccounts = updatePartyBankAccounts;
    _resultData['updatePartyBankAccounts'] = l$updatePartyBankAccounts
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePartyBankAccounts = updatePartyBankAccounts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updatePartyBankAccounts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdatePartyBankAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePartyBankAccounts = updatePartyBankAccounts;
    final lOther$updatePartyBankAccounts = other.updatePartyBankAccounts;
    if (l$updatePartyBankAccounts != lOther$updatePartyBankAccounts) {
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

extension UtilityExtension$Mutation$UpdatePartyBankAccount
    on Mutation$UpdatePartyBankAccount {
  CopyWith$Mutation$UpdatePartyBankAccount<Mutation$UpdatePartyBankAccount>
  get copyWith => CopyWith$Mutation$UpdatePartyBankAccount(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdatePartyBankAccount<TRes> {
  factory CopyWith$Mutation$UpdatePartyBankAccount(
    Mutation$UpdatePartyBankAccount instance,
    TRes Function(Mutation$UpdatePartyBankAccount) then,
  ) = _CopyWithImpl$Mutation$UpdatePartyBankAccount;

  factory CopyWith$Mutation$UpdatePartyBankAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePartyBankAccount;

  TRes call({
    Mutation$UpdatePartyBankAccount$updatePartyBankAccounts?
    updatePartyBankAccounts,
    String? $__typename,
  });
  CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts<TRes>
  get updatePartyBankAccounts;
}

class _CopyWithImpl$Mutation$UpdatePartyBankAccount<TRes>
    implements CopyWith$Mutation$UpdatePartyBankAccount<TRes> {
  _CopyWithImpl$Mutation$UpdatePartyBankAccount(this._instance, this._then);

  final Mutation$UpdatePartyBankAccount _instance;

  final TRes Function(Mutation$UpdatePartyBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatePartyBankAccounts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdatePartyBankAccount(
      updatePartyBankAccounts: updatePartyBankAccounts == _undefined
          ? _instance.updatePartyBankAccounts
          : (updatePartyBankAccounts
                as Mutation$UpdatePartyBankAccount$updatePartyBankAccounts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts<TRes>
  get updatePartyBankAccounts {
    final local$updatePartyBankAccounts = _instance.updatePartyBankAccounts;
    return local$updatePartyBankAccounts == null
        ? CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts(
            local$updatePartyBankAccounts,
            (e) => call(updatePartyBankAccounts: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdatePartyBankAccount<TRes>
    implements CopyWith$Mutation$UpdatePartyBankAccount<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePartyBankAccount(this._res);

  TRes _res;

  call({
    Mutation$UpdatePartyBankAccount$updatePartyBankAccounts?
    updatePartyBankAccounts,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts<TRes>
  get updatePartyBankAccounts =>
      CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts.stub(
        _res,
      );
}

const documentNodeMutationUpdatePartyBankAccount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdatePartyBankAccount'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'bankAccountInput')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateOrUpdatePartyBankAccountInput'),
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
            name: NameNode(value: 'updatePartyBankAccounts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'updateBankAccountInput'),
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

class Mutation$UpdatePartyBankAccount$updatePartyBankAccounts {
  Mutation$UpdatePartyBankAccount$updatePartyBankAccounts({
    required this.$__typename,
  });

  factory Mutation$UpdatePartyBankAccount$updatePartyBankAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountBankAccountError":
        return Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError.fromJson(
          json,
        );

      case "Account":
        return Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdatePartyBankAccount$updatePartyBankAccounts(
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
    if (other is! Mutation$UpdatePartyBankAccount$updatePartyBankAccounts ||
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

extension UtilityExtension$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts
    on Mutation$UpdatePartyBankAccount$updatePartyBankAccounts {
  CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts<
    Mutation$UpdatePartyBankAccount$updatePartyBankAccounts
  >
  get copyWith =>
      CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError,
    )
    accountBankAccountError,
    required _T Function(
      Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account,
    )
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountBankAccountError":
        return accountBankAccountError(
          this
              as Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError,
        );

      case "Account":
        return account(
          this
              as Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError,
    )?
    accountBankAccountError,
    _T Function(
      Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account,
    )?
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountBankAccountError":
        if (accountBankAccountError != null) {
          return accountBankAccountError(
            this
                as Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts<
  TRes
> {
  factory CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts(
    Mutation$UpdatePartyBankAccount$updatePartyBankAccounts instance,
    TRes Function(Mutation$UpdatePartyBankAccount$updatePartyBankAccounts) then,
  ) = _CopyWithImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts;

  factory CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts<
  TRes
>
    implements
        CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts<TRes> {
  _CopyWithImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePartyBankAccount$updatePartyBankAccounts _instance;

  final TRes Function(Mutation$UpdatePartyBankAccount$updatePartyBankAccounts)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdatePartyBankAccount$updatePartyBankAccounts(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts<
  TRes
>
    implements
        CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError
    implements Mutation$UpdatePartyBankAccount$updatePartyBankAccounts {
  Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError({
    required this.message,
    this.$__typename = 'AccountBankAccountError',
  });

  factory Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError(
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
            is! Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError ||
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

extension UtilityExtension$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError
    on
        Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError {
  CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError<
    Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError
  >
  get copyWith =>
      CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError<
  TRes
> {
  factory CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError(
    Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError
    instance,
    TRes Function(
      Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError;

  factory CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError<
  TRes
>
    implements
        CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError
  _instance;

  final TRes Function(
    Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError<
  TRes
>
    implements
        CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$AccountBankAccountError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account
    implements Mutation$UpdatePartyBankAccount$updatePartyBankAccounts {
  Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account({
    required this.name,
    this.$__typename = 'Account',
  });

  factory Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account(
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
            is! Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account ||
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

extension UtilityExtension$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account
    on Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account {
  CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account<
    Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account
  >
  get copyWith =>
      CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account<
  TRes
> {
  factory CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account(
    Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account instance,
    TRes Function(
      Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account;

  factory CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account
  _instance;

  final TRes Function(
    Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdatePartyBankAccount$updatePartyBankAccounts$$Account(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
