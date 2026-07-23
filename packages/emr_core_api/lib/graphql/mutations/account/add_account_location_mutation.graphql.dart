import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddAccountLocationMutation {
  factory Variables$Mutation$AddAccountLocationMutation({
    required Input$CreateOrUpdateAccountLocationInput input,
  }) => Variables$Mutation$AddAccountLocationMutation._({r'input': input});

  Variables$Mutation$AddAccountLocationMutation._(this._$data);

  factory Variables$Mutation$AddAccountLocationMutation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateOrUpdateAccountLocationInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$AddAccountLocationMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOrUpdateAccountLocationInput get input =>
      (_$data['input'] as Input$CreateOrUpdateAccountLocationInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddAccountLocationMutation<
    Variables$Mutation$AddAccountLocationMutation
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddAccountLocationMutation(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddAccountLocationMutation ||
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

abstract class CopyWith$Variables$Mutation$AddAccountLocationMutation<TRes> {
  factory CopyWith$Variables$Mutation$AddAccountLocationMutation(
    Variables$Mutation$AddAccountLocationMutation instance,
    TRes Function(Variables$Mutation$AddAccountLocationMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$AddAccountLocationMutation;

  factory CopyWith$Variables$Mutation$AddAccountLocationMutation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$AddAccountLocationMutation;

  TRes call({Input$CreateOrUpdateAccountLocationInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddAccountLocationMutation<TRes>
    implements CopyWith$Variables$Mutation$AddAccountLocationMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$AddAccountLocationMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddAccountLocationMutation _instance;

  final TRes Function(Variables$Mutation$AddAccountLocationMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$AddAccountLocationMutation._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateOrUpdateAccountLocationInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddAccountLocationMutation<TRes>
    implements CopyWith$Variables$Mutation$AddAccountLocationMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddAccountLocationMutation(this._res);

  TRes _res;

  call({Input$CreateOrUpdateAccountLocationInput? input}) => _res;
}

class Mutation$AddAccountLocationMutation {
  Mutation$AddAccountLocationMutation({
    this.addAccountLocations,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddAccountLocationMutation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$addAccountLocations = json['addAccountLocations'];
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountLocationMutation(
      addAccountLocations: l$addAccountLocations == null
          ? null
          : Mutation$AddAccountLocationMutation$addAccountLocations.fromJson(
              (l$addAccountLocations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddAccountLocationMutation$addAccountLocations?
  addAccountLocations;

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
    if (other is! Mutation$AddAccountLocationMutation ||
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

extension UtilityExtension$Mutation$AddAccountLocationMutation
    on Mutation$AddAccountLocationMutation {
  CopyWith$Mutation$AddAccountLocationMutation<
    Mutation$AddAccountLocationMutation
  >
  get copyWith => CopyWith$Mutation$AddAccountLocationMutation(this, (i) => i);
}

abstract class CopyWith$Mutation$AddAccountLocationMutation<TRes> {
  factory CopyWith$Mutation$AddAccountLocationMutation(
    Mutation$AddAccountLocationMutation instance,
    TRes Function(Mutation$AddAccountLocationMutation) then,
  ) = _CopyWithImpl$Mutation$AddAccountLocationMutation;

  factory CopyWith$Mutation$AddAccountLocationMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddAccountLocationMutation;

  TRes call({
    Mutation$AddAccountLocationMutation$addAccountLocations?
    addAccountLocations,
    String? $__typename,
  });
  CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations<TRes>
  get addAccountLocations;
}

class _CopyWithImpl$Mutation$AddAccountLocationMutation<TRes>
    implements CopyWith$Mutation$AddAccountLocationMutation<TRes> {
  _CopyWithImpl$Mutation$AddAccountLocationMutation(this._instance, this._then);

  final Mutation$AddAccountLocationMutation _instance;

  final TRes Function(Mutation$AddAccountLocationMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addAccountLocations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddAccountLocationMutation(
      addAccountLocations: addAccountLocations == _undefined
          ? _instance.addAccountLocations
          : (addAccountLocations
                as Mutation$AddAccountLocationMutation$addAccountLocations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations<TRes>
  get addAccountLocations {
    final local$addAccountLocations = _instance.addAccountLocations;
    return local$addAccountLocations == null
        ? CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations(
            local$addAccountLocations,
            (e) => call(addAccountLocations: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$AddAccountLocationMutation<TRes>
    implements CopyWith$Mutation$AddAccountLocationMutation<TRes> {
  _CopyWithStubImpl$Mutation$AddAccountLocationMutation(this._res);

  TRes _res;

  call({
    Mutation$AddAccountLocationMutation$addAccountLocations?
    addAccountLocations,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations<TRes>
  get addAccountLocations =>
      CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations.stub(
        _res,
      );
}

const documentNodeMutationAddAccountLocationMutation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddAccountLocationMutation'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
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
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
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

class Mutation$AddAccountLocationMutation$addAccountLocations {
  Mutation$AddAccountLocationMutation$addAccountLocations({
    required this.$__typename,
  });

  factory Mutation$AddAccountLocationMutation$addAccountLocations.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "Account":
        return Mutation$AddAccountLocationMutation$addAccountLocations$$Account.fromJson(
          json,
        );

      case "AccountLocationError":
        return Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$AddAccountLocationMutation$addAccountLocations(
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
    if (other is! Mutation$AddAccountLocationMutation$addAccountLocations ||
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

extension UtilityExtension$Mutation$AddAccountLocationMutation$addAccountLocations
    on Mutation$AddAccountLocationMutation$addAccountLocations {
  CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations<
    Mutation$AddAccountLocationMutation$addAccountLocations
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$AddAccountLocationMutation$addAccountLocations$$Account,
    )
    account,
    required _T Function(
      Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError,
    )
    accountLocationError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        return account(
          this
              as Mutation$AddAccountLocationMutation$addAccountLocations$$Account,
        );

      case "AccountLocationError":
        return accountLocationError(
          this
              as Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$AddAccountLocationMutation$addAccountLocations$$Account,
    )?
    account,
    _T Function(
      Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError,
    )?
    accountLocationError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$AddAccountLocationMutation$addAccountLocations$$Account,
          );
        } else {
          return orElse();
        }

      case "AccountLocationError":
        if (accountLocationError != null) {
          return accountLocationError(
            this
                as Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations<
  TRes
> {
  factory CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations(
    Mutation$AddAccountLocationMutation$addAccountLocations instance,
    TRes Function(Mutation$AddAccountLocationMutation$addAccountLocations) then,
  ) = _CopyWithImpl$Mutation$AddAccountLocationMutation$addAccountLocations;

  factory CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountLocationMutation$addAccountLocations;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountLocationMutation$addAccountLocations<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations<TRes> {
  _CopyWithImpl$Mutation$AddAccountLocationMutation$addAccountLocations(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountLocationMutation$addAccountLocations _instance;

  final TRes Function(Mutation$AddAccountLocationMutation$addAccountLocations)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$AddAccountLocationMutation$addAccountLocations(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddAccountLocationMutation$addAccountLocations<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations<TRes> {
  _CopyWithStubImpl$Mutation$AddAccountLocationMutation$addAccountLocations(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$AddAccountLocationMutation$addAccountLocations$$Account
    implements Mutation$AddAccountLocationMutation$addAccountLocations {
  Mutation$AddAccountLocationMutation$addAccountLocations$$Account({
    this.$__typename = 'Account',
  });

  factory Mutation$AddAccountLocationMutation$addAccountLocations$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountLocationMutation$addAccountLocations$$Account(
      $__typename: (l$$__typename as String),
    );
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
            is! Mutation$AddAccountLocationMutation$addAccountLocations$$Account ||
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

extension UtilityExtension$Mutation$AddAccountLocationMutation$addAccountLocations$$Account
    on Mutation$AddAccountLocationMutation$addAccountLocations$$Account {
  CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations$$Account<
    Mutation$AddAccountLocationMutation$addAccountLocations$$Account
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations$$Account<
  TRes
> {
  factory CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations$$Account(
    Mutation$AddAccountLocationMutation$addAccountLocations$$Account instance,
    TRes Function(
      Mutation$AddAccountLocationMutation$addAccountLocations$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddAccountLocationMutation$addAccountLocations$$Account;

  factory CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountLocationMutation$addAccountLocations$$Account;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountLocationMutation$addAccountLocations$$Account<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$AddAccountLocationMutation$addAccountLocations$$Account(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountLocationMutation$addAccountLocations$$Account
  _instance;

  final TRes Function(
    Mutation$AddAccountLocationMutation$addAccountLocations$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$AddAccountLocationMutation$addAccountLocations$$Account(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddAccountLocationMutation$addAccountLocations$$Account<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddAccountLocationMutation$addAccountLocations$$Account(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError
    implements Mutation$AddAccountLocationMutation$addAccountLocations {
  Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError({
    this.$__typename = 'AccountLocationError',
  });

  factory Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$$__typename = json['__typename'];
    return Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError(
      $__typename: (l$$__typename as String),
    );
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
            is! Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError ||
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

extension UtilityExtension$Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError
    on Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError {
  CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError<
    Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError
  >
  get copyWith =>
      CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError<
  TRes
> {
  factory CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError(
    Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError
    instance,
    TRes Function(
      Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError,
    )
    then,
  ) = _CopyWithImpl$Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError;

  factory CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError<
          TRes
        > {
  _CopyWithImpl$Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError(
    this._instance,
    this._then,
  );

  final Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError
  _instance;

  final TRes Function(
    Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError<
  TRes
>
    implements
        CopyWith$Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddAccountLocationMutation$addAccountLocations$$AccountLocationError(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}
