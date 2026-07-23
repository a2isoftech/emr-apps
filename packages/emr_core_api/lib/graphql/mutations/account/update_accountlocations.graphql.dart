import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateAccountLocations {
  factory Variables$Mutation$UpdateAccountLocations({
    required Input$CreateOrUpdateAccountLocationInput
    updateAccountLocationInput,
  }) => Variables$Mutation$UpdateAccountLocations._({
    r'updateAccountLocationInput': updateAccountLocationInput,
  });

  Variables$Mutation$UpdateAccountLocations._(this._$data);

  factory Variables$Mutation$UpdateAccountLocations.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$updateAccountLocationInput = data['updateAccountLocationInput'];
    result$data['updateAccountLocationInput'] =
        Input$CreateOrUpdateAccountLocationInput.fromJson(
          (l$updateAccountLocationInput as Map<String, dynamic>),
        );
    return Variables$Mutation$UpdateAccountLocations._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOrUpdateAccountLocationInput get updateAccountLocationInput =>
      (_$data['updateAccountLocationInput']
          as Input$CreateOrUpdateAccountLocationInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$updateAccountLocationInput = updateAccountLocationInput;
    result$data['updateAccountLocationInput'] = l$updateAccountLocationInput
        .toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAccountLocations<
    Variables$Mutation$UpdateAccountLocations
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateAccountLocations(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateAccountLocations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAccountLocationInput = updateAccountLocationInput;
    final lOther$updateAccountLocationInput = other.updateAccountLocationInput;
    if (l$updateAccountLocationInput != lOther$updateAccountLocationInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$updateAccountLocationInput = updateAccountLocationInput;
    return Object.hashAll([l$updateAccountLocationInput]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateAccountLocations<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAccountLocations(
    Variables$Mutation$UpdateAccountLocations instance,
    TRes Function(Variables$Mutation$UpdateAccountLocations) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAccountLocations;

  factory CopyWith$Variables$Mutation$UpdateAccountLocations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAccountLocations;

  TRes call({
    Input$CreateOrUpdateAccountLocationInput? updateAccountLocationInput,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateAccountLocations<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountLocations<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAccountLocations(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAccountLocations _instance;

  final TRes Function(Variables$Mutation$UpdateAccountLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateAccountLocationInput = _undefined}) => _then(
    Variables$Mutation$UpdateAccountLocations._({
      ..._instance._$data,
      if (updateAccountLocationInput != _undefined &&
          updateAccountLocationInput != null)
        'updateAccountLocationInput':
            (updateAccountLocationInput
                as Input$CreateOrUpdateAccountLocationInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAccountLocations<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountLocations<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAccountLocations(this._res);

  TRes _res;

  call({
    Input$CreateOrUpdateAccountLocationInput? updateAccountLocationInput,
  }) => _res;
}

class Mutation$UpdateAccountLocations {
  Mutation$UpdateAccountLocations({
    this.updateAccountLocations,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAccountLocations.fromJson(Map<String, dynamic> json) {
    final l$updateAccountLocations = json['updateAccountLocations'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountLocations(
      updateAccountLocations: l$updateAccountLocations == null
          ? null
          : Mutation$UpdateAccountLocations$updateAccountLocations.fromJson(
              (l$updateAccountLocations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAccountLocations$updateAccountLocations?
  updateAccountLocations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAccountLocations = updateAccountLocations;
    _resultData['updateAccountLocations'] = l$updateAccountLocations?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAccountLocations = updateAccountLocations;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateAccountLocations, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccountLocations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAccountLocations = updateAccountLocations;
    final lOther$updateAccountLocations = other.updateAccountLocations;
    if (l$updateAccountLocations != lOther$updateAccountLocations) {
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

extension UtilityExtension$Mutation$UpdateAccountLocations
    on Mutation$UpdateAccountLocations {
  CopyWith$Mutation$UpdateAccountLocations<Mutation$UpdateAccountLocations>
  get copyWith => CopyWith$Mutation$UpdateAccountLocations(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateAccountLocations<TRes> {
  factory CopyWith$Mutation$UpdateAccountLocations(
    Mutation$UpdateAccountLocations instance,
    TRes Function(Mutation$UpdateAccountLocations) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountLocations;

  factory CopyWith$Mutation$UpdateAccountLocations.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccountLocations;

  TRes call({
    Mutation$UpdateAccountLocations$updateAccountLocations?
    updateAccountLocations,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations<TRes>
  get updateAccountLocations;
}

class _CopyWithImpl$Mutation$UpdateAccountLocations<TRes>
    implements CopyWith$Mutation$UpdateAccountLocations<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountLocations(this._instance, this._then);

  final Mutation$UpdateAccountLocations _instance;

  final TRes Function(Mutation$UpdateAccountLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAccountLocations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountLocations(
      updateAccountLocations: updateAccountLocations == _undefined
          ? _instance.updateAccountLocations
          : (updateAccountLocations
                as Mutation$UpdateAccountLocations$updateAccountLocations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations<TRes>
  get updateAccountLocations {
    final local$updateAccountLocations = _instance.updateAccountLocations;
    return local$updateAccountLocations == null
        ? CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations(
            local$updateAccountLocations,
            (e) => call(updateAccountLocations: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccountLocations<TRes>
    implements CopyWith$Mutation$UpdateAccountLocations<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountLocations(this._res);

  TRes _res;

  call({
    Mutation$UpdateAccountLocations$updateAccountLocations?
    updateAccountLocations,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations<TRes>
  get updateAccountLocations =>
      CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations.stub(
        _res,
      );
}

const documentNodeMutationUpdateAccountLocations = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateAccountLocations'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'updateAccountLocationInput'),
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
            name: NameNode(value: 'updateAccountLocations'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'updateAccountLocationInput'),
                value: VariableNode(
                  name: NameNode(value: 'updateAccountLocationInput'),
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

class Mutation$UpdateAccountLocations$updateAccountLocations {
  Mutation$UpdateAccountLocations$updateAccountLocations({
    required this.$__typename,
  });

  factory Mutation$UpdateAccountLocations$updateAccountLocations.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountLocationError":
        return Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError.fromJson(
          json,
        );

      case "Account":
        return Mutation$UpdateAccountLocations$updateAccountLocations$$Account.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateAccountLocations$updateAccountLocations(
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
    if (other is! Mutation$UpdateAccountLocations$updateAccountLocations ||
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

extension UtilityExtension$Mutation$UpdateAccountLocations$updateAccountLocations
    on Mutation$UpdateAccountLocations$updateAccountLocations {
  CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations<
    Mutation$UpdateAccountLocations$updateAccountLocations
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError,
    )
    accountLocationError,
    required _T Function(
      Mutation$UpdateAccountLocations$updateAccountLocations$$Account,
    )
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountLocationError":
        return accountLocationError(
          this
              as Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError,
        );

      case "Account":
        return account(
          this
              as Mutation$UpdateAccountLocations$updateAccountLocations$$Account,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError,
    )?
    accountLocationError,
    _T Function(
      Mutation$UpdateAccountLocations$updateAccountLocations$$Account,
    )?
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountLocationError":
        if (accountLocationError != null) {
          return accountLocationError(
            this
                as Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$UpdateAccountLocations$updateAccountLocations$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations(
    Mutation$UpdateAccountLocations$updateAccountLocations instance,
    TRes Function(Mutation$UpdateAccountLocations$updateAccountLocations) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountLocations$updateAccountLocations;

  factory CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountLocations$updateAccountLocations;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountLocations$updateAccountLocations<TRes>
    implements
        CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountLocations$updateAccountLocations(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountLocations$updateAccountLocations _instance;

  final TRes Function(Mutation$UpdateAccountLocations$updateAccountLocations)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateAccountLocations$updateAccountLocations(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountLocations$updateAccountLocations<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountLocations$updateAccountLocations(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError
    implements Mutation$UpdateAccountLocations$updateAccountLocations {
  Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError({
    required this.message,
    this.$__typename = 'AccountLocationError',
  });

  factory Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError(
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
            is! Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError ||
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

extension UtilityExtension$Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError
    on Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError {
  CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError<
    Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError(
    Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError
    instance,
    TRes Function(
      Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError;

  factory CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError
  _instance;

  final TRes Function(
    Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountLocations$updateAccountLocations$$AccountLocationError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$UpdateAccountLocations$updateAccountLocations$$Account
    implements Mutation$UpdateAccountLocations$updateAccountLocations {
  Mutation$UpdateAccountLocations$updateAccountLocations$$Account({
    required this.name,
    this.$__typename = 'Account',
  });

  factory Mutation$UpdateAccountLocations$updateAccountLocations$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountLocations$updateAccountLocations$$Account(
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
            is! Mutation$UpdateAccountLocations$updateAccountLocations$$Account ||
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

extension UtilityExtension$Mutation$UpdateAccountLocations$updateAccountLocations$$Account
    on Mutation$UpdateAccountLocations$updateAccountLocations$$Account {
  CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations$$Account<
    Mutation$UpdateAccountLocations$updateAccountLocations$$Account
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations$$Account<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations$$Account(
    Mutation$UpdateAccountLocations$updateAccountLocations$$Account instance,
    TRes Function(
      Mutation$UpdateAccountLocations$updateAccountLocations$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountLocations$updateAccountLocations$$Account;

  factory CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountLocations$updateAccountLocations$$Account;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountLocations$updateAccountLocations$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountLocations$updateAccountLocations$$Account(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountLocations$updateAccountLocations$$Account
  _instance;

  final TRes Function(
    Mutation$UpdateAccountLocations$updateAccountLocations$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateAccountLocations$updateAccountLocations$$Account(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateAccountLocations$updateAccountLocations$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountLocations$updateAccountLocations$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountLocations$updateAccountLocations$$Account(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
