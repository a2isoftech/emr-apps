import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdatePaymentDetailsInternal {
  factory Variables$Mutation$UpdatePaymentDetailsInternal({
    required String accountNumber,
    Input$UpdatePaymentDetailsInput? input,
  }) => Variables$Mutation$UpdatePaymentDetailsInternal._({
    r'accountNumber': accountNumber,
    if (input != null) r'input': input,
  });

  Variables$Mutation$UpdatePaymentDetailsInternal._(this._$data);

  factory Variables$Mutation$UpdatePaymentDetailsInternal.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accountNumber = data['accountNumber'];
    result$data['accountNumber'] = (l$accountNumber as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$UpdatePaymentDetailsInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables$Mutation$UpdatePaymentDetailsInternal._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accountNumber => (_$data['accountNumber'] as String);

  Input$UpdatePaymentDetailsInput? get input =>
      (_$data['input'] as Input$UpdatePaymentDetailsInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    result$data['accountNumber'] = l$accountNumber;
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdatePaymentDetailsInternal<
    Variables$Mutation$UpdatePaymentDetailsInternal
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdatePaymentDetailsInternal(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdatePaymentDetailsInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$input = input;
    return Object.hashAll([
      l$accountNumber,
      _$data.containsKey('input') ? l$input : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdatePaymentDetailsInternal<TRes> {
  factory CopyWith$Variables$Mutation$UpdatePaymentDetailsInternal(
    Variables$Mutation$UpdatePaymentDetailsInternal instance,
    TRes Function(Variables$Mutation$UpdatePaymentDetailsInternal) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdatePaymentDetailsInternal;

  factory CopyWith$Variables$Mutation$UpdatePaymentDetailsInternal.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$UpdatePaymentDetailsInternal;

  TRes call({String? accountNumber, Input$UpdatePaymentDetailsInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdatePaymentDetailsInternal<TRes>
    implements CopyWith$Variables$Mutation$UpdatePaymentDetailsInternal<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdatePaymentDetailsInternal(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdatePaymentDetailsInternal _instance;

  final TRes Function(Variables$Mutation$UpdatePaymentDetailsInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accountNumber = _undefined, Object? input = _undefined}) =>
      _then(
        Variables$Mutation$UpdatePaymentDetailsInternal._({
          ..._instance._$data,
          if (accountNumber != _undefined && accountNumber != null)
            'accountNumber': (accountNumber as String),
          if (input != _undefined)
            'input': (input as Input$UpdatePaymentDetailsInput?),
        }),
      );
}

class _CopyWithStubImpl$Variables$Mutation$UpdatePaymentDetailsInternal<TRes>
    implements CopyWith$Variables$Mutation$UpdatePaymentDetailsInternal<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdatePaymentDetailsInternal(this._res);

  TRes _res;

  call({String? accountNumber, Input$UpdatePaymentDetailsInput? input}) => _res;
}

class Mutation$UpdatePaymentDetailsInternal {
  Mutation$UpdatePaymentDetailsInternal({
    this.updatePaymentDetailsInternal,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdatePaymentDetailsInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updatePaymentDetailsInternal = json['updatePaymentDetailsInternal'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePaymentDetailsInternal(
      updatePaymentDetailsInternal: l$updatePaymentDetailsInternal == null
          ? null
          : Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal.fromJson(
              (l$updatePaymentDetailsInternal as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal?
  updatePaymentDetailsInternal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePaymentDetailsInternal = updatePaymentDetailsInternal;
    _resultData['updatePaymentDetailsInternal'] = l$updatePaymentDetailsInternal
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePaymentDetailsInternal = updatePaymentDetailsInternal;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updatePaymentDetailsInternal, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdatePaymentDetailsInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePaymentDetailsInternal = updatePaymentDetailsInternal;
    final lOther$updatePaymentDetailsInternal =
        other.updatePaymentDetailsInternal;
    if (l$updatePaymentDetailsInternal != lOther$updatePaymentDetailsInternal) {
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

extension UtilityExtension$Mutation$UpdatePaymentDetailsInternal
    on Mutation$UpdatePaymentDetailsInternal {
  CopyWith$Mutation$UpdatePaymentDetailsInternal<
    Mutation$UpdatePaymentDetailsInternal
  >
  get copyWith =>
      CopyWith$Mutation$UpdatePaymentDetailsInternal(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdatePaymentDetailsInternal<TRes> {
  factory CopyWith$Mutation$UpdatePaymentDetailsInternal(
    Mutation$UpdatePaymentDetailsInternal instance,
    TRes Function(Mutation$UpdatePaymentDetailsInternal) then,
  ) = _CopyWithImpl$Mutation$UpdatePaymentDetailsInternal;

  factory CopyWith$Mutation$UpdatePaymentDetailsInternal.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePaymentDetailsInternal;

  TRes call({
    Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal?
    updatePaymentDetailsInternal,
    String? $__typename,
  });
  CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal<
    TRes
  >
  get updatePaymentDetailsInternal;
}

class _CopyWithImpl$Mutation$UpdatePaymentDetailsInternal<TRes>
    implements CopyWith$Mutation$UpdatePaymentDetailsInternal<TRes> {
  _CopyWithImpl$Mutation$UpdatePaymentDetailsInternal(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePaymentDetailsInternal _instance;

  final TRes Function(Mutation$UpdatePaymentDetailsInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatePaymentDetailsInternal = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdatePaymentDetailsInternal(
      updatePaymentDetailsInternal: updatePaymentDetailsInternal == _undefined
          ? _instance.updatePaymentDetailsInternal
          : (updatePaymentDetailsInternal
                as Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal<
    TRes
  >
  get updatePaymentDetailsInternal {
    final local$updatePaymentDetailsInternal =
        _instance.updatePaymentDetailsInternal;
    return local$updatePaymentDetailsInternal == null
        ? CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal(
            local$updatePaymentDetailsInternal,
            (e) => call(updatePaymentDetailsInternal: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdatePaymentDetailsInternal<TRes>
    implements CopyWith$Mutation$UpdatePaymentDetailsInternal<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePaymentDetailsInternal(this._res);

  TRes _res;

  call({
    Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal?
    updatePaymentDetailsInternal,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal<
    TRes
  >
  get updatePaymentDetailsInternal =>
      CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal.stub(
        _res,
      );
}

const documentNodeMutationUpdatePaymentDetailsInternal = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdatePaymentDetailsInternal'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accountNumber')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdatePaymentDetailsInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updatePaymentDetailsInternal'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accountNumber'),
                value: VariableNode(name: NameNode(value: 'accountNumber')),
              ),
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'accountNumber'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'errors'),
                  alias: null,
                  arguments: [],
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
                        name: NameNode(value: 'code'),
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

class Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal {
  Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal({
    this.accountNumber,
    required this.errors,
    this.$__typename = 'UpdateAccountOutput',
  });

  factory Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal(
      accountNumber: (l$accountNumber as String?),
      errors: (l$errors as List<dynamic>)
          .map(
            (e) =>
                Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accountNumber;

  final List<
    Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors
  >
  errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountNumber,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors.length != lOther$errors.length) {
      return false;
    }
    for (int i = 0; i < l$errors.length; i++) {
      final l$errors$entry = l$errors[i];
      final lOther$errors$entry = lOther$errors[i];
      if (l$errors$entry != lOther$errors$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal
    on Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal {
  CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal<
    Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal
  >
  get copyWith =>
      CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal<
  TRes
> {
  factory CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal(
    Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal instance,
    TRes Function(
      Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal;

  factory CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal;

  TRes call({
    String? accountNumber,
    List<
      Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors
    >?
    errors,
    String? $__typename,
  });
  TRes errors(
    Iterable<
      Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors
    >
    Function(
      Iterable<
        CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors<
          Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal<
  TRes
>
    implements
        CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal
  _instance;

  final TRes Function(
    Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal(
      accountNumber: accountNumber == _undefined
          ? _instance.accountNumber
          : (accountNumber as String?),
      errors: errors == _undefined || errors == null
          ? _instance.errors
          : (errors
                as List<
                  Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes errors(
    Iterable<
      Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors
    >
    Function(
      Iterable<
        CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors<
          Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors
        >
      >,
    )
    _fn,
  ) => call(
    errors: _fn(
      _instance.errors.map(
        (e) =>
            CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal<
  TRes
>
    implements
        CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal(
    this._res,
  );

  TRes _res;

  call({
    String? accountNumber,
    List<
      Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors
    >?
    errors,
    String? $__typename,
  }) => _res;

  errors(_fn) => _res;
}

class Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors {
  Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors({
    required this.message,
    required this.code,
    this.$__typename = 'UserError',
  });

  factory Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors(
      message: (l$message as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors
    on Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors {
  CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors<
    Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors
  >
  get copyWith =>
      CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors<
  TRes
> {
  factory CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors(
    Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors
    instance,
    TRes Function(
      Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors;

  factory CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors;

  TRes call({String? message, String? code, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors<
  TRes
>
    implements
        CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors
  _instance;

  final TRes Function(
    Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors<
  TRes
>
    implements
        CopyWith$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdatePaymentDetailsInternal$updatePaymentDetailsInternal$errors(
    this._res,
  );

  TRes _res;

  call({String? message, String? code, String? $__typename}) => _res;
}
