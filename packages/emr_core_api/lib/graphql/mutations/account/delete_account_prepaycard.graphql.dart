import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DeleteAccountPrepayCards {
  factory Variables$Mutation$DeleteAccountPrepayCards({
    required Input$DeletePrepayCardInput deletePrepaycardInput,
  }) => Variables$Mutation$DeleteAccountPrepayCards._({
    r'deletePrepaycardInput': deletePrepaycardInput,
  });

  Variables$Mutation$DeleteAccountPrepayCards._(this._$data);

  factory Variables$Mutation$DeleteAccountPrepayCards.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$deletePrepaycardInput = data['deletePrepaycardInput'];
    result$data['deletePrepaycardInput'] = Input$DeletePrepayCardInput.fromJson(
      (l$deletePrepaycardInput as Map<String, dynamic>),
    );
    return Variables$Mutation$DeleteAccountPrepayCards._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DeletePrepayCardInput get deletePrepaycardInput =>
      (_$data['deletePrepaycardInput'] as Input$DeletePrepayCardInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deletePrepaycardInput = deletePrepaycardInput;
    result$data['deletePrepaycardInput'] = l$deletePrepaycardInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteAccountPrepayCards<
    Variables$Mutation$DeleteAccountPrepayCards
  >
  get copyWith =>
      CopyWith$Variables$Mutation$DeleteAccountPrepayCards(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteAccountPrepayCards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletePrepaycardInput = deletePrepaycardInput;
    final lOther$deletePrepaycardInput = other.deletePrepaycardInput;
    if (l$deletePrepaycardInput != lOther$deletePrepaycardInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deletePrepaycardInput = deletePrepaycardInput;
    return Object.hashAll([l$deletePrepaycardInput]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteAccountPrepayCards<TRes> {
  factory CopyWith$Variables$Mutation$DeleteAccountPrepayCards(
    Variables$Mutation$DeleteAccountPrepayCards instance,
    TRes Function(Variables$Mutation$DeleteAccountPrepayCards) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteAccountPrepayCards;

  factory CopyWith$Variables$Mutation$DeleteAccountPrepayCards.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteAccountPrepayCards;

  TRes call({Input$DeletePrepayCardInput? deletePrepaycardInput});
}

class _CopyWithImpl$Variables$Mutation$DeleteAccountPrepayCards<TRes>
    implements CopyWith$Variables$Mutation$DeleteAccountPrepayCards<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteAccountPrepayCards(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteAccountPrepayCards _instance;

  final TRes Function(Variables$Mutation$DeleteAccountPrepayCards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deletePrepaycardInput = _undefined}) => _then(
    Variables$Mutation$DeleteAccountPrepayCards._({
      ..._instance._$data,
      if (deletePrepaycardInput != _undefined && deletePrepaycardInput != null)
        'deletePrepaycardInput':
            (deletePrepaycardInput as Input$DeletePrepayCardInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteAccountPrepayCards<TRes>
    implements CopyWith$Variables$Mutation$DeleteAccountPrepayCards<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteAccountPrepayCards(this._res);

  TRes _res;

  call({Input$DeletePrepayCardInput? deletePrepaycardInput}) => _res;
}

class Mutation$DeleteAccountPrepayCards {
  Mutation$DeleteAccountPrepayCards({
    this.deleteAccountPrepayCards,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteAccountPrepayCards.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$deleteAccountPrepayCards = json['deleteAccountPrepayCards'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountPrepayCards(
      deleteAccountPrepayCards: l$deleteAccountPrepayCards == null
          ? null
          : Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards.fromJson(
              (l$deleteAccountPrepayCards as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards?
  deleteAccountPrepayCards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAccountPrepayCards = deleteAccountPrepayCards;
    _resultData['deleteAccountPrepayCards'] = l$deleteAccountPrepayCards
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAccountPrepayCards = deleteAccountPrepayCards;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteAccountPrepayCards, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteAccountPrepayCards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAccountPrepayCards = deleteAccountPrepayCards;
    final lOther$deleteAccountPrepayCards = other.deleteAccountPrepayCards;
    if (l$deleteAccountPrepayCards != lOther$deleteAccountPrepayCards) {
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

extension UtilityExtension$Mutation$DeleteAccountPrepayCards
    on Mutation$DeleteAccountPrepayCards {
  CopyWith$Mutation$DeleteAccountPrepayCards<Mutation$DeleteAccountPrepayCards>
  get copyWith => CopyWith$Mutation$DeleteAccountPrepayCards(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteAccountPrepayCards<TRes> {
  factory CopyWith$Mutation$DeleteAccountPrepayCards(
    Mutation$DeleteAccountPrepayCards instance,
    TRes Function(Mutation$DeleteAccountPrepayCards) then,
  ) = _CopyWithImpl$Mutation$DeleteAccountPrepayCards;

  factory CopyWith$Mutation$DeleteAccountPrepayCards.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAccountPrepayCards;

  TRes call({
    Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards?
    deleteAccountPrepayCards,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards<TRes>
  get deleteAccountPrepayCards;
}

class _CopyWithImpl$Mutation$DeleteAccountPrepayCards<TRes>
    implements CopyWith$Mutation$DeleteAccountPrepayCards<TRes> {
  _CopyWithImpl$Mutation$DeleteAccountPrepayCards(this._instance, this._then);

  final Mutation$DeleteAccountPrepayCards _instance;

  final TRes Function(Mutation$DeleteAccountPrepayCards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAccountPrepayCards = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteAccountPrepayCards(
      deleteAccountPrepayCards: deleteAccountPrepayCards == _undefined
          ? _instance.deleteAccountPrepayCards
          : (deleteAccountPrepayCards
                as Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards<TRes>
  get deleteAccountPrepayCards {
    final local$deleteAccountPrepayCards = _instance.deleteAccountPrepayCards;
    return local$deleteAccountPrepayCards == null
        ? CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards(
            local$deleteAccountPrepayCards,
            (e) => call(deleteAccountPrepayCards: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$DeleteAccountPrepayCards<TRes>
    implements CopyWith$Mutation$DeleteAccountPrepayCards<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccountPrepayCards(this._res);

  TRes _res;

  call({
    Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards?
    deleteAccountPrepayCards,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards<TRes>
  get deleteAccountPrepayCards =>
      CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards.stub(
        _res,
      );
}

const documentNodeMutationDeleteAccountPrepayCards = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteAccountPrepayCards'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'deletePrepaycardInput'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'DeletePrepayCardInput'),
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
            name: NameNode(value: 'deleteAccountPrepayCards'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'deletePrepayCardInput'),
                value: VariableNode(
                  name: NameNode(value: 'deletePrepaycardInput'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'AccountPrepayCardError'),
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

class Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards {
  Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards({
    required this.$__typename,
  });

  factory Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountPrepayCardError":
        return Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError.fromJson(
          json,
        );

      case "Account":
        return Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards(
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
    if (other is! Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards ||
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

extension UtilityExtension$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards
    on Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards {
  CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards<
    Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError,
    )
    accountPrepayCardError,
    required _T Function(
      Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account,
    )
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountPrepayCardError":
        return accountPrepayCardError(
          this
              as Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError,
        );

      case "Account":
        return account(
          this
              as Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError,
    )?
    accountPrepayCardError,
    _T Function(
      Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account,
    )?
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountPrepayCardError":
        if (accountPrepayCardError != null) {
          return accountPrepayCardError(
            this
                as Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards(
    Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards instance,
    TRes Function(Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards)
    then,
  ) = _CopyWithImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards;

  factory CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards _instance;

  final TRes Function(
    Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError
    implements Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards {
  Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError({
    required this.message,
    this.$__typename = 'AccountPrepayCardError',
  });

  factory Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError(
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
            is! Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError ||
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

extension UtilityExtension$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError
    on
        Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError {
  CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError<
    Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError(
    Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError
    instance,
    TRes Function(
      Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError;

  factory CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError
  _instance;

  final TRes Function(
    Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$AccountPrepayCardError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account
    implements Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards {
  Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account({
    required this.name,
    this.$__typename = 'Account',
  });

  factory Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account(
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
            is! Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account ||
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

extension UtilityExtension$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account
    on Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account {
  CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account<
    Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account(
    Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account
    instance,
    TRes Function(
      Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account;

  factory CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account
  _instance;

  final TRes Function(
    Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteAccountPrepayCards$deleteAccountPrepayCards$$Account(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
