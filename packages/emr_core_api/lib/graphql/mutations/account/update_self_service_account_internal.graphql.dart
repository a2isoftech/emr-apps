import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateSelfServeAccountInternal {
  factory Variables$Mutation$UpdateSelfServeAccountInternal({
    required String accountNumber,
    Input$UpdateSelfServeAccountInput? input,
  }) => Variables$Mutation$UpdateSelfServeAccountInternal._({
    r'accountNumber': accountNumber,
    if (input != null) r'input': input,
  });

  Variables$Mutation$UpdateSelfServeAccountInternal._(this._$data);

  factory Variables$Mutation$UpdateSelfServeAccountInternal.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accountNumber = data['accountNumber'];
    result$data['accountNumber'] = (l$accountNumber as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$UpdateSelfServeAccountInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables$Mutation$UpdateSelfServeAccountInternal._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accountNumber => (_$data['accountNumber'] as String);

  Input$UpdateSelfServeAccountInput? get input =>
      (_$data['input'] as Input$UpdateSelfServeAccountInput?);

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

  CopyWith$Variables$Mutation$UpdateSelfServeAccountInternal<
    Variables$Mutation$UpdateSelfServeAccountInternal
  >
  get copyWith => CopyWith$Variables$Mutation$UpdateSelfServeAccountInternal(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateSelfServeAccountInternal ||
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

abstract class CopyWith$Variables$Mutation$UpdateSelfServeAccountInternal<
  TRes
> {
  factory CopyWith$Variables$Mutation$UpdateSelfServeAccountInternal(
    Variables$Mutation$UpdateSelfServeAccountInternal instance,
    TRes Function(Variables$Mutation$UpdateSelfServeAccountInternal) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateSelfServeAccountInternal;

  factory CopyWith$Variables$Mutation$UpdateSelfServeAccountInternal.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$UpdateSelfServeAccountInternal;

  TRes call({String? accountNumber, Input$UpdateSelfServeAccountInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateSelfServeAccountInternal<TRes>
    implements
        CopyWith$Variables$Mutation$UpdateSelfServeAccountInternal<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateSelfServeAccountInternal(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateSelfServeAccountInternal _instance;

  final TRes Function(Variables$Mutation$UpdateSelfServeAccountInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accountNumber = _undefined, Object? input = _undefined}) =>
      _then(
        Variables$Mutation$UpdateSelfServeAccountInternal._({
          ..._instance._$data,
          if (accountNumber != _undefined && accountNumber != null)
            'accountNumber': (accountNumber as String),
          if (input != _undefined)
            'input': (input as Input$UpdateSelfServeAccountInput?),
        }),
      );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateSelfServeAccountInternal<TRes>
    implements
        CopyWith$Variables$Mutation$UpdateSelfServeAccountInternal<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateSelfServeAccountInternal(
    this._res,
  );

  TRes _res;

  call({String? accountNumber, Input$UpdateSelfServeAccountInput? input}) =>
      _res;
}

class Mutation$UpdateSelfServeAccountInternal {
  Mutation$UpdateSelfServeAccountInternal({
    required this.updateSelfServeAccountInternal,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateSelfServeAccountInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updateSelfServeAccountInternal =
        json['updateSelfServeAccountInternal'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateSelfServeAccountInternal(
      updateSelfServeAccountInternal:
          Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal.fromJson(
            (l$updateSelfServeAccountInternal as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal
  updateSelfServeAccountInternal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateSelfServeAccountInternal = updateSelfServeAccountInternal;
    _resultData['updateSelfServeAccountInternal'] =
        l$updateSelfServeAccountInternal.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateSelfServeAccountInternal = updateSelfServeAccountInternal;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateSelfServeAccountInternal, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateSelfServeAccountInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateSelfServeAccountInternal = updateSelfServeAccountInternal;
    final lOther$updateSelfServeAccountInternal =
        other.updateSelfServeAccountInternal;
    if (l$updateSelfServeAccountInternal !=
        lOther$updateSelfServeAccountInternal) {
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

extension UtilityExtension$Mutation$UpdateSelfServeAccountInternal
    on Mutation$UpdateSelfServeAccountInternal {
  CopyWith$Mutation$UpdateSelfServeAccountInternal<
    Mutation$UpdateSelfServeAccountInternal
  >
  get copyWith =>
      CopyWith$Mutation$UpdateSelfServeAccountInternal(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateSelfServeAccountInternal<TRes> {
  factory CopyWith$Mutation$UpdateSelfServeAccountInternal(
    Mutation$UpdateSelfServeAccountInternal instance,
    TRes Function(Mutation$UpdateSelfServeAccountInternal) then,
  ) = _CopyWithImpl$Mutation$UpdateSelfServeAccountInternal;

  factory CopyWith$Mutation$UpdateSelfServeAccountInternal.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateSelfServeAccountInternal;

  TRes call({
    Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal?
    updateSelfServeAccountInternal,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal<
    TRes
  >
  get updateSelfServeAccountInternal;
}

class _CopyWithImpl$Mutation$UpdateSelfServeAccountInternal<TRes>
    implements CopyWith$Mutation$UpdateSelfServeAccountInternal<TRes> {
  _CopyWithImpl$Mutation$UpdateSelfServeAccountInternal(
    this._instance,
    this._then,
  );

  final Mutation$UpdateSelfServeAccountInternal _instance;

  final TRes Function(Mutation$UpdateSelfServeAccountInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateSelfServeAccountInternal = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateSelfServeAccountInternal(
      updateSelfServeAccountInternal:
          updateSelfServeAccountInternal == _undefined ||
              updateSelfServeAccountInternal == null
          ? _instance.updateSelfServeAccountInternal
          : (updateSelfServeAccountInternal
                as Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal<
    TRes
  >
  get updateSelfServeAccountInternal {
    final local$updateSelfServeAccountInternal =
        _instance.updateSelfServeAccountInternal;
    return CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal(
      local$updateSelfServeAccountInternal,
      (e) => call(updateSelfServeAccountInternal: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateSelfServeAccountInternal<TRes>
    implements CopyWith$Mutation$UpdateSelfServeAccountInternal<TRes> {
  _CopyWithStubImpl$Mutation$UpdateSelfServeAccountInternal(this._res);

  TRes _res;

  call({
    Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal?
    updateSelfServeAccountInternal,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal<
    TRes
  >
  get updateSelfServeAccountInternal =>
      CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal.stub(
        _res,
      );
}

const documentNodeMutationUpdateSelfServeAccountInternal = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateSelfServeAccountInternal'),
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
            name: NameNode(value: 'UpdateSelfServeAccountInput'),
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
            name: NameNode(value: 'updateSelfServeAccountInternal'),
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

class Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal {
  Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal({
    this.accountNumber,
    required this.errors,
    this.$__typename = 'UpdateAccountOutput',
  });

  factory Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal(
      accountNumber: (l$accountNumber as String?),
      errors: (l$errors as List<dynamic>)
          .map(
            (e) =>
                Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accountNumber;

  final List<
    Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors
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
            is! Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal ||
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

extension UtilityExtension$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal
    on Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal {
  CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal<
    Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal
  >
  get copyWith =>
      CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal<
  TRes
> {
  factory CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal(
    Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal
    instance,
    TRes Function(
      Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal;

  factory CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal;

  TRes call({
    String? accountNumber,
    List<
      Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors
    >?
    errors,
    String? $__typename,
  });
  TRes errors(
    Iterable<
      Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors
    >
    Function(
      Iterable<
        CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors<
          Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal<
  TRes
>
    implements
        CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal(
    this._instance,
    this._then,
  );

  final Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal
  _instance;

  final TRes Function(
    Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal(
      accountNumber: accountNumber == _undefined
          ? _instance.accountNumber
          : (accountNumber as String?),
      errors: errors == _undefined || errors == null
          ? _instance.errors
          : (errors
                as List<
                  Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes errors(
    Iterable<
      Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors
    >
    Function(
      Iterable<
        CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors<
          Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors
        >
      >,
    )
    _fn,
  ) => call(
    errors: _fn(
      _instance.errors.map(
        (e) =>
            CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal<
  TRes
>
    implements
        CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal(
    this._res,
  );

  TRes _res;

  call({
    String? accountNumber,
    List<
      Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors
    >?
    errors,
    String? $__typename,
  }) => _res;

  errors(_fn) => _res;
}

class Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors {
  Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors({
    required this.message,
    required this.code,
    this.$__typename = 'UserError',
  });

  factory Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors(
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
            is! Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors ||
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

extension UtilityExtension$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors
    on Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors {
  CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors<
    Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors
  >
  get copyWith =>
      CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors<
  TRes
> {
  factory CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors(
    Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors
    instance,
    TRes Function(
      Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors;

  factory CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors;

  TRes call({String? message, String? code, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors<
  TRes
>
    implements
        CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors(
    this._instance,
    this._then,
  );

  final Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors
  _instance;

  final TRes Function(
    Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors(
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

class _CopyWithStubImpl$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors<
  TRes
>
    implements
        CopyWith$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateSelfServeAccountInternal$updateSelfServeAccountInternal$errors(
    this._res,
  );

  TRes _res;

  call({String? message, String? code, String? $__typename}) => _res;
}
