import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateLoyaltyCards {
  factory Variables$Mutation$UpdateLoyaltyCards({
    required Input$CreateOrUpdateAccountLoyaltyCardInput input,
  }) => Variables$Mutation$UpdateLoyaltyCards._({r'input': input});

  Variables$Mutation$UpdateLoyaltyCards._(this._$data);

  factory Variables$Mutation$UpdateLoyaltyCards.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateOrUpdateAccountLoyaltyCardInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateLoyaltyCards._(result$data);
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

  CopyWith$Variables$Mutation$UpdateLoyaltyCards<
    Variables$Mutation$UpdateLoyaltyCards
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateLoyaltyCards(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateLoyaltyCards ||
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

abstract class CopyWith$Variables$Mutation$UpdateLoyaltyCards<TRes> {
  factory CopyWith$Variables$Mutation$UpdateLoyaltyCards(
    Variables$Mutation$UpdateLoyaltyCards instance,
    TRes Function(Variables$Mutation$UpdateLoyaltyCards) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateLoyaltyCards;

  factory CopyWith$Variables$Mutation$UpdateLoyaltyCards.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateLoyaltyCards;

  TRes call({Input$CreateOrUpdateAccountLoyaltyCardInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateLoyaltyCards<TRes>
    implements CopyWith$Variables$Mutation$UpdateLoyaltyCards<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateLoyaltyCards(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateLoyaltyCards _instance;

  final TRes Function(Variables$Mutation$UpdateLoyaltyCards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateLoyaltyCards._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateOrUpdateAccountLoyaltyCardInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateLoyaltyCards<TRes>
    implements CopyWith$Variables$Mutation$UpdateLoyaltyCards<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateLoyaltyCards(this._res);

  TRes _res;

  call({Input$CreateOrUpdateAccountLoyaltyCardInput? input}) => _res;
}

class Mutation$UpdateLoyaltyCards {
  Mutation$UpdateLoyaltyCards({
    this.updateAccountLoyaltyCards,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateLoyaltyCards.fromJson(Map<String, dynamic> json) {
    final l$updateAccountLoyaltyCards = json['updateAccountLoyaltyCards'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateLoyaltyCards(
      updateAccountLoyaltyCards: l$updateAccountLoyaltyCards == null
          ? null
          : Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards.fromJson(
              (l$updateAccountLoyaltyCards as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards?
  updateAccountLoyaltyCards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAccountLoyaltyCards = updateAccountLoyaltyCards;
    _resultData['updateAccountLoyaltyCards'] = l$updateAccountLoyaltyCards
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAccountLoyaltyCards = updateAccountLoyaltyCards;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateAccountLoyaltyCards, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateLoyaltyCards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAccountLoyaltyCards = updateAccountLoyaltyCards;
    final lOther$updateAccountLoyaltyCards = other.updateAccountLoyaltyCards;
    if (l$updateAccountLoyaltyCards != lOther$updateAccountLoyaltyCards) {
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

extension UtilityExtension$Mutation$UpdateLoyaltyCards
    on Mutation$UpdateLoyaltyCards {
  CopyWith$Mutation$UpdateLoyaltyCards<Mutation$UpdateLoyaltyCards>
  get copyWith => CopyWith$Mutation$UpdateLoyaltyCards(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateLoyaltyCards<TRes> {
  factory CopyWith$Mutation$UpdateLoyaltyCards(
    Mutation$UpdateLoyaltyCards instance,
    TRes Function(Mutation$UpdateLoyaltyCards) then,
  ) = _CopyWithImpl$Mutation$UpdateLoyaltyCards;

  factory CopyWith$Mutation$UpdateLoyaltyCards.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateLoyaltyCards;

  TRes call({
    Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards?
    updateAccountLoyaltyCards,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards<TRes>
  get updateAccountLoyaltyCards;
}

class _CopyWithImpl$Mutation$UpdateLoyaltyCards<TRes>
    implements CopyWith$Mutation$UpdateLoyaltyCards<TRes> {
  _CopyWithImpl$Mutation$UpdateLoyaltyCards(this._instance, this._then);

  final Mutation$UpdateLoyaltyCards _instance;

  final TRes Function(Mutation$UpdateLoyaltyCards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAccountLoyaltyCards = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateLoyaltyCards(
      updateAccountLoyaltyCards: updateAccountLoyaltyCards == _undefined
          ? _instance.updateAccountLoyaltyCards
          : (updateAccountLoyaltyCards
                as Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards<TRes>
  get updateAccountLoyaltyCards {
    final local$updateAccountLoyaltyCards = _instance.updateAccountLoyaltyCards;
    return local$updateAccountLoyaltyCards == null
        ? CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards(
            local$updateAccountLoyaltyCards,
            (e) => call(updateAccountLoyaltyCards: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateLoyaltyCards<TRes>
    implements CopyWith$Mutation$UpdateLoyaltyCards<TRes> {
  _CopyWithStubImpl$Mutation$UpdateLoyaltyCards(this._res);

  TRes _res;

  call({
    Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards?
    updateAccountLoyaltyCards,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards<TRes>
  get updateAccountLoyaltyCards =>
      CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards.stub(_res);
}

const documentNodeMutationUpdateLoyaltyCards = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateLoyaltyCards'),
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
            name: NameNode(value: 'updateAccountLoyaltyCards'),
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

class Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards {
  Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards({
    required this.$__typename,
  });

  factory Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountLoyaltyCardsError":
        return Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError.fromJson(
          json,
        );

      case "Account":
        return Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards(
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
    if (other is! Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards ||
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

extension UtilityExtension$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards
    on Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards {
  CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards<
    Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards
  >
  get copyWith =>
      CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError,
    )
    accountLoyaltyCardsError,
    required _T Function(
      Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account,
    )
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountLoyaltyCardsError":
        return accountLoyaltyCardsError(
          this
              as Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError,
        );

      case "Account":
        return account(
          this
              as Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError,
    )?
    accountLoyaltyCardsError,
    _T Function(Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account)?
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountLoyaltyCardsError":
        if (accountLoyaltyCardsError != null) {
          return accountLoyaltyCardsError(
            this
                as Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards<
  TRes
> {
  factory CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards(
    Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards instance,
    TRes Function(Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards) then,
  ) = _CopyWithImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards;

  factory CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards<TRes>
    implements
        CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards<TRes> {
  _CopyWithImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards(
    this._instance,
    this._then,
  );

  final Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards _instance;

  final TRes Function(Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards<
  TRes
>
    implements
        CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards<TRes> {
  _CopyWithStubImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError
    implements Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards {
  Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError({
    required this.message,
    this.$__typename = 'AccountLoyaltyCardsError',
  });

  factory Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError(
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
            is! Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError ||
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

extension UtilityExtension$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError
    on
        Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError {
  CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError<
    Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError<
  TRes
> {
  factory CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError(
    Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError
    instance,
    TRes Function(
      Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError;

  factory CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError
  _instance;

  final TRes Function(
    Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$AccountLoyaltyCardsError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account
    implements Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards {
  Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account({
    required this.name,
    this.$__typename = 'Account',
  });

  factory Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account(
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
            is! Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account ||
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

extension UtilityExtension$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account
    on Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account {
  CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account<
    Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account
  >
  get copyWith =>
      CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account<
  TRes
> {
  factory CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account(
    Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account instance,
    TRes Function(
      Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account;

  factory CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account(
    this._instance,
    this._then,
  );

  final Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account
  _instance;

  final TRes Function(
    Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateLoyaltyCards$updateAccountLoyaltyCards$$Account(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
