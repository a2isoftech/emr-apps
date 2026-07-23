import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddAccountLocations {
  factory Variables$Mutation$AddAccountLocations({
    required Input$CreateOrUpdateAccountLocationInput addAccountLocationInput,
  }) => Variables$Mutation$AddAccountLocations._({
    r'addAccountLocationInput': addAccountLocationInput,
  });

  Variables$Mutation$AddAccountLocations._(this._$data);

  factory Variables$Mutation$AddAccountLocations.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$addAccountLocationInput = data['addAccountLocationInput'];
    result$data['addAccountLocationInput'] =
        Input$CreateOrUpdateAccountLocationInput.fromJson(
          (l$addAccountLocationInput as Map<String, dynamic>),
        );
    return Variables$Mutation$AddAccountLocations._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOrUpdateAccountLocationInput get addAccountLocationInput =>
      (_$data['addAccountLocationInput']
          as Input$CreateOrUpdateAccountLocationInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$addAccountLocationInput = addAccountLocationInput;
    result$data['addAccountLocationInput'] = l$addAccountLocationInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddAccountLocations<
    Variables$Mutation$AddAccountLocations
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddAccountLocations(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddAccountLocations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addAccountLocationInput = addAccountLocationInput;
    final lOther$addAccountLocationInput = other.addAccountLocationInput;
    if (l$addAccountLocationInput != lOther$addAccountLocationInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$addAccountLocationInput = addAccountLocationInput;
    return Object.hashAll([l$addAccountLocationInput]);
  }
}

abstract class CopyWith$Variables$Mutation$AddAccountLocations<TRes> {
  factory CopyWith$Variables$Mutation$AddAccountLocations(
    Variables$Mutation$AddAccountLocations instance,
    TRes Function(Variables$Mutation$AddAccountLocations) then,
  ) = _CopyWithImpl$Variables$Mutation$AddAccountLocations;

  factory CopyWith$Variables$Mutation$AddAccountLocations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddAccountLocations;

  TRes call({
    Input$CreateOrUpdateAccountLocationInput? addAccountLocationInput,
  });
}

class _CopyWithImpl$Variables$Mutation$AddAccountLocations<TRes>
    implements CopyWith$Variables$Mutation$AddAccountLocations<TRes> {
  _CopyWithImpl$Variables$Mutation$AddAccountLocations(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddAccountLocations _instance;

  final TRes Function(Variables$Mutation$AddAccountLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? addAccountLocationInput = _undefined}) => _then(
    Variables$Mutation$AddAccountLocations._({
      ..._instance._$data,
      if (addAccountLocationInput != _undefined &&
          addAccountLocationInput != null)
        'addAccountLocationInput':
            (addAccountLocationInput
                as Input$CreateOrUpdateAccountLocationInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddAccountLocations<TRes>
    implements CopyWith$Variables$Mutation$AddAccountLocations<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddAccountLocations(this._res);

  TRes _res;

  call({Input$CreateOrUpdateAccountLocationInput? addAccountLocationInput}) =>
      _res;
}

class Mutation$AddAccountLocations {
  Mutation$AddAccountLocations({
    this.addAccountLocations,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddAccountLocations.fromJson(Map<String, dynamic> json) {
    final l$addAccountLocations = json['addAccountLocations'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountLocations(
      addAccountLocations: l$addAccountLocations == null
          ? null
          : Mutation$AddAccountLocations$addAccountLocations.fromJson(
              (l$addAccountLocations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddAccountLocations$addAccountLocations? addAccountLocations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addAccountLocations = addAccountLocations;
    _resultData['addAccountLocations'] = l$addAccountLocations?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addAccountLocations = addAccountLocations;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addAccountLocations, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddAccountLocations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addAccountLocations = addAccountLocations;
    final lOther$addAccountLocations = other.addAccountLocations;
    if (l$addAccountLocations != lOther$addAccountLocations) {
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

extension UtilityExtension$Mutation$AddAccountLocations
    on Mutation$AddAccountLocations {
  CopyWith$Mutation$AddAccountLocations<Mutation$AddAccountLocations>
  get copyWith => CopyWith$Mutation$AddAccountLocations(this, (i) => i);
}

abstract class CopyWith$Mutation$AddAccountLocations<TRes> {
  factory CopyWith$Mutation$AddAccountLocations(
    Mutation$AddAccountLocations instance,
    TRes Function(Mutation$AddAccountLocations) then,
  ) = _CopyWithImpl$Mutation$AddAccountLocations;

  factory CopyWith$Mutation$AddAccountLocations.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddAccountLocations;

  TRes call({
    Mutation$AddAccountLocations$addAccountLocations? addAccountLocations,
    String? $__typename,
  });
  CopyWith$Mutation$AddAccountLocations$addAccountLocations<TRes>
  get addAccountLocations;
}

class _CopyWithImpl$Mutation$AddAccountLocations<TRes>
    implements CopyWith$Mutation$AddAccountLocations<TRes> {
  _CopyWithImpl$Mutation$AddAccountLocations(this._instance, this._then);

  final Mutation$AddAccountLocations _instance;

  final TRes Function(Mutation$AddAccountLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addAccountLocations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddAccountLocations(
      addAccountLocations: addAccountLocations == _undefined
          ? _instance.addAccountLocations
          : (addAccountLocations
                as Mutation$AddAccountLocations$addAccountLocations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddAccountLocations$addAccountLocations<TRes>
  get addAccountLocations {
    final local$addAccountLocations = _instance.addAccountLocations;
    return local$addAccountLocations == null
        ? CopyWith$Mutation$AddAccountLocations$addAccountLocations.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$AddAccountLocations$addAccountLocations(
            local$addAccountLocations,
            (e) => call(addAccountLocations: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$AddAccountLocations<TRes>
    implements CopyWith$Mutation$AddAccountLocations<TRes> {
  _CopyWithStubImpl$Mutation$AddAccountLocations(this._res);

  TRes _res;

  call({
    Mutation$AddAccountLocations$addAccountLocations? addAccountLocations,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddAccountLocations$addAccountLocations<TRes>
  get addAccountLocations =>
      CopyWith$Mutation$AddAccountLocations$addAccountLocations.stub(_res);
}

const documentNodeMutationAddAccountLocations = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddAccountLocations'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'addAccountLocationInput'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateOrUpdateAccountLocationInput'),
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
            name: NameNode(value: 'addAccountLocations'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'addAccountLocationInput'),
                value: VariableNode(
                  name: NameNode(value: 'addAccountLocationInput'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'AccountLocationError'),
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

class Mutation$AddAccountLocations$addAccountLocations {
  Mutation$AddAccountLocations$addAccountLocations({required this.$__typename});

  factory Mutation$AddAccountLocations$addAccountLocations.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountLocationError":
        return Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError.fromJson(
          json,
        );

      case "Account":
        return Mutation$AddAccountLocations$addAccountLocations$$Account.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$AddAccountLocations$addAccountLocations(
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
    if (other is! Mutation$AddAccountLocations$addAccountLocations ||
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

extension UtilityExtension$Mutation$AddAccountLocations$addAccountLocations
    on Mutation$AddAccountLocations$addAccountLocations {
  CopyWith$Mutation$AddAccountLocations$addAccountLocations<
    Mutation$AddAccountLocations$addAccountLocations
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountLocations$addAccountLocations(this, (i) => i);

  _T when<_T>({
    required _T Function(
      Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError,
    )
    accountLocationError,
    required _T Function(
      Mutation$AddAccountLocations$addAccountLocations$$Account,
    )
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountLocationError":
        return accountLocationError(
          this
              as Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError,
        );

      case "Account":
        return account(
          this as Mutation$AddAccountLocations$addAccountLocations$$Account,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError,
    )?
    accountLocationError,
    _T Function(Mutation$AddAccountLocations$addAccountLocations$$Account)?
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountLocationError":
        if (accountLocationError != null) {
          return accountLocationError(
            this
                as Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this as Mutation$AddAccountLocations$addAccountLocations$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$AddAccountLocations$addAccountLocations<TRes> {
  factory CopyWith$Mutation$AddAccountLocations$addAccountLocations(
    Mutation$AddAccountLocations$addAccountLocations instance,
    TRes Function(Mutation$AddAccountLocations$addAccountLocations) then,
  ) = _CopyWithImpl$Mutation$AddAccountLocations$addAccountLocations;

  factory CopyWith$Mutation$AddAccountLocations$addAccountLocations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountLocations$addAccountLocations;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountLocations$addAccountLocations<TRes>
    implements CopyWith$Mutation$AddAccountLocations$addAccountLocations<TRes> {
  _CopyWithImpl$Mutation$AddAccountLocations$addAccountLocations(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountLocations$addAccountLocations _instance;

  final TRes Function(Mutation$AddAccountLocations$addAccountLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$AddAccountLocations$addAccountLocations(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddAccountLocations$addAccountLocations<TRes>
    implements CopyWith$Mutation$AddAccountLocations$addAccountLocations<TRes> {
  _CopyWithStubImpl$Mutation$AddAccountLocations$addAccountLocations(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError
    implements Mutation$AddAccountLocations$addAccountLocations {
  Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError({
    required this.message,
    this.$__typename = 'AccountLocationError',
  });

  factory Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError(
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
            is! Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError ||
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

extension UtilityExtension$Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError
    on Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError {
  CopyWith$Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError<
    Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError<
  TRes
> {
  factory CopyWith$Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError(
    Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError
    instance,
    TRes Function(
      Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError;

  factory CopyWith$Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError<
          TRes
        > {
  _CopyWithImpl$Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError
  _instance;

  final TRes Function(
    Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddAccountLocations$addAccountLocations$$AccountLocationError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$AddAccountLocations$addAccountLocations$$Account
    implements Mutation$AddAccountLocations$addAccountLocations {
  Mutation$AddAccountLocations$addAccountLocations$$Account({
    required this.name,
    this.$__typename = 'Account',
  });

  factory Mutation$AddAccountLocations$addAccountLocations$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountLocations$addAccountLocations$$Account(
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
    if (other is! Mutation$AddAccountLocations$addAccountLocations$$Account ||
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

extension UtilityExtension$Mutation$AddAccountLocations$addAccountLocations$$Account
    on Mutation$AddAccountLocations$addAccountLocations$$Account {
  CopyWith$Mutation$AddAccountLocations$addAccountLocations$$Account<
    Mutation$AddAccountLocations$addAccountLocations$$Account
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountLocations$addAccountLocations$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddAccountLocations$addAccountLocations$$Account<
  TRes
> {
  factory CopyWith$Mutation$AddAccountLocations$addAccountLocations$$Account(
    Mutation$AddAccountLocations$addAccountLocations$$Account instance,
    TRes Function(Mutation$AddAccountLocations$addAccountLocations$$Account)
    then,
  ) = _CopyWithImpl$Mutation$AddAccountLocations$addAccountLocations$$Account;

  factory CopyWith$Mutation$AddAccountLocations$addAccountLocations$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountLocations$addAccountLocations$$Account;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountLocations$addAccountLocations$$Account<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLocations$addAccountLocations$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$AddAccountLocations$addAccountLocations$$Account(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountLocations$addAccountLocations$$Account _instance;

  final TRes Function(Mutation$AddAccountLocations$addAccountLocations$$Account)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$AddAccountLocations$addAccountLocations$$Account(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$AddAccountLocations$addAccountLocations$$Account<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLocations$addAccountLocations$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddAccountLocations$addAccountLocations$$Account(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
