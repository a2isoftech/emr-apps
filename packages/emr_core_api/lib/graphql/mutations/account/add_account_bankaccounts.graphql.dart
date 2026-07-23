import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddPartyBankAccount {
  factory Variables$Mutation$AddPartyBankAccount({
    required Input$CreateOrUpdatePartyBankAccountInput bankAccountInput,
  }) => Variables$Mutation$AddPartyBankAccount._({
    r'bankAccountInput': bankAccountInput,
  });

  Variables$Mutation$AddPartyBankAccount._(this._$data);

  factory Variables$Mutation$AddPartyBankAccount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$bankAccountInput = data['bankAccountInput'];
    result$data['bankAccountInput'] =
        Input$CreateOrUpdatePartyBankAccountInput.fromJson(
          (l$bankAccountInput as Map<String, dynamic>),
        );
    return Variables$Mutation$AddPartyBankAccount._(result$data);
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

  CopyWith$Variables$Mutation$AddPartyBankAccount<
    Variables$Mutation$AddPartyBankAccount
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddPartyBankAccount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddPartyBankAccount ||
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

abstract class CopyWith$Variables$Mutation$AddPartyBankAccount<TRes> {
  factory CopyWith$Variables$Mutation$AddPartyBankAccount(
    Variables$Mutation$AddPartyBankAccount instance,
    TRes Function(Variables$Mutation$AddPartyBankAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$AddPartyBankAccount;

  factory CopyWith$Variables$Mutation$AddPartyBankAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddPartyBankAccount;

  TRes call({Input$CreateOrUpdatePartyBankAccountInput? bankAccountInput});
}

class _CopyWithImpl$Variables$Mutation$AddPartyBankAccount<TRes>
    implements CopyWith$Variables$Mutation$AddPartyBankAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$AddPartyBankAccount(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddPartyBankAccount _instance;

  final TRes Function(Variables$Mutation$AddPartyBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? bankAccountInput = _undefined}) => _then(
    Variables$Mutation$AddPartyBankAccount._({
      ..._instance._$data,
      if (bankAccountInput != _undefined && bankAccountInput != null)
        'bankAccountInput':
            (bankAccountInput as Input$CreateOrUpdatePartyBankAccountInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddPartyBankAccount<TRes>
    implements CopyWith$Variables$Mutation$AddPartyBankAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddPartyBankAccount(this._res);

  TRes _res;

  call({Input$CreateOrUpdatePartyBankAccountInput? bankAccountInput}) => _res;
}

class Mutation$AddPartyBankAccount {
  Mutation$AddPartyBankAccount({
    this.addPartyBankAccounts,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddPartyBankAccount.fromJson(Map<String, dynamic> json) {
    final l$addPartyBankAccounts = json['addPartyBankAccounts'];
    final l$$__typename = json['__typename'];
    return Mutation$AddPartyBankAccount(
      addPartyBankAccounts: l$addPartyBankAccounts == null
          ? null
          : Mutation$AddPartyBankAccount$addPartyBankAccounts.fromJson(
              (l$addPartyBankAccounts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddPartyBankAccount$addPartyBankAccounts? addPartyBankAccounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addPartyBankAccounts = addPartyBankAccounts;
    _resultData['addPartyBankAccounts'] = l$addPartyBankAccounts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addPartyBankAccounts = addPartyBankAccounts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addPartyBankAccounts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddPartyBankAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addPartyBankAccounts = addPartyBankAccounts;
    final lOther$addPartyBankAccounts = other.addPartyBankAccounts;
    if (l$addPartyBankAccounts != lOther$addPartyBankAccounts) {
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

extension UtilityExtension$Mutation$AddPartyBankAccount
    on Mutation$AddPartyBankAccount {
  CopyWith$Mutation$AddPartyBankAccount<Mutation$AddPartyBankAccount>
  get copyWith => CopyWith$Mutation$AddPartyBankAccount(this, (i) => i);
}

abstract class CopyWith$Mutation$AddPartyBankAccount<TRes> {
  factory CopyWith$Mutation$AddPartyBankAccount(
    Mutation$AddPartyBankAccount instance,
    TRes Function(Mutation$AddPartyBankAccount) then,
  ) = _CopyWithImpl$Mutation$AddPartyBankAccount;

  factory CopyWith$Mutation$AddPartyBankAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddPartyBankAccount;

  TRes call({
    Mutation$AddPartyBankAccount$addPartyBankAccounts? addPartyBankAccounts,
    String? $__typename,
  });
  CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts<TRes>
  get addPartyBankAccounts;
}

class _CopyWithImpl$Mutation$AddPartyBankAccount<TRes>
    implements CopyWith$Mutation$AddPartyBankAccount<TRes> {
  _CopyWithImpl$Mutation$AddPartyBankAccount(this._instance, this._then);

  final Mutation$AddPartyBankAccount _instance;

  final TRes Function(Mutation$AddPartyBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addPartyBankAccounts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddPartyBankAccount(
      addPartyBankAccounts: addPartyBankAccounts == _undefined
          ? _instance.addPartyBankAccounts
          : (addPartyBankAccounts
                as Mutation$AddPartyBankAccount$addPartyBankAccounts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts<TRes>
  get addPartyBankAccounts {
    final local$addPartyBankAccounts = _instance.addPartyBankAccounts;
    return local$addPartyBankAccounts == null
        ? CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts(
            local$addPartyBankAccounts,
            (e) => call(addPartyBankAccounts: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$AddPartyBankAccount<TRes>
    implements CopyWith$Mutation$AddPartyBankAccount<TRes> {
  _CopyWithStubImpl$Mutation$AddPartyBankAccount(this._res);

  TRes _res;

  call({
    Mutation$AddPartyBankAccount$addPartyBankAccounts? addPartyBankAccounts,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts<TRes>
  get addPartyBankAccounts =>
      CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts.stub(_res);
}

const documentNodeMutationAddPartyBankAccount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddPartyBankAccount'),
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
            name: NameNode(value: 'addPartyBankAccounts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'addBankAccountInput'),
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

class Mutation$AddPartyBankAccount$addPartyBankAccounts {
  Mutation$AddPartyBankAccount$addPartyBankAccounts({
    required this.$__typename,
  });

  factory Mutation$AddPartyBankAccount$addPartyBankAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountBankAccountError":
        return Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError.fromJson(
          json,
        );

      case "Account":
        return Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$AddPartyBankAccount$addPartyBankAccounts(
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
    if (other is! Mutation$AddPartyBankAccount$addPartyBankAccounts ||
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

extension UtilityExtension$Mutation$AddPartyBankAccount$addPartyBankAccounts
    on Mutation$AddPartyBankAccount$addPartyBankAccounts {
  CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts<
    Mutation$AddPartyBankAccount$addPartyBankAccounts
  >
  get copyWith => CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts(
    this,
    (i) => i,
  );

  _T when<_T>({
    required _T Function(
      Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError,
    )
    accountBankAccountError,
    required _T Function(
      Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account,
    )
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountBankAccountError":
        return accountBankAccountError(
          this
              as Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError,
        );

      case "Account":
        return account(
          this as Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError,
    )?
    accountBankAccountError,
    _T Function(Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account)?
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountBankAccountError":
        if (accountBankAccountError != null) {
          return accountBankAccountError(
            this
                as Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this as Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts<
  TRes
> {
  factory CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts(
    Mutation$AddPartyBankAccount$addPartyBankAccounts instance,
    TRes Function(Mutation$AddPartyBankAccount$addPartyBankAccounts) then,
  ) = _CopyWithImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts;

  factory CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts<TRes>
    implements
        CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts<TRes> {
  _CopyWithImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts(
    this._instance,
    this._then,
  );

  final Mutation$AddPartyBankAccount$addPartyBankAccounts _instance;

  final TRes Function(Mutation$AddPartyBankAccount$addPartyBankAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$AddPartyBankAccount$addPartyBankAccounts(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts<TRes>
    implements
        CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts<TRes> {
  _CopyWithStubImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError
    implements Mutation$AddPartyBankAccount$addPartyBankAccounts {
  Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError({
    required this.message,
    this.$__typename = 'AccountBankAccountError',
  });

  factory Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError(
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
            is! Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError ||
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

extension UtilityExtension$Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError
    on Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError {
  CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError<
    Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError
  >
  get copyWith =>
      CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError<
  TRes
> {
  factory CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError(
    Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError
    instance,
    TRes Function(
      Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError;

  factory CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError<
  TRes
>
    implements
        CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError<
          TRes
        > {
  _CopyWithImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError(
    this._instance,
    this._then,
  );

  final Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError
  _instance;

  final TRes Function(
    Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError<
  TRes
>
    implements
        CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts$$AccountBankAccountError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account
    implements Mutation$AddPartyBankAccount$addPartyBankAccounts {
  Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account({
    required this.name,
    this.$__typename = 'Account',
  });

  factory Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account(
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
    if (other is! Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account ||
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

extension UtilityExtension$Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account
    on Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account {
  CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account<
    Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account
  >
  get copyWith =>
      CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account<
  TRes
> {
  factory CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account(
    Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account instance,
    TRes Function(Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account)
    then,
  ) = _CopyWithImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account;

  factory CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account<
  TRes
>
    implements
        CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account(
    this._instance,
    this._then,
  );

  final Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account _instance;

  final TRes Function(
    Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account<
  TRes
>
    implements
        CopyWith$Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddPartyBankAccount$addPartyBankAccounts$$Account(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
