import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$RemoveAccountLocations {
  factory Variables$Mutation$RemoveAccountLocations({
    required Input$DeleteAccountLocationInput locationInput,
  }) => Variables$Mutation$RemoveAccountLocations._({
    r'locationInput': locationInput,
  });

  Variables$Mutation$RemoveAccountLocations._(this._$data);

  factory Variables$Mutation$RemoveAccountLocations.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$locationInput = data['locationInput'];
    result$data['locationInput'] = Input$DeleteAccountLocationInput.fromJson(
      (l$locationInput as Map<String, dynamic>),
    );
    return Variables$Mutation$RemoveAccountLocations._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DeleteAccountLocationInput get locationInput =>
      (_$data['locationInput'] as Input$DeleteAccountLocationInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$locationInput = locationInput;
    result$data['locationInput'] = l$locationInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$RemoveAccountLocations<
    Variables$Mutation$RemoveAccountLocations
  >
  get copyWith =>
      CopyWith$Variables$Mutation$RemoveAccountLocations(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RemoveAccountLocations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$locationInput = locationInput;
    final lOther$locationInput = other.locationInput;
    if (l$locationInput != lOther$locationInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$locationInput = locationInput;
    return Object.hashAll([l$locationInput]);
  }
}

abstract class CopyWith$Variables$Mutation$RemoveAccountLocations<TRes> {
  factory CopyWith$Variables$Mutation$RemoveAccountLocations(
    Variables$Mutation$RemoveAccountLocations instance,
    TRes Function(Variables$Mutation$RemoveAccountLocations) then,
  ) = _CopyWithImpl$Variables$Mutation$RemoveAccountLocations;

  factory CopyWith$Variables$Mutation$RemoveAccountLocations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RemoveAccountLocations;

  TRes call({Input$DeleteAccountLocationInput? locationInput});
}

class _CopyWithImpl$Variables$Mutation$RemoveAccountLocations<TRes>
    implements CopyWith$Variables$Mutation$RemoveAccountLocations<TRes> {
  _CopyWithImpl$Variables$Mutation$RemoveAccountLocations(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RemoveAccountLocations _instance;

  final TRes Function(Variables$Mutation$RemoveAccountLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? locationInput = _undefined}) => _then(
    Variables$Mutation$RemoveAccountLocations._({
      ..._instance._$data,
      if (locationInput != _undefined && locationInput != null)
        'locationInput': (locationInput as Input$DeleteAccountLocationInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$RemoveAccountLocations<TRes>
    implements CopyWith$Variables$Mutation$RemoveAccountLocations<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RemoveAccountLocations(this._res);

  TRes _res;

  call({Input$DeleteAccountLocationInput? locationInput}) => _res;
}

class Mutation$RemoveAccountLocations {
  Mutation$RemoveAccountLocations({
    this.deleteAccountLocations,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RemoveAccountLocations.fromJson(Map<String, dynamic> json) {
    final l$deleteAccountLocations = json['deleteAccountLocations'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveAccountLocations(
      deleteAccountLocations: l$deleteAccountLocations == null
          ? null
          : Mutation$RemoveAccountLocations$deleteAccountLocations.fromJson(
              (l$deleteAccountLocations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RemoveAccountLocations$deleteAccountLocations?
  deleteAccountLocations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAccountLocations = deleteAccountLocations;
    _resultData['deleteAccountLocations'] = l$deleteAccountLocations?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAccountLocations = deleteAccountLocations;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteAccountLocations, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RemoveAccountLocations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAccountLocations = deleteAccountLocations;
    final lOther$deleteAccountLocations = other.deleteAccountLocations;
    if (l$deleteAccountLocations != lOther$deleteAccountLocations) {
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

extension UtilityExtension$Mutation$RemoveAccountLocations
    on Mutation$RemoveAccountLocations {
  CopyWith$Mutation$RemoveAccountLocations<Mutation$RemoveAccountLocations>
  get copyWith => CopyWith$Mutation$RemoveAccountLocations(this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveAccountLocations<TRes> {
  factory CopyWith$Mutation$RemoveAccountLocations(
    Mutation$RemoveAccountLocations instance,
    TRes Function(Mutation$RemoveAccountLocations) then,
  ) = _CopyWithImpl$Mutation$RemoveAccountLocations;

  factory CopyWith$Mutation$RemoveAccountLocations.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RemoveAccountLocations;

  TRes call({
    Mutation$RemoveAccountLocations$deleteAccountLocations?
    deleteAccountLocations,
    String? $__typename,
  });
  CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations<TRes>
  get deleteAccountLocations;
}

class _CopyWithImpl$Mutation$RemoveAccountLocations<TRes>
    implements CopyWith$Mutation$RemoveAccountLocations<TRes> {
  _CopyWithImpl$Mutation$RemoveAccountLocations(this._instance, this._then);

  final Mutation$RemoveAccountLocations _instance;

  final TRes Function(Mutation$RemoveAccountLocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAccountLocations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$RemoveAccountLocations(
      deleteAccountLocations: deleteAccountLocations == _undefined
          ? _instance.deleteAccountLocations
          : (deleteAccountLocations
                as Mutation$RemoveAccountLocations$deleteAccountLocations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations<TRes>
  get deleteAccountLocations {
    final local$deleteAccountLocations = _instance.deleteAccountLocations;
    return local$deleteAccountLocations == null
        ? CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations(
            local$deleteAccountLocations,
            (e) => call(deleteAccountLocations: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$RemoveAccountLocations<TRes>
    implements CopyWith$Mutation$RemoveAccountLocations<TRes> {
  _CopyWithStubImpl$Mutation$RemoveAccountLocations(this._res);

  TRes _res;

  call({
    Mutation$RemoveAccountLocations$deleteAccountLocations?
    deleteAccountLocations,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations<TRes>
  get deleteAccountLocations =>
      CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations.stub(
        _res,
      );
}

const documentNodeMutationRemoveAccountLocations = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'RemoveAccountLocations'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'locationInput')),
          type: NamedTypeNode(
            name: NameNode(value: 'DeleteAccountLocationInput'),
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
            name: NameNode(value: 'deleteAccountLocations'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'deleteAccountLocationInput'),
                value: VariableNode(name: NameNode(value: 'locationInput')),
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

class Mutation$RemoveAccountLocations$deleteAccountLocations {
  Mutation$RemoveAccountLocations$deleteAccountLocations({
    required this.$__typename,
  });

  factory Mutation$RemoveAccountLocations$deleteAccountLocations.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountLocationError":
        return Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError.fromJson(
          json,
        );

      case "Account":
        return Mutation$RemoveAccountLocations$deleteAccountLocations$$Account.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$RemoveAccountLocations$deleteAccountLocations(
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
    if (other is! Mutation$RemoveAccountLocations$deleteAccountLocations ||
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

extension UtilityExtension$Mutation$RemoveAccountLocations$deleteAccountLocations
    on Mutation$RemoveAccountLocations$deleteAccountLocations {
  CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations<
    Mutation$RemoveAccountLocations$deleteAccountLocations
  >
  get copyWith =>
      CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError,
    )
    accountLocationError,
    required _T Function(
      Mutation$RemoveAccountLocations$deleteAccountLocations$$Account,
    )
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountLocationError":
        return accountLocationError(
          this
              as Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError,
        );

      case "Account":
        return account(
          this
              as Mutation$RemoveAccountLocations$deleteAccountLocations$$Account,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError,
    )?
    accountLocationError,
    _T Function(
      Mutation$RemoveAccountLocations$deleteAccountLocations$$Account,
    )?
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountLocationError":
        if (accountLocationError != null) {
          return accountLocationError(
            this
                as Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$RemoveAccountLocations$deleteAccountLocations$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations<
  TRes
> {
  factory CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations(
    Mutation$RemoveAccountLocations$deleteAccountLocations instance,
    TRes Function(Mutation$RemoveAccountLocations$deleteAccountLocations) then,
  ) = _CopyWithImpl$Mutation$RemoveAccountLocations$deleteAccountLocations;

  factory CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$RemoveAccountLocations$deleteAccountLocations;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveAccountLocations$deleteAccountLocations<TRes>
    implements
        CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations<TRes> {
  _CopyWithImpl$Mutation$RemoveAccountLocations$deleteAccountLocations(
    this._instance,
    this._then,
  );

  final Mutation$RemoveAccountLocations$deleteAccountLocations _instance;

  final TRes Function(Mutation$RemoveAccountLocations$deleteAccountLocations)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$RemoveAccountLocations$deleteAccountLocations(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$RemoveAccountLocations$deleteAccountLocations<
  TRes
>
    implements
        CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations<TRes> {
  _CopyWithStubImpl$Mutation$RemoveAccountLocations$deleteAccountLocations(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError
    implements Mutation$RemoveAccountLocations$deleteAccountLocations {
  Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError({
    required this.message,
    this.$__typename = 'AccountLocationError',
  });

  factory Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError(
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
            is! Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError ||
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

extension UtilityExtension$Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError
    on Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError {
  CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError<
    Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError
  >
  get copyWith =>
      CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError<
  TRes
> {
  factory CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError(
    Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError
    instance,
    TRes Function(
      Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError,
    )
    then,
  ) = _CopyWithImpl$Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError;

  factory CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError<
  TRes
>
    implements
        CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError<
          TRes
        > {
  _CopyWithImpl$Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError(
    this._instance,
    this._then,
  );

  final Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError
  _instance;

  final TRes Function(
    Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError<
  TRes
>
    implements
        CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$RemoveAccountLocations$deleteAccountLocations$$AccountLocationError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$RemoveAccountLocations$deleteAccountLocations$$Account
    implements Mutation$RemoveAccountLocations$deleteAccountLocations {
  Mutation$RemoveAccountLocations$deleteAccountLocations$$Account({
    required this.name,
    this.$__typename = 'Account',
  });

  factory Mutation$RemoveAccountLocations$deleteAccountLocations$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveAccountLocations$deleteAccountLocations$$Account(
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
            is! Mutation$RemoveAccountLocations$deleteAccountLocations$$Account ||
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

extension UtilityExtension$Mutation$RemoveAccountLocations$deleteAccountLocations$$Account
    on Mutation$RemoveAccountLocations$deleteAccountLocations$$Account {
  CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations$$Account<
    Mutation$RemoveAccountLocations$deleteAccountLocations$$Account
  >
  get copyWith =>
      CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations$$Account<
  TRes
> {
  factory CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations$$Account(
    Mutation$RemoveAccountLocations$deleteAccountLocations$$Account instance,
    TRes Function(
      Mutation$RemoveAccountLocations$deleteAccountLocations$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$RemoveAccountLocations$deleteAccountLocations$$Account;

  factory CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$RemoveAccountLocations$deleteAccountLocations$$Account;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveAccountLocations$deleteAccountLocations$$Account<
  TRes
>
    implements
        CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$RemoveAccountLocations$deleteAccountLocations$$Account(
    this._instance,
    this._then,
  );

  final Mutation$RemoveAccountLocations$deleteAccountLocations$$Account
  _instance;

  final TRes Function(
    Mutation$RemoveAccountLocations$deleteAccountLocations$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$RemoveAccountLocations$deleteAccountLocations$$Account(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$RemoveAccountLocations$deleteAccountLocations$$Account<
  TRes
>
    implements
        CopyWith$Mutation$RemoveAccountLocations$deleteAccountLocations$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$RemoveAccountLocations$deleteAccountLocations$$Account(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
