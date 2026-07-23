import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddAccountLoyaltyCards {
  factory Variables$Mutation$AddAccountLoyaltyCards({
    required Input$CreateOrUpdateAccountLoyaltyCardInput input,
  }) => Variables$Mutation$AddAccountLoyaltyCards._({r'input': input});

  Variables$Mutation$AddAccountLoyaltyCards._(this._$data);

  factory Variables$Mutation$AddAccountLoyaltyCards.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateOrUpdateAccountLoyaltyCardInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$AddAccountLoyaltyCards._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOrUpdateAccountLoyaltyCardInput get input =>
      (_$data['input'] as Input$CreateOrUpdateAccountLoyaltyCardInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddAccountLoyaltyCards<
    Variables$Mutation$AddAccountLoyaltyCards
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddAccountLoyaltyCards(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddAccountLoyaltyCards ||
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

abstract class CopyWith$Variables$Mutation$AddAccountLoyaltyCards<TRes> {
  factory CopyWith$Variables$Mutation$AddAccountLoyaltyCards(
    Variables$Mutation$AddAccountLoyaltyCards instance,
    TRes Function(Variables$Mutation$AddAccountLoyaltyCards) then,
  ) = _CopyWithImpl$Variables$Mutation$AddAccountLoyaltyCards;

  factory CopyWith$Variables$Mutation$AddAccountLoyaltyCards.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddAccountLoyaltyCards;

  TRes call({Input$CreateOrUpdateAccountLoyaltyCardInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddAccountLoyaltyCards<TRes>
    implements CopyWith$Variables$Mutation$AddAccountLoyaltyCards<TRes> {
  _CopyWithImpl$Variables$Mutation$AddAccountLoyaltyCards(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddAccountLoyaltyCards _instance;

  final TRes Function(Variables$Mutation$AddAccountLoyaltyCards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$AddAccountLoyaltyCards._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateOrUpdateAccountLoyaltyCardInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddAccountLoyaltyCards<TRes>
    implements CopyWith$Variables$Mutation$AddAccountLoyaltyCards<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddAccountLoyaltyCards(this._res);

  TRes _res;

  call({Input$CreateOrUpdateAccountLoyaltyCardInput? input}) => _res;
}

class Mutation$AddAccountLoyaltyCards {
  Mutation$AddAccountLoyaltyCards({
    this.addAccountLoyaltyCards,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddAccountLoyaltyCards.fromJson(Map<String, dynamic> json) {
    final l$addAccountLoyaltyCards = json['addAccountLoyaltyCards'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountLoyaltyCards(
      addAccountLoyaltyCards: l$addAccountLoyaltyCards == null
          ? null
          : Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards.fromJson(
              (l$addAccountLoyaltyCards as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards?
  addAccountLoyaltyCards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addAccountLoyaltyCards = addAccountLoyaltyCards;
    _resultData['addAccountLoyaltyCards'] = l$addAccountLoyaltyCards?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addAccountLoyaltyCards = addAccountLoyaltyCards;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addAccountLoyaltyCards, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddAccountLoyaltyCards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addAccountLoyaltyCards = addAccountLoyaltyCards;
    final lOther$addAccountLoyaltyCards = other.addAccountLoyaltyCards;
    if (l$addAccountLoyaltyCards != lOther$addAccountLoyaltyCards) {
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

extension UtilityExtension$Mutation$AddAccountLoyaltyCards
    on Mutation$AddAccountLoyaltyCards {
  CopyWith$Mutation$AddAccountLoyaltyCards<Mutation$AddAccountLoyaltyCards>
  get copyWith => CopyWith$Mutation$AddAccountLoyaltyCards(this, (i) => i);
}

abstract class CopyWith$Mutation$AddAccountLoyaltyCards<TRes> {
  factory CopyWith$Mutation$AddAccountLoyaltyCards(
    Mutation$AddAccountLoyaltyCards instance,
    TRes Function(Mutation$AddAccountLoyaltyCards) then,
  ) = _CopyWithImpl$Mutation$AddAccountLoyaltyCards;

  factory CopyWith$Mutation$AddAccountLoyaltyCards.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddAccountLoyaltyCards;

  TRes call({
    Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards?
    addAccountLoyaltyCards,
    String? $__typename,
  });
  CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards<TRes>
  get addAccountLoyaltyCards;
}

class _CopyWithImpl$Mutation$AddAccountLoyaltyCards<TRes>
    implements CopyWith$Mutation$AddAccountLoyaltyCards<TRes> {
  _CopyWithImpl$Mutation$AddAccountLoyaltyCards(this._instance, this._then);

  final Mutation$AddAccountLoyaltyCards _instance;

  final TRes Function(Mutation$AddAccountLoyaltyCards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addAccountLoyaltyCards = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddAccountLoyaltyCards(
      addAccountLoyaltyCards: addAccountLoyaltyCards == _undefined
          ? _instance.addAccountLoyaltyCards
          : (addAccountLoyaltyCards
                as Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards<TRes>
  get addAccountLoyaltyCards {
    final local$addAccountLoyaltyCards = _instance.addAccountLoyaltyCards;
    return local$addAccountLoyaltyCards == null
        ? CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards(
            local$addAccountLoyaltyCards,
            (e) => call(addAccountLoyaltyCards: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$AddAccountLoyaltyCards<TRes>
    implements CopyWith$Mutation$AddAccountLoyaltyCards<TRes> {
  _CopyWithStubImpl$Mutation$AddAccountLoyaltyCards(this._res);

  TRes _res;

  call({
    Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards?
    addAccountLoyaltyCards,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards<TRes>
  get addAccountLoyaltyCards =>
      CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards.stub(
        _res,
      );
}

const documentNodeMutationAddAccountLoyaltyCards = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddAccountLoyaltyCards'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateOrUpdateAccountLoyaltyCardInput'),
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
            name: NameNode(value: 'addAccountLoyaltyCards'),
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

class Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards {
  Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards({
    required this.$__typename,
  });

  factory Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "Account":
        return Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account.fromJson(
          json,
        );

      case "AccountLoyaltyCardsError":
        return Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards(
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
    if (other is! Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards ||
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

extension UtilityExtension$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards
    on Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards {
  CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards<
    Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account,
    )
    account,
    required _T Function(
      Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError,
    )
    accountLoyaltyCardsError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        return account(
          this
              as Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account,
        );

      case "AccountLoyaltyCardsError":
        return accountLoyaltyCardsError(
          this
              as Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account,
    )?
    account,
    _T Function(
      Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError,
    )?
    accountLoyaltyCardsError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account,
          );
        } else {
          return orElse();
        }

      case "AccountLoyaltyCardsError":
        if (accountLoyaltyCardsError != null) {
          return accountLoyaltyCardsError(
            this
                as Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards<
  TRes
> {
  factory CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards(
    Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards instance,
    TRes Function(Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards) then,
  ) = _CopyWithImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards;

  factory CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards<TRes>
    implements
        CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards<TRes> {
  _CopyWithImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards _instance;

  final TRes Function(Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards<TRes> {
  _CopyWithStubImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account
    implements Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards {
  Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account({
    required this.name,
    this.$__typename = 'Account',
  });

  factory Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account(
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
            is! Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account ||
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

extension UtilityExtension$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account
    on Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account {
  CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account<
    Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account<
  TRes
> {
  factory CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account(
    Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account instance,
    TRes Function(
      Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account;

  factory CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account
  _instance;

  final TRes Function(
    Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$Account(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}

class Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError
    implements Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards {
  Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError({
    required this.message,
    this.$__typename = 'AccountLoyaltyCardsError',
  });

  factory Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError(
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
            is! Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError ||
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

extension UtilityExtension$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError
    on
        Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError {
  CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError<
    Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError<
  TRes
> {
  factory CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError(
    Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError
    instance,
    TRes Function(
      Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError;

  factory CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError<
          TRes
        > {
  _CopyWithImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError
  _instance;

  final TRes Function(
    Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddAccountLoyaltyCards$addAccountLoyaltyCards$$AccountLoyaltyCardsError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
