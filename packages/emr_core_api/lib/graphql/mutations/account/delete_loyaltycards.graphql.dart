import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$RemoveAccountLoyaltyCards {
  factory Variables$Mutation$RemoveAccountLoyaltyCards({
    required Input$DeleteAccountLoyaltyCardsInput
    deleteAccountLoyaltyCardsInput,
  }) => Variables$Mutation$RemoveAccountLoyaltyCards._({
    r'deleteAccountLoyaltyCardsInput': deleteAccountLoyaltyCardsInput,
  });

  Variables$Mutation$RemoveAccountLoyaltyCards._(this._$data);

  factory Variables$Mutation$RemoveAccountLoyaltyCards.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$deleteAccountLoyaltyCardsInput =
        data['deleteAccountLoyaltyCardsInput'];
    result$data['deleteAccountLoyaltyCardsInput'] =
        Input$DeleteAccountLoyaltyCardsInput.fromJson(
          (l$deleteAccountLoyaltyCardsInput as Map<String, dynamic>),
        );
    return Variables$Mutation$RemoveAccountLoyaltyCards._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DeleteAccountLoyaltyCardsInput get deleteAccountLoyaltyCardsInput =>
      (_$data['deleteAccountLoyaltyCardsInput']
          as Input$DeleteAccountLoyaltyCardsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$deleteAccountLoyaltyCardsInput = deleteAccountLoyaltyCardsInput;
    result$data['deleteAccountLoyaltyCardsInput'] =
        l$deleteAccountLoyaltyCardsInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$RemoveAccountLoyaltyCards<
    Variables$Mutation$RemoveAccountLoyaltyCards
  >
  get copyWith =>
      CopyWith$Variables$Mutation$RemoveAccountLoyaltyCards(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RemoveAccountLoyaltyCards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAccountLoyaltyCardsInput = deleteAccountLoyaltyCardsInput;
    final lOther$deleteAccountLoyaltyCardsInput =
        other.deleteAccountLoyaltyCardsInput;
    if (l$deleteAccountLoyaltyCardsInput !=
        lOther$deleteAccountLoyaltyCardsInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$deleteAccountLoyaltyCardsInput = deleteAccountLoyaltyCardsInput;
    return Object.hashAll([l$deleteAccountLoyaltyCardsInput]);
  }
}

abstract class CopyWith$Variables$Mutation$RemoveAccountLoyaltyCards<TRes> {
  factory CopyWith$Variables$Mutation$RemoveAccountLoyaltyCards(
    Variables$Mutation$RemoveAccountLoyaltyCards instance,
    TRes Function(Variables$Mutation$RemoveAccountLoyaltyCards) then,
  ) = _CopyWithImpl$Variables$Mutation$RemoveAccountLoyaltyCards;

  factory CopyWith$Variables$Mutation$RemoveAccountLoyaltyCards.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RemoveAccountLoyaltyCards;

  TRes call({
    Input$DeleteAccountLoyaltyCardsInput? deleteAccountLoyaltyCardsInput,
  });
}

class _CopyWithImpl$Variables$Mutation$RemoveAccountLoyaltyCards<TRes>
    implements CopyWith$Variables$Mutation$RemoveAccountLoyaltyCards<TRes> {
  _CopyWithImpl$Variables$Mutation$RemoveAccountLoyaltyCards(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RemoveAccountLoyaltyCards _instance;

  final TRes Function(Variables$Mutation$RemoveAccountLoyaltyCards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? deleteAccountLoyaltyCardsInput = _undefined}) => _then(
    Variables$Mutation$RemoveAccountLoyaltyCards._({
      ..._instance._$data,
      if (deleteAccountLoyaltyCardsInput != _undefined &&
          deleteAccountLoyaltyCardsInput != null)
        'deleteAccountLoyaltyCardsInput':
            (deleteAccountLoyaltyCardsInput
                as Input$DeleteAccountLoyaltyCardsInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$RemoveAccountLoyaltyCards<TRes>
    implements CopyWith$Variables$Mutation$RemoveAccountLoyaltyCards<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RemoveAccountLoyaltyCards(this._res);

  TRes _res;

  call({
    Input$DeleteAccountLoyaltyCardsInput? deleteAccountLoyaltyCardsInput,
  }) => _res;
}

class Mutation$RemoveAccountLoyaltyCards {
  Mutation$RemoveAccountLoyaltyCards({
    this.deleteAccountLoyaltyCards,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RemoveAccountLoyaltyCards.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$deleteAccountLoyaltyCards = json['deleteAccountLoyaltyCards'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveAccountLoyaltyCards(
      deleteAccountLoyaltyCards: l$deleteAccountLoyaltyCards == null
          ? null
          : Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards.fromJson(
              (l$deleteAccountLoyaltyCards as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards?
  deleteAccountLoyaltyCards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAccountLoyaltyCards = deleteAccountLoyaltyCards;
    _resultData['deleteAccountLoyaltyCards'] = l$deleteAccountLoyaltyCards
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAccountLoyaltyCards = deleteAccountLoyaltyCards;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteAccountLoyaltyCards, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RemoveAccountLoyaltyCards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAccountLoyaltyCards = deleteAccountLoyaltyCards;
    final lOther$deleteAccountLoyaltyCards = other.deleteAccountLoyaltyCards;
    if (l$deleteAccountLoyaltyCards != lOther$deleteAccountLoyaltyCards) {
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

extension UtilityExtension$Mutation$RemoveAccountLoyaltyCards
    on Mutation$RemoveAccountLoyaltyCards {
  CopyWith$Mutation$RemoveAccountLoyaltyCards<
    Mutation$RemoveAccountLoyaltyCards
  >
  get copyWith => CopyWith$Mutation$RemoveAccountLoyaltyCards(this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveAccountLoyaltyCards<TRes> {
  factory CopyWith$Mutation$RemoveAccountLoyaltyCards(
    Mutation$RemoveAccountLoyaltyCards instance,
    TRes Function(Mutation$RemoveAccountLoyaltyCards) then,
  ) = _CopyWithImpl$Mutation$RemoveAccountLoyaltyCards;

  factory CopyWith$Mutation$RemoveAccountLoyaltyCards.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RemoveAccountLoyaltyCards;

  TRes call({
    Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards?
    deleteAccountLoyaltyCards,
    String? $__typename,
  });
  CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards<TRes>
  get deleteAccountLoyaltyCards;
}

class _CopyWithImpl$Mutation$RemoveAccountLoyaltyCards<TRes>
    implements CopyWith$Mutation$RemoveAccountLoyaltyCards<TRes> {
  _CopyWithImpl$Mutation$RemoveAccountLoyaltyCards(this._instance, this._then);

  final Mutation$RemoveAccountLoyaltyCards _instance;

  final TRes Function(Mutation$RemoveAccountLoyaltyCards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAccountLoyaltyCards = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$RemoveAccountLoyaltyCards(
      deleteAccountLoyaltyCards: deleteAccountLoyaltyCards == _undefined
          ? _instance.deleteAccountLoyaltyCards
          : (deleteAccountLoyaltyCards
                as Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards<TRes>
  get deleteAccountLoyaltyCards {
    final local$deleteAccountLoyaltyCards = _instance.deleteAccountLoyaltyCards;
    return local$deleteAccountLoyaltyCards == null
        ? CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards(
            local$deleteAccountLoyaltyCards,
            (e) => call(deleteAccountLoyaltyCards: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$RemoveAccountLoyaltyCards<TRes>
    implements CopyWith$Mutation$RemoveAccountLoyaltyCards<TRes> {
  _CopyWithStubImpl$Mutation$RemoveAccountLoyaltyCards(this._res);

  TRes _res;

  call({
    Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards?
    deleteAccountLoyaltyCards,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards<TRes>
  get deleteAccountLoyaltyCards =>
      CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards.stub(
        _res,
      );
}

const documentNodeMutationRemoveAccountLoyaltyCards = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'RemoveAccountLoyaltyCards'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'deleteAccountLoyaltyCardsInput'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'DeleteAccountLoyaltyCardsInput'),
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
            name: NameNode(value: 'deleteAccountLoyaltyCards'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(
                  name: NameNode(value: 'deleteAccountLoyaltyCardsInput'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'AccountLoyaltyCardsError'),
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

class Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards {
  Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards({
    required this.$__typename,
  });

  factory Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountLoyaltyCardsError":
        return Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError.fromJson(
          json,
        );

      case "Account":
        return Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards(
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
    if (other
            is! Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards ||
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

extension UtilityExtension$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards
    on Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards {
  CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards<
    Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards
  >
  get copyWith =>
      CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError,
    )
    accountLoyaltyCardsError,
    required _T Function(
      Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account,
    )
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountLoyaltyCardsError":
        return accountLoyaltyCardsError(
          this
              as Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError,
        );

      case "Account":
        return account(
          this
              as Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError,
    )?
    accountLoyaltyCardsError,
    _T Function(
      Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account,
    )?
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountLoyaltyCardsError":
        if (accountLoyaltyCardsError != null) {
          return accountLoyaltyCardsError(
            this
                as Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards<
  TRes
> {
  factory CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards(
    Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards instance,
    TRes Function(Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards)
    then,
  ) = _CopyWithImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards;

  factory CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards<
  TRes
>
    implements
        CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards<
          TRes
        > {
  _CopyWithImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards(
    this._instance,
    this._then,
  );

  final Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards _instance;

  final TRes Function(
    Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards<
  TRes
>
    implements
        CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards<
          TRes
        > {
  _CopyWithStubImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError
    implements Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards {
  Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError({
    required this.message,
    this.$__typename = 'AccountLoyaltyCardsError',
  });

  factory Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError(
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
            is! Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError ||
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

extension UtilityExtension$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError
    on
        Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError {
  CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError<
    Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError
  >
  get copyWith =>
      CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError<
  TRes
> {
  factory CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError(
    Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError
    instance,
    TRes Function(
      Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError,
    )
    then,
  ) = _CopyWithImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError;

  factory CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError<
  TRes
>
    implements
        CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError<
          TRes
        > {
  _CopyWithImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError(
    this._instance,
    this._then,
  );

  final Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError
  _instance;

  final TRes Function(
    Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError<
  TRes
>
    implements
        CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$AccountLoyaltyCardsError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account
    implements Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards {
  Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account({
    required this.name,
    this.$__typename = 'Account',
  });

  factory Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account(
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
            is! Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account ||
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

extension UtilityExtension$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account
    on Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account {
  CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account<
    Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account
  >
  get copyWith =>
      CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account<
  TRes
> {
  factory CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account(
    Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account
    instance,
    TRes Function(
      Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account;

  factory CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account<
  TRes
>
    implements
        CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account(
    this._instance,
    this._then,
  );

  final Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account
  _instance;

  final TRes Function(
    Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account<
  TRes
>
    implements
        CopyWith$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$RemoveAccountLoyaltyCards$deleteAccountLoyaltyCards$$Account(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
