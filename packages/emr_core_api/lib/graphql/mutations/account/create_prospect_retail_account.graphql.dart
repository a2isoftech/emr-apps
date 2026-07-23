import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateProspectRetailAccount {
  factory Variables$Mutation$CreateProspectRetailAccount({
    Input$CreateProspectRetailAccountInput? input,
  }) => Variables$Mutation$CreateProspectRetailAccount._({
    if (input != null) r'input': input,
  });

  Variables$Mutation$CreateProspectRetailAccount._(this._$data);

  factory Variables$Mutation$CreateProspectRetailAccount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$CreateProspectRetailAccountInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables$Mutation$CreateProspectRetailAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateProspectRetailAccountInput? get input =>
      (_$data['input'] as Input$CreateProspectRetailAccountInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateProspectRetailAccount<
    Variables$Mutation$CreateProspectRetailAccount
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CreateProspectRetailAccount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateProspectRetailAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([_$data.containsKey('input') ? l$input : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateProspectRetailAccount<TRes> {
  factory CopyWith$Variables$Mutation$CreateProspectRetailAccount(
    Variables$Mutation$CreateProspectRetailAccount instance,
    TRes Function(Variables$Mutation$CreateProspectRetailAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateProspectRetailAccount;

  factory CopyWith$Variables$Mutation$CreateProspectRetailAccount.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$CreateProspectRetailAccount;

  TRes call({Input$CreateProspectRetailAccountInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateProspectRetailAccount<TRes>
    implements CopyWith$Variables$Mutation$CreateProspectRetailAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateProspectRetailAccount(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateProspectRetailAccount _instance;

  final TRes Function(Variables$Mutation$CreateProspectRetailAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateProspectRetailAccount._({
      ..._instance._$data,
      if (input != _undefined)
        'input': (input as Input$CreateProspectRetailAccountInput?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateProspectRetailAccount<TRes>
    implements CopyWith$Variables$Mutation$CreateProspectRetailAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateProspectRetailAccount(this._res);

  TRes _res;

  call({Input$CreateProspectRetailAccountInput? input}) => _res;
}

class Mutation$CreateProspectRetailAccount {
  Mutation$CreateProspectRetailAccount({
    this.createProspectAccount,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateProspectRetailAccount.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$createProspectAccount = json['createProspectAccount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProspectRetailAccount(
      createProspectAccount: l$createProspectAccount == null
          ? null
          : Mutation$CreateProspectRetailAccount$createProspectAccount.fromJson(
              (l$createProspectAccount as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateProspectRetailAccount$createProspectAccount?
  createProspectAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createProspectAccount = createProspectAccount;
    _resultData['createProspectAccount'] = l$createProspectAccount?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createProspectAccount = createProspectAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createProspectAccount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateProspectRetailAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createProspectAccount = createProspectAccount;
    final lOther$createProspectAccount = other.createProspectAccount;
    if (l$createProspectAccount != lOther$createProspectAccount) {
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

extension UtilityExtension$Mutation$CreateProspectRetailAccount
    on Mutation$CreateProspectRetailAccount {
  CopyWith$Mutation$CreateProspectRetailAccount<
    Mutation$CreateProspectRetailAccount
  >
  get copyWith => CopyWith$Mutation$CreateProspectRetailAccount(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateProspectRetailAccount<TRes> {
  factory CopyWith$Mutation$CreateProspectRetailAccount(
    Mutation$CreateProspectRetailAccount instance,
    TRes Function(Mutation$CreateProspectRetailAccount) then,
  ) = _CopyWithImpl$Mutation$CreateProspectRetailAccount;

  factory CopyWith$Mutation$CreateProspectRetailAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateProspectRetailAccount;

  TRes call({
    Mutation$CreateProspectRetailAccount$createProspectAccount?
    createProspectAccount,
    String? $__typename,
  });
  CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount<TRes>
  get createProspectAccount;
}

class _CopyWithImpl$Mutation$CreateProspectRetailAccount<TRes>
    implements CopyWith$Mutation$CreateProspectRetailAccount<TRes> {
  _CopyWithImpl$Mutation$CreateProspectRetailAccount(
    this._instance,
    this._then,
  );

  final Mutation$CreateProspectRetailAccount _instance;

  final TRes Function(Mutation$CreateProspectRetailAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createProspectAccount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateProspectRetailAccount(
      createProspectAccount: createProspectAccount == _undefined
          ? _instance.createProspectAccount
          : (createProspectAccount
                as Mutation$CreateProspectRetailAccount$createProspectAccount?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount<TRes>
  get createProspectAccount {
    final local$createProspectAccount = _instance.createProspectAccount;
    return local$createProspectAccount == null
        ? CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount(
            local$createProspectAccount,
            (e) => call(createProspectAccount: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CreateProspectRetailAccount<TRes>
    implements CopyWith$Mutation$CreateProspectRetailAccount<TRes> {
  _CopyWithStubImpl$Mutation$CreateProspectRetailAccount(this._res);

  TRes _res;

  call({
    Mutation$CreateProspectRetailAccount$createProspectAccount?
    createProspectAccount,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount<TRes>
  get createProspectAccount =>
      CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount.stub(
        _res,
      );
}

const documentNodeMutationCreateProspectRetailAccount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateProspectRetailAccount'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateProspectRetailAccountInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'createProspectAccount'),
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
                  name: NameNode(value: 'name'),
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

class Mutation$CreateProspectRetailAccount$createProspectAccount {
  Mutation$CreateProspectRetailAccount$createProspectAccount({
    this.accountNumber,
    this.name,
    required this.errors,
    this.$__typename = 'CreateAccountOutput',
  });

  factory Mutation$CreateProspectRetailAccount$createProspectAccount.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$name = json['name'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProspectRetailAccount$createProspectAccount(
      accountNumber: (l$accountNumber as String?),
      name: (l$name as String?),
      errors: (l$errors as List<dynamic>)
          .map(
            (e) =>
                Mutation$CreateProspectRetailAccount$createProspectAccount$errors.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accountNumber;

  final String? name;

  final List<Mutation$CreateProspectRetailAccount$createProspectAccount$errors>
  errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$name = name;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountNumber,
      l$name,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateProspectRetailAccount$createProspectAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Mutation$CreateProspectRetailAccount$createProspectAccount
    on Mutation$CreateProspectRetailAccount$createProspectAccount {
  CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount<
    Mutation$CreateProspectRetailAccount$createProspectAccount
  >
  get copyWith =>
      CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount<
  TRes
> {
  factory CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount(
    Mutation$CreateProspectRetailAccount$createProspectAccount instance,
    TRes Function(Mutation$CreateProspectRetailAccount$createProspectAccount)
    then,
  ) = _CopyWithImpl$Mutation$CreateProspectRetailAccount$createProspectAccount;

  factory CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateProspectRetailAccount$createProspectAccount;

  TRes call({
    String? accountNumber,
    String? name,
    List<Mutation$CreateProspectRetailAccount$createProspectAccount$errors>?
    errors,
    String? $__typename,
  });
  TRes errors(
    Iterable<Mutation$CreateProspectRetailAccount$createProspectAccount$errors>
    Function(
      Iterable<
        CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount$errors<
          Mutation$CreateProspectRetailAccount$createProspectAccount$errors
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CreateProspectRetailAccount$createProspectAccount<
  TRes
>
    implements
        CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateProspectRetailAccount$createProspectAccount(
    this._instance,
    this._then,
  );

  final Mutation$CreateProspectRetailAccount$createProspectAccount _instance;

  final TRes Function(
    Mutation$CreateProspectRetailAccount$createProspectAccount,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? name = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateProspectRetailAccount$createProspectAccount(
      accountNumber: accountNumber == _undefined
          ? _instance.accountNumber
          : (accountNumber as String?),
      name: name == _undefined ? _instance.name : (name as String?),
      errors: errors == _undefined || errors == null
          ? _instance.errors
          : (errors
                as List<
                  Mutation$CreateProspectRetailAccount$createProspectAccount$errors
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes errors(
    Iterable<Mutation$CreateProspectRetailAccount$createProspectAccount$errors>
    Function(
      Iterable<
        CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount$errors<
          Mutation$CreateProspectRetailAccount$createProspectAccount$errors
        >
      >,
    )
    _fn,
  ) => call(
    errors: _fn(
      _instance.errors.map(
        (e) =>
            CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount$errors(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CreateProspectRetailAccount$createProspectAccount<
  TRes
>
    implements
        CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateProspectRetailAccount$createProspectAccount(
    this._res,
  );

  TRes _res;

  call({
    String? accountNumber,
    String? name,
    List<Mutation$CreateProspectRetailAccount$createProspectAccount$errors>?
    errors,
    String? $__typename,
  }) => _res;

  errors(_fn) => _res;
}

class Mutation$CreateProspectRetailAccount$createProspectAccount$errors {
  Mutation$CreateProspectRetailAccount$createProspectAccount$errors({
    required this.message,
    required this.code,
    this.$__typename = 'UserError',
  });

  factory Mutation$CreateProspectRetailAccount$createProspectAccount$errors.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProspectRetailAccount$createProspectAccount$errors(
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
    if (other
            is! Mutation$CreateProspectRetailAccount$createProspectAccount$errors ||
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

extension UtilityExtension$Mutation$CreateProspectRetailAccount$createProspectAccount$errors
    on Mutation$CreateProspectRetailAccount$createProspectAccount$errors {
  CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount$errors<
    Mutation$CreateProspectRetailAccount$createProspectAccount$errors
  >
  get copyWith =>
      CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount$errors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount$errors<
  TRes
> {
  factory CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount$errors(
    Mutation$CreateProspectRetailAccount$createProspectAccount$errors instance,
    TRes Function(
      Mutation$CreateProspectRetailAccount$createProspectAccount$errors,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateProspectRetailAccount$createProspectAccount$errors;

  factory CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount$errors.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateProspectRetailAccount$createProspectAccount$errors;

  TRes call({String? message, String? code, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateProspectRetailAccount$createProspectAccount$errors<
  TRes
>
    implements
        CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount$errors<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateProspectRetailAccount$createProspectAccount$errors(
    this._instance,
    this._then,
  );

  final Mutation$CreateProspectRetailAccount$createProspectAccount$errors
  _instance;

  final TRes Function(
    Mutation$CreateProspectRetailAccount$createProspectAccount$errors,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateProspectRetailAccount$createProspectAccount$errors(
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

class _CopyWithStubImpl$Mutation$CreateProspectRetailAccount$createProspectAccount$errors<
  TRes
>
    implements
        CopyWith$Mutation$CreateProspectRetailAccount$createProspectAccount$errors<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateProspectRetailAccount$createProspectAccount$errors(
    this._res,
  );

  TRes _res;

  call({String? message, String? code, String? $__typename}) => _res;
}
