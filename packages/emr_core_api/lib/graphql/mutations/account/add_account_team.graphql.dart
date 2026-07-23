import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddAccountTeam {
  factory Variables$Mutation$AddAccountTeam({
    required Input$AccountTeamInput input,
  }) => Variables$Mutation$AddAccountTeam._({r'input': input});

  Variables$Mutation$AddAccountTeam._(this._$data);

  factory Variables$Mutation$AddAccountTeam.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AccountTeamInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$AddAccountTeam._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AccountTeamInput get input =>
      (_$data['input'] as Input$AccountTeamInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddAccountTeam<Variables$Mutation$AddAccountTeam>
  get copyWith => CopyWith$Variables$Mutation$AddAccountTeam(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddAccountTeam ||
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

abstract class CopyWith$Variables$Mutation$AddAccountTeam<TRes> {
  factory CopyWith$Variables$Mutation$AddAccountTeam(
    Variables$Mutation$AddAccountTeam instance,
    TRes Function(Variables$Mutation$AddAccountTeam) then,
  ) = _CopyWithImpl$Variables$Mutation$AddAccountTeam;

  factory CopyWith$Variables$Mutation$AddAccountTeam.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddAccountTeam;

  TRes call({Input$AccountTeamInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddAccountTeam<TRes>
    implements CopyWith$Variables$Mutation$AddAccountTeam<TRes> {
  _CopyWithImpl$Variables$Mutation$AddAccountTeam(this._instance, this._then);

  final Variables$Mutation$AddAccountTeam _instance;

  final TRes Function(Variables$Mutation$AddAccountTeam) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$AddAccountTeam._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$AccountTeamInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddAccountTeam<TRes>
    implements CopyWith$Variables$Mutation$AddAccountTeam<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddAccountTeam(this._res);

  TRes _res;

  call({Input$AccountTeamInput? input}) => _res;
}

class Mutation$AddAccountTeam {
  Mutation$AddAccountTeam({this.addAccountTeam, this.$__typename = 'Mutation'});

  factory Mutation$AddAccountTeam.fromJson(Map<String, dynamic> json) {
    final l$addAccountTeam = json['addAccountTeam'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountTeam(
      addAccountTeam: l$addAccountTeam == null
          ? null
          : Mutation$AddAccountTeam$addAccountTeam.fromJson(
              (l$addAccountTeam as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddAccountTeam$addAccountTeam? addAccountTeam;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addAccountTeam = addAccountTeam;
    _resultData['addAccountTeam'] = l$addAccountTeam?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addAccountTeam = addAccountTeam;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addAccountTeam, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddAccountTeam || runtimeType != other.runtimeType) {
      return false;
    }
    final l$addAccountTeam = addAccountTeam;
    final lOther$addAccountTeam = other.addAccountTeam;
    if (l$addAccountTeam != lOther$addAccountTeam) {
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

extension UtilityExtension$Mutation$AddAccountTeam on Mutation$AddAccountTeam {
  CopyWith$Mutation$AddAccountTeam<Mutation$AddAccountTeam> get copyWith =>
      CopyWith$Mutation$AddAccountTeam(this, (i) => i);
}

abstract class CopyWith$Mutation$AddAccountTeam<TRes> {
  factory CopyWith$Mutation$AddAccountTeam(
    Mutation$AddAccountTeam instance,
    TRes Function(Mutation$AddAccountTeam) then,
  ) = _CopyWithImpl$Mutation$AddAccountTeam;

  factory CopyWith$Mutation$AddAccountTeam.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddAccountTeam;

  TRes call({
    Mutation$AddAccountTeam$addAccountTeam? addAccountTeam,
    String? $__typename,
  });
  CopyWith$Mutation$AddAccountTeam$addAccountTeam<TRes> get addAccountTeam;
}

class _CopyWithImpl$Mutation$AddAccountTeam<TRes>
    implements CopyWith$Mutation$AddAccountTeam<TRes> {
  _CopyWithImpl$Mutation$AddAccountTeam(this._instance, this._then);

  final Mutation$AddAccountTeam _instance;

  final TRes Function(Mutation$AddAccountTeam) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addAccountTeam = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddAccountTeam(
      addAccountTeam: addAccountTeam == _undefined
          ? _instance.addAccountTeam
          : (addAccountTeam as Mutation$AddAccountTeam$addAccountTeam?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddAccountTeam$addAccountTeam<TRes> get addAccountTeam {
    final local$addAccountTeam = _instance.addAccountTeam;
    return local$addAccountTeam == null
        ? CopyWith$Mutation$AddAccountTeam$addAccountTeam.stub(_then(_instance))
        : CopyWith$Mutation$AddAccountTeam$addAccountTeam(
            local$addAccountTeam,
            (e) => call(addAccountTeam: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$AddAccountTeam<TRes>
    implements CopyWith$Mutation$AddAccountTeam<TRes> {
  _CopyWithStubImpl$Mutation$AddAccountTeam(this._res);

  TRes _res;

  call({
    Mutation$AddAccountTeam$addAccountTeam? addAccountTeam,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddAccountTeam$addAccountTeam<TRes> get addAccountTeam =>
      CopyWith$Mutation$AddAccountTeam$addAccountTeam.stub(_res);
}

const documentNodeMutationAddAccountTeam = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddAccountTeam'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'AccountTeamInput'),
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
            name: NameNode(value: 'addAccountTeam'),
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
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'AccountTeamError'),
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
                        name: NameNode(value: 'id'),
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

class Mutation$AddAccountTeam$addAccountTeam {
  Mutation$AddAccountTeam$addAccountTeam({required this.$__typename});

  factory Mutation$AddAccountTeam$addAccountTeam.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountTeamError":
        return Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError.fromJson(
          json,
        );

      case "Account":
        return Mutation$AddAccountTeam$addAccountTeam$$Account.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$AddAccountTeam$addAccountTeam(
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
    if (other is! Mutation$AddAccountTeam$addAccountTeam ||
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

extension UtilityExtension$Mutation$AddAccountTeam$addAccountTeam
    on Mutation$AddAccountTeam$addAccountTeam {
  CopyWith$Mutation$AddAccountTeam$addAccountTeam<
    Mutation$AddAccountTeam$addAccountTeam
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountTeam$addAccountTeam(this, (i) => i);

  _T when<_T>({
    required _T Function(
      Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError,
    )
    accountTeamError,
    required _T Function(Mutation$AddAccountTeam$addAccountTeam$$Account)
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountTeamError":
        return accountTeamError(
          this as Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError,
        );

      case "Account":
        return account(this as Mutation$AddAccountTeam$addAccountTeam$$Account);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError)?
    accountTeamError,
    _T Function(Mutation$AddAccountTeam$addAccountTeam$$Account)? account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountTeamError":
        if (accountTeamError != null) {
          return accountTeamError(
            this as Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this as Mutation$AddAccountTeam$addAccountTeam$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$AddAccountTeam$addAccountTeam<TRes> {
  factory CopyWith$Mutation$AddAccountTeam$addAccountTeam(
    Mutation$AddAccountTeam$addAccountTeam instance,
    TRes Function(Mutation$AddAccountTeam$addAccountTeam) then,
  ) = _CopyWithImpl$Mutation$AddAccountTeam$addAccountTeam;

  factory CopyWith$Mutation$AddAccountTeam$addAccountTeam.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddAccountTeam$addAccountTeam;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountTeam$addAccountTeam<TRes>
    implements CopyWith$Mutation$AddAccountTeam$addAccountTeam<TRes> {
  _CopyWithImpl$Mutation$AddAccountTeam$addAccountTeam(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountTeam$addAccountTeam _instance;

  final TRes Function(Mutation$AddAccountTeam$addAccountTeam) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$AddAccountTeam$addAccountTeam(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddAccountTeam$addAccountTeam<TRes>
    implements CopyWith$Mutation$AddAccountTeam$addAccountTeam<TRes> {
  _CopyWithStubImpl$Mutation$AddAccountTeam$addAccountTeam(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError
    implements Mutation$AddAccountTeam$addAccountTeam {
  Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError({
    required this.message,
    this.$__typename = 'AccountTeamError',
  });

  factory Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError(
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
    if (other is! Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError ||
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

extension UtilityExtension$Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError
    on Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError {
  CopyWith$Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError<
    Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError<
  TRes
> {
  factory CopyWith$Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError(
    Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError instance,
    TRes Function(Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError)
    then,
  ) = _CopyWithImpl$Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError;

  factory CopyWith$Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError<
          TRes
        > {
  _CopyWithImpl$Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError _instance;

  final TRes Function(Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddAccountTeam$addAccountTeam$$AccountTeamError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$AddAccountTeam$addAccountTeam$$Account
    implements Mutation$AddAccountTeam$addAccountTeam {
  Mutation$AddAccountTeam$addAccountTeam$$Account({
    required this.id,
    this.$__typename = 'Account',
  });

  factory Mutation$AddAccountTeam$addAccountTeam$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountTeam$addAccountTeam$$Account(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddAccountTeam$addAccountTeam$$Account ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$AddAccountTeam$addAccountTeam$$Account
    on Mutation$AddAccountTeam$addAccountTeam$$Account {
  CopyWith$Mutation$AddAccountTeam$addAccountTeam$$Account<
    Mutation$AddAccountTeam$addAccountTeam$$Account
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountTeam$addAccountTeam$$Account(this, (i) => i);
}

abstract class CopyWith$Mutation$AddAccountTeam$addAccountTeam$$Account<TRes> {
  factory CopyWith$Mutation$AddAccountTeam$addAccountTeam$$Account(
    Mutation$AddAccountTeam$addAccountTeam$$Account instance,
    TRes Function(Mutation$AddAccountTeam$addAccountTeam$$Account) then,
  ) = _CopyWithImpl$Mutation$AddAccountTeam$addAccountTeam$$Account;

  factory CopyWith$Mutation$AddAccountTeam$addAccountTeam$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountTeam$addAccountTeam$$Account;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountTeam$addAccountTeam$$Account<TRes>
    implements CopyWith$Mutation$AddAccountTeam$addAccountTeam$$Account<TRes> {
  _CopyWithImpl$Mutation$AddAccountTeam$addAccountTeam$$Account(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountTeam$addAccountTeam$$Account _instance;

  final TRes Function(Mutation$AddAccountTeam$addAccountTeam$$Account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$AddAccountTeam$addAccountTeam$$Account(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$AddAccountTeam$addAccountTeam$$Account<TRes>
    implements CopyWith$Mutation$AddAccountTeam$addAccountTeam$$Account<TRes> {
  _CopyWithStubImpl$Mutation$AddAccountTeam$addAccountTeam$$Account(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
