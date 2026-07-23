import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateAccountLicenseExemption {
  factory Variables$Mutation$UpdateAccountLicenseExemption({
    required Input$UpdateAccountLicenseExemptionInput input,
  }) => Variables$Mutation$UpdateAccountLicenseExemption._({r'input': input});

  Variables$Mutation$UpdateAccountLicenseExemption._(this._$data);

  factory Variables$Mutation$UpdateAccountLicenseExemption.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateAccountLicenseExemptionInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateAccountLicenseExemption._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateAccountLicenseExemptionInput get input =>
      (_$data['input'] as Input$UpdateAccountLicenseExemptionInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAccountLicenseExemption<
    Variables$Mutation$UpdateAccountLicenseExemption
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateAccountLicenseExemption(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateAccountLicenseExemption ||
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

abstract class CopyWith$Variables$Mutation$UpdateAccountLicenseExemption<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAccountLicenseExemption(
    Variables$Mutation$UpdateAccountLicenseExemption instance,
    TRes Function(Variables$Mutation$UpdateAccountLicenseExemption) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAccountLicenseExemption;

  factory CopyWith$Variables$Mutation$UpdateAccountLicenseExemption.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$UpdateAccountLicenseExemption;

  TRes call({Input$UpdateAccountLicenseExemptionInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateAccountLicenseExemption<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountLicenseExemption<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAccountLicenseExemption(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAccountLicenseExemption _instance;

  final TRes Function(Variables$Mutation$UpdateAccountLicenseExemption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateAccountLicenseExemption._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateAccountLicenseExemptionInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAccountLicenseExemption<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountLicenseExemption<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAccountLicenseExemption(this._res);

  TRes _res;

  call({Input$UpdateAccountLicenseExemptionInput? input}) => _res;
}

class Mutation$UpdateAccountLicenseExemption {
  Mutation$UpdateAccountLicenseExemption({
    this.updateAccountLicenseExemption,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAccountLicenseExemption.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updateAccountLicenseExemption =
        json['updateAccountLicenseExemption'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountLicenseExemption(
      updateAccountLicenseExemption: l$updateAccountLicenseExemption == null
          ? null
          : Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption.fromJson(
              (l$updateAccountLicenseExemption as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption?
  updateAccountLicenseExemption;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAccountLicenseExemption = updateAccountLicenseExemption;
    _resultData['updateAccountLicenseExemption'] =
        l$updateAccountLicenseExemption?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAccountLicenseExemption = updateAccountLicenseExemption;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateAccountLicenseExemption, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccountLicenseExemption ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAccountLicenseExemption = updateAccountLicenseExemption;
    final lOther$updateAccountLicenseExemption =
        other.updateAccountLicenseExemption;
    if (l$updateAccountLicenseExemption !=
        lOther$updateAccountLicenseExemption) {
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

extension UtilityExtension$Mutation$UpdateAccountLicenseExemption
    on Mutation$UpdateAccountLicenseExemption {
  CopyWith$Mutation$UpdateAccountLicenseExemption<
    Mutation$UpdateAccountLicenseExemption
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountLicenseExemption(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateAccountLicenseExemption<TRes> {
  factory CopyWith$Mutation$UpdateAccountLicenseExemption(
    Mutation$UpdateAccountLicenseExemption instance,
    TRes Function(Mutation$UpdateAccountLicenseExemption) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountLicenseExemption;

  factory CopyWith$Mutation$UpdateAccountLicenseExemption.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccountLicenseExemption;

  TRes call({
    Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption?
    updateAccountLicenseExemption,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption<
    TRes
  >
  get updateAccountLicenseExemption;
}

class _CopyWithImpl$Mutation$UpdateAccountLicenseExemption<TRes>
    implements CopyWith$Mutation$UpdateAccountLicenseExemption<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountLicenseExemption(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountLicenseExemption _instance;

  final TRes Function(Mutation$UpdateAccountLicenseExemption) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAccountLicenseExemption = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountLicenseExemption(
      updateAccountLicenseExemption: updateAccountLicenseExemption == _undefined
          ? _instance.updateAccountLicenseExemption
          : (updateAccountLicenseExemption
                as Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption<
    TRes
  >
  get updateAccountLicenseExemption {
    final local$updateAccountLicenseExemption =
        _instance.updateAccountLicenseExemption;
    return local$updateAccountLicenseExemption == null
        ? CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption(
            local$updateAccountLicenseExemption,
            (e) => call(updateAccountLicenseExemption: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccountLicenseExemption<TRes>
    implements CopyWith$Mutation$UpdateAccountLicenseExemption<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountLicenseExemption(this._res);

  TRes _res;

  call({
    Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption?
    updateAccountLicenseExemption,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption<
    TRes
  >
  get updateAccountLicenseExemption =>
      CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption.stub(
        _res,
      );
}

const documentNodeMutationUpdateAccountLicenseExemption = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateAccountLicenseExemption'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateAccountLicenseExemptionInput'),
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
            name: NameNode(value: 'updateAccountLicenseExemption'),
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
                        name: NameNode(value: 'id'),
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
                      name: NameNode(value: 'AccountLicenseExemptionError'),
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

class Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption {
  Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption({
    required this.$__typename,
  });

  factory Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "Account":
        return Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account.fromJson(
          json,
        );

      case "AccountLicenseExemptionError":
        return Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption(
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
            is! Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption ||
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

extension UtilityExtension$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption
    on Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption {
  CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption<
    Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account,
    )
    account,
    required _T Function(
      Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError,
    )
    accountLicenseExemptionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        return account(
          this
              as Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account,
        );

      case "AccountLicenseExemptionError":
        return accountLicenseExemptionError(
          this
              as Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account,
    )?
    account,
    _T Function(
      Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError,
    )?
    accountLicenseExemptionError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account,
          );
        } else {
          return orElse();
        }

      case "AccountLicenseExemptionError":
        if (accountLicenseExemptionError != null) {
          return accountLicenseExemptionError(
            this
                as Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption(
    Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption
    instance,
    TRes Function(
      Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption;

  factory CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption
  _instance;

  final TRes Function(
    Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account
    implements
        Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption {
  Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account({
    required this.id,
    this.$__typename = 'Account',
  });

  factory Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account
    on Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account {
  CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account<
    Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account(
    Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account
    instance,
    TRes Function(
      Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account;

  factory CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account
  _instance;

  final TRes Function(
    Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$Account(
    this._res,
  );

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}

class Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError
    implements
        Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption {
  Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError({
    required this.message,
    this.$__typename = 'AccountLicenseExemptionError',
  });

  factory Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError(
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
            is! Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError ||
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

extension UtilityExtension$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError
    on
        Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError {
  CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError<
    Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError(
    Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError
    instance,
    TRes Function(
      Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError;

  factory CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError
  _instance;

  final TRes Function(
    Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountLicenseExemption$updateAccountLicenseExemption$$AccountLicenseExemptionError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
