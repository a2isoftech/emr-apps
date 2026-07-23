import 'package:gql/ast.dart';

class Mutation$ConvertProspectToRetailAccount {
  Mutation$ConvertProspectToRetailAccount({
    this.convertProspectToRetailAccount,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ConvertProspectToRetailAccount.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$convertProspectToRetailAccount =
        json['convertProspectToRetailAccount'];
    final l$$__typename = json['__typename'];
    return Mutation$ConvertProspectToRetailAccount(
      convertProspectToRetailAccount: l$convertProspectToRetailAccount == null
          ? null
          : Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount.fromJson(
              (l$convertProspectToRetailAccount as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount?
  convertProspectToRetailAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$convertProspectToRetailAccount = convertProspectToRetailAccount;
    _resultData['convertProspectToRetailAccount'] =
        l$convertProspectToRetailAccount?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$convertProspectToRetailAccount = convertProspectToRetailAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$convertProspectToRetailAccount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ConvertProspectToRetailAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$convertProspectToRetailAccount = convertProspectToRetailAccount;
    final lOther$convertProspectToRetailAccount =
        other.convertProspectToRetailAccount;
    if (l$convertProspectToRetailAccount !=
        lOther$convertProspectToRetailAccount) {
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

extension UtilityExtension$Mutation$ConvertProspectToRetailAccount
    on Mutation$ConvertProspectToRetailAccount {
  CopyWith$Mutation$ConvertProspectToRetailAccount<
    Mutation$ConvertProspectToRetailAccount
  >
  get copyWith =>
      CopyWith$Mutation$ConvertProspectToRetailAccount(this, (i) => i);
}

abstract class CopyWith$Mutation$ConvertProspectToRetailAccount<TRes> {
  factory CopyWith$Mutation$ConvertProspectToRetailAccount(
    Mutation$ConvertProspectToRetailAccount instance,
    TRes Function(Mutation$ConvertProspectToRetailAccount) then,
  ) = _CopyWithImpl$Mutation$ConvertProspectToRetailAccount;

  factory CopyWith$Mutation$ConvertProspectToRetailAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccount;

  TRes call({
    Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount?
    convertProspectToRetailAccount,
    String? $__typename,
  });
  CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount<
    TRes
  >
  get convertProspectToRetailAccount;
}

class _CopyWithImpl$Mutation$ConvertProspectToRetailAccount<TRes>
    implements CopyWith$Mutation$ConvertProspectToRetailAccount<TRes> {
  _CopyWithImpl$Mutation$ConvertProspectToRetailAccount(
    this._instance,
    this._then,
  );

  final Mutation$ConvertProspectToRetailAccount _instance;

  final TRes Function(Mutation$ConvertProspectToRetailAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? convertProspectToRetailAccount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ConvertProspectToRetailAccount(
      convertProspectToRetailAccount:
          convertProspectToRetailAccount == _undefined
          ? _instance.convertProspectToRetailAccount
          : (convertProspectToRetailAccount
                as Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount<
    TRes
  >
  get convertProspectToRetailAccount {
    final local$convertProspectToRetailAccount =
        _instance.convertProspectToRetailAccount;
    return local$convertProspectToRetailAccount == null
        ? CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount(
            local$convertProspectToRetailAccount,
            (e) => call(convertProspectToRetailAccount: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccount<TRes>
    implements CopyWith$Mutation$ConvertProspectToRetailAccount<TRes> {
  _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccount(this._res);

  TRes _res;

  call({
    Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount?
    convertProspectToRetailAccount,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount<
    TRes
  >
  get convertProspectToRetailAccount =>
      CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount.stub(
        _res,
      );
}

const documentNodeMutationConvertProspectToRetailAccount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ConvertProspectToRetailAccount'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'convertProspectToRetailAccount'),
            alias: null,
            arguments: [],
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

class Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount {
  Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount({
    this.accountNumber,
    required this.errors,
    this.$__typename = 'UpdateAccountOutput',
  });

  factory Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount(
      accountNumber: (l$accountNumber as String?),
      errors: (l$errors as List<dynamic>)
          .map(
            (e) =>
                Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accountNumber;

  final List<
    Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors
  >
  errors;

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
    if (other
            is! Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount ||
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

extension UtilityExtension$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount
    on Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount {
  CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount<
    Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount
  >
  get copyWith =>
      CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount<
  TRes
> {
  factory CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount(
    Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount
    instance,
    TRes Function(
      Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount,
    )
    then,
  ) = _CopyWithImpl$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount;

  factory CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount;

  TRes call({
    String? accountNumber,
    List<
      Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors
    >?
    errors,
    String? $__typename,
  });
  TRes errors(
    Iterable<
      Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors
    >
    Function(
      Iterable<
        CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors<
          Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount<
  TRes
>
    implements
        CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount<
          TRes
        > {
  _CopyWithImpl$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount(
    this._instance,
    this._then,
  );

  final Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount
  _instance;

  final TRes Function(
    Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount(
      accountNumber: accountNumber == _undefined
          ? _instance.accountNumber
          : (accountNumber as String?),
      errors: errors == _undefined || errors == null
          ? _instance.errors
          : (errors
                as List<
                  Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes errors(
    Iterable<
      Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors
    >
    Function(
      Iterable<
        CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors<
          Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors
        >
      >,
    )
    _fn,
  ) => call(
    errors: _fn(
      _instance.errors.map(
        (e) =>
            CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount<
  TRes
>
    implements
        CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount(
    this._res,
  );

  TRes _res;

  call({
    String? accountNumber,
    List<
      Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors
    >?
    errors,
    String? $__typename,
  }) => _res;

  errors(_fn) => _res;
}

class Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors {
  Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors({
    required this.message,
    required this.code,
    this.$__typename = 'UserError',
  });

  factory Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors(
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
            is! Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors ||
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

extension UtilityExtension$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors
    on Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors {
  CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors<
    Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors
  >
  get copyWith =>
      CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors<
  TRes
> {
  factory CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors(
    Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors
    instance,
    TRes Function(
      Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors,
    )
    then,
  ) = _CopyWithImpl$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors;

  factory CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors;

  TRes call({String? message, String? code, String? $__typename});
}

class _CopyWithImpl$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors<
  TRes
>
    implements
        CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors<
          TRes
        > {
  _CopyWithImpl$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors(
    this._instance,
    this._then,
  );

  final Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors
  _instance;

  final TRes Function(
    Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors(
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

class _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors<
  TRes
>
    implements
        CopyWith$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccount$convertProspectToRetailAccount$errors(
    this._res,
  );

  TRes _res;

  call({String? message, String? code, String? $__typename}) => _res;
}
