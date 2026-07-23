import 'package:gql/ast.dart';

class Variables$Mutation$DeleteAccountTeam {
  factory Variables$Mutation$DeleteAccountTeam({
    required String accountId,
    required String teamId,
  }) => Variables$Mutation$DeleteAccountTeam._({
    r'accountId': accountId,
    r'teamId': teamId,
  });

  Variables$Mutation$DeleteAccountTeam._(this._$data);

  factory Variables$Mutation$DeleteAccountTeam.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accountId = data['accountId'];
    result$data['accountId'] = (l$accountId as String);
    final l$teamId = data['teamId'];
    result$data['teamId'] = (l$teamId as String);
    return Variables$Mutation$DeleteAccountTeam._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accountId => (_$data['accountId'] as String);

  String get teamId => (_$data['teamId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountId = accountId;
    result$data['accountId'] = l$accountId;
    final l$teamId = teamId;
    result$data['teamId'] = l$teamId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteAccountTeam<
    Variables$Mutation$DeleteAccountTeam
  >
  get copyWith => CopyWith$Variables$Mutation$DeleteAccountTeam(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteAccountTeam ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$teamId = teamId;
    final lOther$teamId = other.teamId;
    if (l$teamId != lOther$teamId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    final l$teamId = teamId;
    return Object.hashAll([l$accountId, l$teamId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteAccountTeam<TRes> {
  factory CopyWith$Variables$Mutation$DeleteAccountTeam(
    Variables$Mutation$DeleteAccountTeam instance,
    TRes Function(Variables$Mutation$DeleteAccountTeam) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteAccountTeam;

  factory CopyWith$Variables$Mutation$DeleteAccountTeam.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteAccountTeam;

  TRes call({String? accountId, String? teamId});
}

class _CopyWithImpl$Variables$Mutation$DeleteAccountTeam<TRes>
    implements CopyWith$Variables$Mutation$DeleteAccountTeam<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteAccountTeam(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteAccountTeam _instance;

  final TRes Function(Variables$Mutation$DeleteAccountTeam) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accountId = _undefined, Object? teamId = _undefined}) =>
      _then(
        Variables$Mutation$DeleteAccountTeam._({
          ..._instance._$data,
          if (accountId != _undefined && accountId != null)
            'accountId': (accountId as String),
          if (teamId != _undefined && teamId != null)
            'teamId': (teamId as String),
        }),
      );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteAccountTeam<TRes>
    implements CopyWith$Variables$Mutation$DeleteAccountTeam<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteAccountTeam(this._res);

  TRes _res;

  call({String? accountId, String? teamId}) => _res;
}

class Mutation$DeleteAccountTeam {
  Mutation$DeleteAccountTeam({
    this.deleteAccountTeam,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteAccountTeam.fromJson(Map<String, dynamic> json) {
    final l$deleteAccountTeam = json['deleteAccountTeam'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountTeam(
      deleteAccountTeam: l$deleteAccountTeam == null
          ? null
          : Mutation$DeleteAccountTeam$deleteAccountTeam.fromJson(
              (l$deleteAccountTeam as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteAccountTeam$deleteAccountTeam? deleteAccountTeam;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAccountTeam = deleteAccountTeam;
    _resultData['deleteAccountTeam'] = l$deleteAccountTeam?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAccountTeam = deleteAccountTeam;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteAccountTeam, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteAccountTeam ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAccountTeam = deleteAccountTeam;
    final lOther$deleteAccountTeam = other.deleteAccountTeam;
    if (l$deleteAccountTeam != lOther$deleteAccountTeam) {
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

extension UtilityExtension$Mutation$DeleteAccountTeam
    on Mutation$DeleteAccountTeam {
  CopyWith$Mutation$DeleteAccountTeam<Mutation$DeleteAccountTeam>
  get copyWith => CopyWith$Mutation$DeleteAccountTeam(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteAccountTeam<TRes> {
  factory CopyWith$Mutation$DeleteAccountTeam(
    Mutation$DeleteAccountTeam instance,
    TRes Function(Mutation$DeleteAccountTeam) then,
  ) = _CopyWithImpl$Mutation$DeleteAccountTeam;

  factory CopyWith$Mutation$DeleteAccountTeam.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAccountTeam;

  TRes call({
    Mutation$DeleteAccountTeam$deleteAccountTeam? deleteAccountTeam,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam<TRes>
  get deleteAccountTeam;
}

class _CopyWithImpl$Mutation$DeleteAccountTeam<TRes>
    implements CopyWith$Mutation$DeleteAccountTeam<TRes> {
  _CopyWithImpl$Mutation$DeleteAccountTeam(this._instance, this._then);

  final Mutation$DeleteAccountTeam _instance;

  final TRes Function(Mutation$DeleteAccountTeam) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAccountTeam = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteAccountTeam(
      deleteAccountTeam: deleteAccountTeam == _undefined
          ? _instance.deleteAccountTeam
          : (deleteAccountTeam
                as Mutation$DeleteAccountTeam$deleteAccountTeam?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam<TRes>
  get deleteAccountTeam {
    final local$deleteAccountTeam = _instance.deleteAccountTeam;
    return local$deleteAccountTeam == null
        ? CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam(
            local$deleteAccountTeam,
            (e) => call(deleteAccountTeam: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$DeleteAccountTeam<TRes>
    implements CopyWith$Mutation$DeleteAccountTeam<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccountTeam(this._res);

  TRes _res;

  call({
    Mutation$DeleteAccountTeam$deleteAccountTeam? deleteAccountTeam,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam<TRes>
  get deleteAccountTeam =>
      CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam.stub(_res);
}

const documentNodeMutationDeleteAccountTeam = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteAccountTeam'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accountId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'teamId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteAccountTeam'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accountId'),
                value: VariableNode(name: NameNode(value: 'accountId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'teamId'),
                value: VariableNode(name: NameNode(value: 'teamId')),
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

class Mutation$DeleteAccountTeam$deleteAccountTeam {
  Mutation$DeleteAccountTeam$deleteAccountTeam({required this.$__typename});

  factory Mutation$DeleteAccountTeam$deleteAccountTeam.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountTeamError":
        return Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError.fromJson(
          json,
        );

      case "Account":
        return Mutation$DeleteAccountTeam$deleteAccountTeam$$Account.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$DeleteAccountTeam$deleteAccountTeam(
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
    if (other is! Mutation$DeleteAccountTeam$deleteAccountTeam ||
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

extension UtilityExtension$Mutation$DeleteAccountTeam$deleteAccountTeam
    on Mutation$DeleteAccountTeam$deleteAccountTeam {
  CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam<
    Mutation$DeleteAccountTeam$deleteAccountTeam
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam(this, (i) => i);

  _T when<_T>({
    required _T Function(
      Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError,
    )
    accountTeamError,
    required _T Function(Mutation$DeleteAccountTeam$deleteAccountTeam$$Account)
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountTeamError":
        return accountTeamError(
          this
              as Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError,
        );

      case "Account":
        return account(
          this as Mutation$DeleteAccountTeam$deleteAccountTeam$$Account,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError)?
    accountTeamError,
    _T Function(Mutation$DeleteAccountTeam$deleteAccountTeam$$Account)? account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountTeamError":
        if (accountTeamError != null) {
          return accountTeamError(
            this
                as Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this as Mutation$DeleteAccountTeam$deleteAccountTeam$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam<TRes> {
  factory CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam(
    Mutation$DeleteAccountTeam$deleteAccountTeam instance,
    TRes Function(Mutation$DeleteAccountTeam$deleteAccountTeam) then,
  ) = _CopyWithImpl$Mutation$DeleteAccountTeam$deleteAccountTeam;

  factory CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAccountTeam$deleteAccountTeam;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountTeam$deleteAccountTeam<TRes>
    implements CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam<TRes> {
  _CopyWithImpl$Mutation$DeleteAccountTeam$deleteAccountTeam(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountTeam$deleteAccountTeam _instance;

  final TRes Function(Mutation$DeleteAccountTeam$deleteAccountTeam) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$DeleteAccountTeam$deleteAccountTeam(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteAccountTeam$deleteAccountTeam<TRes>
    implements CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccountTeam$deleteAccountTeam(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError
    implements Mutation$DeleteAccountTeam$deleteAccountTeam {
  Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError({
    required this.message,
    this.$__typename = 'AccountTeamError',
  });

  factory Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError(
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
            is! Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError ||
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

extension UtilityExtension$Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError
    on Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError {
  CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError<
    Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError(
    Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError instance,
    TRes Function(
      Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError;

  factory CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError
  _instance;

  final TRes Function(
    Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteAccountTeam$deleteAccountTeam$$AccountTeamError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$DeleteAccountTeam$deleteAccountTeam$$Account
    implements Mutation$DeleteAccountTeam$deleteAccountTeam {
  Mutation$DeleteAccountTeam$deleteAccountTeam$$Account({
    required this.id,
    this.$__typename = 'Account',
  });

  factory Mutation$DeleteAccountTeam$deleteAccountTeam$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountTeam$deleteAccountTeam$$Account(
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
    if (other is! Mutation$DeleteAccountTeam$deleteAccountTeam$$Account ||
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

extension UtilityExtension$Mutation$DeleteAccountTeam$deleteAccountTeam$$Account
    on Mutation$DeleteAccountTeam$deleteAccountTeam$$Account {
  CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam$$Account<
    Mutation$DeleteAccountTeam$deleteAccountTeam$$Account
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam$$Account<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam$$Account(
    Mutation$DeleteAccountTeam$deleteAccountTeam$$Account instance,
    TRes Function(Mutation$DeleteAccountTeam$deleteAccountTeam$$Account) then,
  ) = _CopyWithImpl$Mutation$DeleteAccountTeam$deleteAccountTeam$$Account;

  factory CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountTeam$deleteAccountTeam$$Account;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountTeam$deleteAccountTeam$$Account<TRes>
    implements
        CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam$$Account<TRes> {
  _CopyWithImpl$Mutation$DeleteAccountTeam$deleteAccountTeam$$Account(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountTeam$deleteAccountTeam$$Account _instance;

  final TRes Function(Mutation$DeleteAccountTeam$deleteAccountTeam$$Account)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$DeleteAccountTeam$deleteAccountTeam$$Account(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$DeleteAccountTeam$deleteAccountTeam$$Account<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountTeam$deleteAccountTeam$$Account<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccountTeam$deleteAccountTeam$$Account(
    this._res,
  );

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
