import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateAccount {
  factory Variables$Mutation$UpdateAccount({
    required Input$UpdateAccountInput input,
  }) => Variables$Mutation$UpdateAccount._({r'input': input});

  Variables$Mutation$UpdateAccount._(this._$data);

  factory Variables$Mutation$UpdateAccount.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateAccountInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateAccountInput get input =>
      (_$data['input'] as Input$UpdateAccountInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAccount<Variables$Mutation$UpdateAccount>
  get copyWith => CopyWith$Variables$Mutation$UpdateAccount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateAccount ||
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

abstract class CopyWith$Variables$Mutation$UpdateAccount<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAccount(
    Variables$Mutation$UpdateAccount instance,
    TRes Function(Variables$Mutation$UpdateAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAccount;

  factory CopyWith$Variables$Mutation$UpdateAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAccount;

  TRes call({Input$UpdateAccountInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateAccount<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAccount(this._instance, this._then);

  final Variables$Mutation$UpdateAccount _instance;

  final TRes Function(Variables$Mutation$UpdateAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateAccount._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateAccountInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAccount<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAccount(this._res);

  TRes _res;

  call({Input$UpdateAccountInput? input}) => _res;
}

class Mutation$UpdateAccount {
  Mutation$UpdateAccount({
    required this.updateAccount,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAccount.fromJson(Map<String, dynamic> json) {
    final l$updateAccount = json['updateAccount'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccount(
      updateAccount: Mutation$UpdateAccount$updateAccount.fromJson(
        (l$updateAccount as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAccount$updateAccount updateAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAccount = updateAccount;
    _resultData['updateAccount'] = l$updateAccount.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAccount = updateAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateAccount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccount || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAccount = updateAccount;
    final lOther$updateAccount = other.updateAccount;
    if (l$updateAccount != lOther$updateAccount) {
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

extension UtilityExtension$Mutation$UpdateAccount on Mutation$UpdateAccount {
  CopyWith$Mutation$UpdateAccount<Mutation$UpdateAccount> get copyWith =>
      CopyWith$Mutation$UpdateAccount(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateAccount<TRes> {
  factory CopyWith$Mutation$UpdateAccount(
    Mutation$UpdateAccount instance,
    TRes Function(Mutation$UpdateAccount) then,
  ) = _CopyWithImpl$Mutation$UpdateAccount;

  factory CopyWith$Mutation$UpdateAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccount;

  TRes call({
    Mutation$UpdateAccount$updateAccount? updateAccount,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccount$updateAccount<TRes> get updateAccount;
}

class _CopyWithImpl$Mutation$UpdateAccount<TRes>
    implements CopyWith$Mutation$UpdateAccount<TRes> {
  _CopyWithImpl$Mutation$UpdateAccount(this._instance, this._then);

  final Mutation$UpdateAccount _instance;

  final TRes Function(Mutation$UpdateAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAccount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccount(
      updateAccount: updateAccount == _undefined || updateAccount == null
          ? _instance.updateAccount
          : (updateAccount as Mutation$UpdateAccount$updateAccount),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccount$updateAccount<TRes> get updateAccount {
    final local$updateAccount = _instance.updateAccount;
    return CopyWith$Mutation$UpdateAccount$updateAccount(
      local$updateAccount,
      (e) => call(updateAccount: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccount<TRes>
    implements CopyWith$Mutation$UpdateAccount<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccount(this._res);

  TRes _res;

  call({
    Mutation$UpdateAccount$updateAccount? updateAccount,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccount$updateAccount<TRes> get updateAccount =>
      CopyWith$Mutation$UpdateAccount$updateAccount.stub(_res);
}

const documentNodeMutationUpdateAccount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateAccount'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateAccountInput'),
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
            name: NameNode(value: 'updateAccount'),
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
                  name: NameNode(value: 'accountNumber'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'errors'),
                  alias: null,
                  arguments: [],
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
                        name: NameNode(value: 'code'),
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

class Mutation$UpdateAccount$updateAccount {
  Mutation$UpdateAccount$updateAccount({
    this.accountNumber,
    required this.errors,
    this.$__typename = 'UpdateAccountOutput',
  });

  factory Mutation$UpdateAccount$updateAccount.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccount$updateAccount(
      accountNumber: (l$accountNumber as String?),
      errors: (l$errors as List<dynamic>)
          .map(
            (e) => Mutation$UpdateAccount$updateAccount$errors.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accountNumber;

  final List<Mutation$UpdateAccount$updateAccount$errors> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountNumber,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccount$updateAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors.length != lOther$errors.length) {
      return false;
    }
    for (int i = 0; i < l$errors.length; i++) {
      final l$errors$entry = l$errors[i];
      final lOther$errors$entry = lOther$errors[i];
      if (l$errors$entry != lOther$errors$entry) {
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

extension UtilityExtension$Mutation$UpdateAccount$updateAccount
    on Mutation$UpdateAccount$updateAccount {
  CopyWith$Mutation$UpdateAccount$updateAccount<
    Mutation$UpdateAccount$updateAccount
  >
  get copyWith => CopyWith$Mutation$UpdateAccount$updateAccount(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateAccount$updateAccount<TRes> {
  factory CopyWith$Mutation$UpdateAccount$updateAccount(
    Mutation$UpdateAccount$updateAccount instance,
    TRes Function(Mutation$UpdateAccount$updateAccount) then,
  ) = _CopyWithImpl$Mutation$UpdateAccount$updateAccount;

  factory CopyWith$Mutation$UpdateAccount$updateAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccount$updateAccount;

  TRes call({
    String? accountNumber,
    List<Mutation$UpdateAccount$updateAccount$errors>? errors,
    String? $__typename,
  });
  TRes errors(
    Iterable<Mutation$UpdateAccount$updateAccount$errors> Function(
      Iterable<
        CopyWith$Mutation$UpdateAccount$updateAccount$errors<
          Mutation$UpdateAccount$updateAccount$errors
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UpdateAccount$updateAccount<TRes>
    implements CopyWith$Mutation$UpdateAccount$updateAccount<TRes> {
  _CopyWithImpl$Mutation$UpdateAccount$updateAccount(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccount$updateAccount _instance;

  final TRes Function(Mutation$UpdateAccount$updateAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccount$updateAccount(
      accountNumber: accountNumber == _undefined
          ? _instance.accountNumber
          : (accountNumber as String?),
      errors: errors == _undefined || errors == null
          ? _instance.errors
          : (errors as List<Mutation$UpdateAccount$updateAccount$errors>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes errors(
    Iterable<Mutation$UpdateAccount$updateAccount$errors> Function(
      Iterable<
        CopyWith$Mutation$UpdateAccount$updateAccount$errors<
          Mutation$UpdateAccount$updateAccount$errors
        >
      >,
    )
    _fn,
  ) => call(
    errors: _fn(
      _instance.errors.map(
        (e) =>
            CopyWith$Mutation$UpdateAccount$updateAccount$errors(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccount$updateAccount<TRes>
    implements CopyWith$Mutation$UpdateAccount$updateAccount<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccount$updateAccount(this._res);

  TRes _res;

  call({
    String? accountNumber,
    List<Mutation$UpdateAccount$updateAccount$errors>? errors,
    String? $__typename,
  }) => _res;

  errors(_fn) => _res;
}

class Mutation$UpdateAccount$updateAccount$errors {
  Mutation$UpdateAccount$updateAccount$errors({
    required this.message,
    required this.code,
    this.$__typename = 'UserError',
  });

  factory Mutation$UpdateAccount$updateAccount$errors.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccount$updateAccount$errors(
      message: (l$message as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccount$updateAccount$errors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Mutation$UpdateAccount$updateAccount$errors
    on Mutation$UpdateAccount$updateAccount$errors {
  CopyWith$Mutation$UpdateAccount$updateAccount$errors<
    Mutation$UpdateAccount$updateAccount$errors
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccount$updateAccount$errors(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateAccount$updateAccount$errors<TRes> {
  factory CopyWith$Mutation$UpdateAccount$updateAccount$errors(
    Mutation$UpdateAccount$updateAccount$errors instance,
    TRes Function(Mutation$UpdateAccount$updateAccount$errors) then,
  ) = _CopyWithImpl$Mutation$UpdateAccount$updateAccount$errors;

  factory CopyWith$Mutation$UpdateAccount$updateAccount$errors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccount$updateAccount$errors;

  TRes call({String? message, String? code, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccount$updateAccount$errors<TRes>
    implements CopyWith$Mutation$UpdateAccount$updateAccount$errors<TRes> {
  _CopyWithImpl$Mutation$UpdateAccount$updateAccount$errors(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccount$updateAccount$errors _instance;

  final TRes Function(Mutation$UpdateAccount$updateAccount$errors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccount$updateAccount$errors(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccount$updateAccount$errors<TRes>
    implements CopyWith$Mutation$UpdateAccount$updateAccount$errors<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccount$updateAccount$errors(this._res);

  TRes _res;

  call({String? message, String? code, String? $__typename}) => _res;
}
