import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddAccountPrepayCard {
  factory Variables$Mutation$AddAccountPrepayCard({
    required Input$CreateOrUpdateAccountPrepayCardsInput addPrepaycardInput,
  }) => Variables$Mutation$AddAccountPrepayCard._({
    r'addPrepaycardInput': addPrepaycardInput,
  });

  Variables$Mutation$AddAccountPrepayCard._(this._$data);

  factory Variables$Mutation$AddAccountPrepayCard.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$addPrepaycardInput = data['addPrepaycardInput'];
    result$data['addPrepaycardInput'] =
        Input$CreateOrUpdateAccountPrepayCardsInput.fromJson(
          (l$addPrepaycardInput as Map<String, dynamic>),
        );
    return Variables$Mutation$AddAccountPrepayCard._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOrUpdateAccountPrepayCardsInput get addPrepaycardInput =>
      (_$data['addPrepaycardInput']
          as Input$CreateOrUpdateAccountPrepayCardsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$addPrepaycardInput = addPrepaycardInput;
    result$data['addPrepaycardInput'] = l$addPrepaycardInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddAccountPrepayCard<
    Variables$Mutation$AddAccountPrepayCard
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddAccountPrepayCard(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddAccountPrepayCard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addPrepaycardInput = addPrepaycardInput;
    final lOther$addPrepaycardInput = other.addPrepaycardInput;
    if (l$addPrepaycardInput != lOther$addPrepaycardInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$addPrepaycardInput = addPrepaycardInput;
    return Object.hashAll([l$addPrepaycardInput]);
  }
}

abstract class CopyWith$Variables$Mutation$AddAccountPrepayCard<TRes> {
  factory CopyWith$Variables$Mutation$AddAccountPrepayCard(
    Variables$Mutation$AddAccountPrepayCard instance,
    TRes Function(Variables$Mutation$AddAccountPrepayCard) then,
  ) = _CopyWithImpl$Variables$Mutation$AddAccountPrepayCard;

  factory CopyWith$Variables$Mutation$AddAccountPrepayCard.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddAccountPrepayCard;

  TRes call({Input$CreateOrUpdateAccountPrepayCardsInput? addPrepaycardInput});
}

class _CopyWithImpl$Variables$Mutation$AddAccountPrepayCard<TRes>
    implements CopyWith$Variables$Mutation$AddAccountPrepayCard<TRes> {
  _CopyWithImpl$Variables$Mutation$AddAccountPrepayCard(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddAccountPrepayCard _instance;

  final TRes Function(Variables$Mutation$AddAccountPrepayCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? addPrepaycardInput = _undefined}) => _then(
    Variables$Mutation$AddAccountPrepayCard._({
      ..._instance._$data,
      if (addPrepaycardInput != _undefined && addPrepaycardInput != null)
        'addPrepaycardInput':
            (addPrepaycardInput as Input$CreateOrUpdateAccountPrepayCardsInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddAccountPrepayCard<TRes>
    implements CopyWith$Variables$Mutation$AddAccountPrepayCard<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddAccountPrepayCard(this._res);

  TRes _res;

  call({Input$CreateOrUpdateAccountPrepayCardsInput? addPrepaycardInput}) =>
      _res;
}

class Mutation$AddAccountPrepayCard {
  Mutation$AddAccountPrepayCard({
    this.addAccountPrepayCards,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddAccountPrepayCard.fromJson(Map<String, dynamic> json) {
    final l$addAccountPrepayCards = json['addAccountPrepayCards'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountPrepayCard(
      addAccountPrepayCards: l$addAccountPrepayCards == null
          ? null
          : Mutation$AddAccountPrepayCard$addAccountPrepayCards.fromJson(
              (l$addAccountPrepayCards as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddAccountPrepayCard$addAccountPrepayCards?
  addAccountPrepayCards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addAccountPrepayCards = addAccountPrepayCards;
    _resultData['addAccountPrepayCards'] = l$addAccountPrepayCards?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addAccountPrepayCards = addAccountPrepayCards;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addAccountPrepayCards, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddAccountPrepayCard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addAccountPrepayCards = addAccountPrepayCards;
    final lOther$addAccountPrepayCards = other.addAccountPrepayCards;
    if (l$addAccountPrepayCards != lOther$addAccountPrepayCards) {
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

extension UtilityExtension$Mutation$AddAccountPrepayCard
    on Mutation$AddAccountPrepayCard {
  CopyWith$Mutation$AddAccountPrepayCard<Mutation$AddAccountPrepayCard>
  get copyWith => CopyWith$Mutation$AddAccountPrepayCard(this, (i) => i);
}

abstract class CopyWith$Mutation$AddAccountPrepayCard<TRes> {
  factory CopyWith$Mutation$AddAccountPrepayCard(
    Mutation$AddAccountPrepayCard instance,
    TRes Function(Mutation$AddAccountPrepayCard) then,
  ) = _CopyWithImpl$Mutation$AddAccountPrepayCard;

  factory CopyWith$Mutation$AddAccountPrepayCard.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddAccountPrepayCard;

  TRes call({
    Mutation$AddAccountPrepayCard$addAccountPrepayCards? addAccountPrepayCards,
    String? $__typename,
  });
  CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards<TRes>
  get addAccountPrepayCards;
}

class _CopyWithImpl$Mutation$AddAccountPrepayCard<TRes>
    implements CopyWith$Mutation$AddAccountPrepayCard<TRes> {
  _CopyWithImpl$Mutation$AddAccountPrepayCard(this._instance, this._then);

  final Mutation$AddAccountPrepayCard _instance;

  final TRes Function(Mutation$AddAccountPrepayCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addAccountPrepayCards = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddAccountPrepayCard(
      addAccountPrepayCards: addAccountPrepayCards == _undefined
          ? _instance.addAccountPrepayCards
          : (addAccountPrepayCards
                as Mutation$AddAccountPrepayCard$addAccountPrepayCards?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards<TRes>
  get addAccountPrepayCards {
    final local$addAccountPrepayCards = _instance.addAccountPrepayCards;
    return local$addAccountPrepayCards == null
        ? CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards(
            local$addAccountPrepayCards,
            (e) => call(addAccountPrepayCards: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$AddAccountPrepayCard<TRes>
    implements CopyWith$Mutation$AddAccountPrepayCard<TRes> {
  _CopyWithStubImpl$Mutation$AddAccountPrepayCard(this._res);

  TRes _res;

  call({
    Mutation$AddAccountPrepayCard$addAccountPrepayCards? addAccountPrepayCards,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards<TRes>
  get addAccountPrepayCards =>
      CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards.stub(_res);
}

const documentNodeMutationAddAccountPrepayCard = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddAccountPrepayCard'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'addPrepaycardInput')),
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
            name: NameNode(value: 'addAccountPrepayCards'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'addPrepayCardInput'),
                value: VariableNode(
                  name: NameNode(value: 'addPrepaycardInput'),
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

class Mutation$AddAccountPrepayCard$addAccountPrepayCards {
  Mutation$AddAccountPrepayCard$addAccountPrepayCards({
    required this.$__typename,
  });

  factory Mutation$AddAccountPrepayCard$addAccountPrepayCards.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountPrepayCardError":
        return Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError.fromJson(
          json,
        );

      case "Account":
        return Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$AddAccountPrepayCard$addAccountPrepayCards(
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
    if (other is! Mutation$AddAccountPrepayCard$addAccountPrepayCards ||
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

extension UtilityExtension$Mutation$AddAccountPrepayCard$addAccountPrepayCards
    on Mutation$AddAccountPrepayCard$addAccountPrepayCards {
  CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards<
    Mutation$AddAccountPrepayCard$addAccountPrepayCards
  >
  get copyWith => CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards(
    this,
    (i) => i,
  );

  _T when<_T>({
    required _T Function(
      Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError,
    )
    accountPrepayCardError,
    required _T Function(
      Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account,
    )
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountPrepayCardError":
        return accountPrepayCardError(
          this
              as Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError,
        );

      case "Account":
        return account(
          this as Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError,
    )?
    accountPrepayCardError,
    _T Function(Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account)?
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountPrepayCardError":
        if (accountPrepayCardError != null) {
          return accountPrepayCardError(
            this
                as Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards<
  TRes
> {
  factory CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards(
    Mutation$AddAccountPrepayCard$addAccountPrepayCards instance,
    TRes Function(Mutation$AddAccountPrepayCard$addAccountPrepayCards) then,
  ) = _CopyWithImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards;

  factory CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards<TRes>
    implements
        CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards<TRes> {
  _CopyWithImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountPrepayCard$addAccountPrepayCards _instance;

  final TRes Function(Mutation$AddAccountPrepayCard$addAccountPrepayCards)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$AddAccountPrepayCard$addAccountPrepayCards(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards<TRes> {
  _CopyWithStubImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError
    implements Mutation$AddAccountPrepayCard$addAccountPrepayCards {
  Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError({
    required this.message,
    this.$__typename = 'AccountPrepayCardError',
  });

  factory Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError(
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
            is! Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError ||
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

extension UtilityExtension$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError
    on Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError {
  CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError<
    Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError<
  TRes
> {
  factory CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError(
    Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError
    instance,
    TRes Function(
      Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError;

  factory CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError<
          TRes
        > {
  _CopyWithImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError
  _instance;

  final TRes Function(
    Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$AccountPrepayCardError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account
    implements Mutation$AddAccountPrepayCard$addAccountPrepayCards {
  Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account({
    required this.name,
    this.$__typename = 'Account',
  });

  factory Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account(
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
            is! Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account ||
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

extension UtilityExtension$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account
    on Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account {
  CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account<
    Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account<
  TRes
> {
  factory CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account(
    Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account instance,
    TRes Function(Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account)
    then,
  ) = _CopyWithImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account;

  factory CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account _instance;

  final TRes Function(
    Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddAccountPrepayCard$addAccountPrepayCards$$Account(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
