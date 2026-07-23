import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateAccountPrepayCard {
  factory Variables$Mutation$UpdateAccountPrepayCard({
    required Input$CreateOrUpdateAccountPrepayCardsInput updatePrepaycardInput,
  }) => Variables$Mutation$UpdateAccountPrepayCard._({
    r'updatePrepaycardInput': updatePrepaycardInput,
  });

  Variables$Mutation$UpdateAccountPrepayCard._(this._$data);

  factory Variables$Mutation$UpdateAccountPrepayCard.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$updatePrepaycardInput = data['updatePrepaycardInput'];
    result$data['updatePrepaycardInput'] =
        Input$CreateOrUpdateAccountPrepayCardsInput.fromJson(
          (l$updatePrepaycardInput as Map<String, dynamic>),
        );
    return Variables$Mutation$UpdateAccountPrepayCard._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOrUpdateAccountPrepayCardsInput get updatePrepaycardInput =>
      (_$data['updatePrepaycardInput']
          as Input$CreateOrUpdateAccountPrepayCardsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$updatePrepaycardInput = updatePrepaycardInput;
    result$data['updatePrepaycardInput'] = l$updatePrepaycardInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAccountPrepayCard<
    Variables$Mutation$UpdateAccountPrepayCard
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateAccountPrepayCard(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateAccountPrepayCard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePrepaycardInput = updatePrepaycardInput;
    final lOther$updatePrepaycardInput = other.updatePrepaycardInput;
    if (l$updatePrepaycardInput != lOther$updatePrepaycardInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$updatePrepaycardInput = updatePrepaycardInput;
    return Object.hashAll([l$updatePrepaycardInput]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateAccountPrepayCard<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAccountPrepayCard(
    Variables$Mutation$UpdateAccountPrepayCard instance,
    TRes Function(Variables$Mutation$UpdateAccountPrepayCard) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAccountPrepayCard;

  factory CopyWith$Variables$Mutation$UpdateAccountPrepayCard.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAccountPrepayCard;

  TRes call({
    Input$CreateOrUpdateAccountPrepayCardsInput? updatePrepaycardInput,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateAccountPrepayCard<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountPrepayCard<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAccountPrepayCard(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAccountPrepayCard _instance;

  final TRes Function(Variables$Mutation$UpdateAccountPrepayCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updatePrepaycardInput = _undefined}) => _then(
    Variables$Mutation$UpdateAccountPrepayCard._({
      ..._instance._$data,
      if (updatePrepaycardInput != _undefined && updatePrepaycardInput != null)
        'updatePrepaycardInput':
            (updatePrepaycardInput
                as Input$CreateOrUpdateAccountPrepayCardsInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAccountPrepayCard<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountPrepayCard<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAccountPrepayCard(this._res);

  TRes _res;

  call({Input$CreateOrUpdateAccountPrepayCardsInput? updatePrepaycardInput}) =>
      _res;
}

class Mutation$UpdateAccountPrepayCard {
  Mutation$UpdateAccountPrepayCard({
    this.updateAccountPrepayCards,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAccountPrepayCard.fromJson(Map<String, dynamic> json) {
    final l$updateAccountPrepayCards = json['updateAccountPrepayCards'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountPrepayCard(
      updateAccountPrepayCards: l$updateAccountPrepayCards == null
          ? null
          : Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards.fromJson(
              (l$updateAccountPrepayCards as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards?
  updateAccountPrepayCards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAccountPrepayCards = updateAccountPrepayCards;
    _resultData['updateAccountPrepayCards'] = l$updateAccountPrepayCards
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAccountPrepayCards = updateAccountPrepayCards;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateAccountPrepayCards, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccountPrepayCard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAccountPrepayCards = updateAccountPrepayCards;
    final lOther$updateAccountPrepayCards = other.updateAccountPrepayCards;
    if (l$updateAccountPrepayCards != lOther$updateAccountPrepayCards) {
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

extension UtilityExtension$Mutation$UpdateAccountPrepayCard
    on Mutation$UpdateAccountPrepayCard {
  CopyWith$Mutation$UpdateAccountPrepayCard<Mutation$UpdateAccountPrepayCard>
  get copyWith => CopyWith$Mutation$UpdateAccountPrepayCard(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateAccountPrepayCard<TRes> {
  factory CopyWith$Mutation$UpdateAccountPrepayCard(
    Mutation$UpdateAccountPrepayCard instance,
    TRes Function(Mutation$UpdateAccountPrepayCard) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountPrepayCard;

  factory CopyWith$Mutation$UpdateAccountPrepayCard.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccountPrepayCard;

  TRes call({
    Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards?
    updateAccountPrepayCards,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards<TRes>
  get updateAccountPrepayCards;
}

class _CopyWithImpl$Mutation$UpdateAccountPrepayCard<TRes>
    implements CopyWith$Mutation$UpdateAccountPrepayCard<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountPrepayCard(this._instance, this._then);

  final Mutation$UpdateAccountPrepayCard _instance;

  final TRes Function(Mutation$UpdateAccountPrepayCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAccountPrepayCards = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountPrepayCard(
      updateAccountPrepayCards: updateAccountPrepayCards == _undefined
          ? _instance.updateAccountPrepayCards
          : (updateAccountPrepayCards
                as Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards<TRes>
  get updateAccountPrepayCards {
    final local$updateAccountPrepayCards = _instance.updateAccountPrepayCards;
    return local$updateAccountPrepayCards == null
        ? CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards(
            local$updateAccountPrepayCards,
            (e) => call(updateAccountPrepayCards: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccountPrepayCard<TRes>
    implements CopyWith$Mutation$UpdateAccountPrepayCard<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountPrepayCard(this._res);

  TRes _res;

  call({
    Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards?
    updateAccountPrepayCards,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards<TRes>
  get updateAccountPrepayCards =>
      CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards.stub(
        _res,
      );
}

const documentNodeMutationUpdateAccountPrepayCard = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateAccountPrepayCard'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'updatePrepaycardInput'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateOrUpdateAccountPrepayCardsInput'),
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
            name: NameNode(value: 'updateAccountPrepayCards'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'updatePrepayCardInput'),
                value: VariableNode(
                  name: NameNode(value: 'updatePrepaycardInput'),
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

class Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards {
  Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards({
    required this.$__typename,
  });

  factory Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountPrepayCardError":
        return Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError.fromJson(
          json,
        );

      case "Account":
        return Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards(
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
    if (other is! Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards ||
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

extension UtilityExtension$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards
    on Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards {
  CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards<
    Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError,
    )
    accountPrepayCardError,
    required _T Function(
      Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account,
    )
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountPrepayCardError":
        return accountPrepayCardError(
          this
              as Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError,
        );

      case "Account":
        return account(
          this
              as Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError,
    )?
    accountPrepayCardError,
    _T Function(
      Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account,
    )?
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountPrepayCardError":
        if (accountPrepayCardError != null) {
          return accountPrepayCardError(
            this
                as Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards(
    Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards instance,
    TRes Function(Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards)
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards;

  factory CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards _instance;

  final TRes Function(Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError
    implements Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards {
  Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError({
    required this.message,
    this.$__typename = 'AccountPrepayCardError',
  });

  factory Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError(
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
            is! Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError ||
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

extension UtilityExtension$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError
    on
        Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError {
  CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError<
    Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError(
    Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError
    instance,
    TRes Function(
      Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError;

  factory CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError
  _instance;

  final TRes Function(
    Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$AccountPrepayCardError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account
    implements Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards {
  Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account({
    required this.name,
    this.$__typename = 'Account',
  });

  factory Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account(
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
            is! Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account ||
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

extension UtilityExtension$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account
    on Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account {
  CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account<
    Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account(
    Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account instance,
    TRes Function(
      Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account;

  factory CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account
  _instance;

  final TRes Function(
    Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountPrepayCard$updateAccountPrepayCards$$Account(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
