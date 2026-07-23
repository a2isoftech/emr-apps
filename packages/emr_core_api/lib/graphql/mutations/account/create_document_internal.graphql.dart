import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateDocumentInternal {
  factory Variables$Mutation$CreateDocumentInternal({
    required String accountNumber,
    Input$CreateNewDocumentInput? input,
  }) => Variables$Mutation$CreateDocumentInternal._({
    r'accountNumber': accountNumber,
    if (input != null) r'input': input,
  });

  Variables$Mutation$CreateDocumentInternal._(this._$data);

  factory Variables$Mutation$CreateDocumentInternal.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accountNumber = data['accountNumber'];
    result$data['accountNumber'] = (l$accountNumber as String);
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$CreateNewDocumentInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables$Mutation$CreateDocumentInternal._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accountNumber => (_$data['accountNumber'] as String);

  Input$CreateNewDocumentInput? get input =>
      (_$data['input'] as Input$CreateNewDocumentInput?);

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

  CopyWith$Variables$Mutation$CreateDocumentInternal<
    Variables$Mutation$CreateDocumentInternal
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CreateDocumentInternal(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateDocumentInternal ||
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

abstract class CopyWith$Variables$Mutation$CreateDocumentInternal<TRes> {
  factory CopyWith$Variables$Mutation$CreateDocumentInternal(
    Variables$Mutation$CreateDocumentInternal instance,
    TRes Function(Variables$Mutation$CreateDocumentInternal) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateDocumentInternal;

  factory CopyWith$Variables$Mutation$CreateDocumentInternal.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateDocumentInternal;

  TRes call({String? accountNumber, Input$CreateNewDocumentInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateDocumentInternal<TRes>
    implements CopyWith$Variables$Mutation$CreateDocumentInternal<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateDocumentInternal(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateDocumentInternal _instance;

  final TRes Function(Variables$Mutation$CreateDocumentInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accountNumber = _undefined, Object? input = _undefined}) =>
      _then(
        Variables$Mutation$CreateDocumentInternal._({
          ..._instance._$data,
          if (accountNumber != _undefined && accountNumber != null)
            'accountNumber': (accountNumber as String),
          if (input != _undefined)
            'input': (input as Input$CreateNewDocumentInput?),
        }),
      );
}

class _CopyWithStubImpl$Variables$Mutation$CreateDocumentInternal<TRes>
    implements CopyWith$Variables$Mutation$CreateDocumentInternal<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateDocumentInternal(this._res);

  TRes _res;

  call({String? accountNumber, Input$CreateNewDocumentInput? input}) => _res;
}

class Mutation$CreateDocumentInternal {
  Mutation$CreateDocumentInternal({
    this.createDocumentInternal,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateDocumentInternal.fromJson(Map<String, dynamic> json) {
    final l$createDocumentInternal = json['createDocumentInternal'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateDocumentInternal(
      createDocumentInternal: l$createDocumentInternal == null
          ? null
          : Mutation$CreateDocumentInternal$createDocumentInternal.fromJson(
              (l$createDocumentInternal as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateDocumentInternal$createDocumentInternal?
  createDocumentInternal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createDocumentInternal = createDocumentInternal;
    _resultData['createDocumentInternal'] = l$createDocumentInternal?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createDocumentInternal = createDocumentInternal;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createDocumentInternal, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateDocumentInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createDocumentInternal = createDocumentInternal;
    final lOther$createDocumentInternal = other.createDocumentInternal;
    if (l$createDocumentInternal != lOther$createDocumentInternal) {
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

extension UtilityExtension$Mutation$CreateDocumentInternal
    on Mutation$CreateDocumentInternal {
  CopyWith$Mutation$CreateDocumentInternal<Mutation$CreateDocumentInternal>
  get copyWith => CopyWith$Mutation$CreateDocumentInternal(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateDocumentInternal<TRes> {
  factory CopyWith$Mutation$CreateDocumentInternal(
    Mutation$CreateDocumentInternal instance,
    TRes Function(Mutation$CreateDocumentInternal) then,
  ) = _CopyWithImpl$Mutation$CreateDocumentInternal;

  factory CopyWith$Mutation$CreateDocumentInternal.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateDocumentInternal;

  TRes call({
    Mutation$CreateDocumentInternal$createDocumentInternal?
    createDocumentInternal,
    String? $__typename,
  });
  CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal<TRes>
  get createDocumentInternal;
}

class _CopyWithImpl$Mutation$CreateDocumentInternal<TRes>
    implements CopyWith$Mutation$CreateDocumentInternal<TRes> {
  _CopyWithImpl$Mutation$CreateDocumentInternal(this._instance, this._then);

  final Mutation$CreateDocumentInternal _instance;

  final TRes Function(Mutation$CreateDocumentInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createDocumentInternal = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateDocumentInternal(
      createDocumentInternal: createDocumentInternal == _undefined
          ? _instance.createDocumentInternal
          : (createDocumentInternal
                as Mutation$CreateDocumentInternal$createDocumentInternal?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal<TRes>
  get createDocumentInternal {
    final local$createDocumentInternal = _instance.createDocumentInternal;
    return local$createDocumentInternal == null
        ? CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal(
            local$createDocumentInternal,
            (e) => call(createDocumentInternal: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CreateDocumentInternal<TRes>
    implements CopyWith$Mutation$CreateDocumentInternal<TRes> {
  _CopyWithStubImpl$Mutation$CreateDocumentInternal(this._res);

  TRes _res;

  call({
    Mutation$CreateDocumentInternal$createDocumentInternal?
    createDocumentInternal,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal<TRes>
  get createDocumentInternal =>
      CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal.stub(
        _res,
      );
}

const documentNodeMutationCreateDocumentInternal = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateDocumentInternal'),
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
            name: NameNode(value: 'CreateNewDocumentInput'),
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
            name: NameNode(value: 'createDocumentInternal'),
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

class Mutation$CreateDocumentInternal$createDocumentInternal {
  Mutation$CreateDocumentInternal$createDocumentInternal({
    this.accountNumber,
    required this.errors,
    this.$__typename = 'UpdateAccountOutput',
  });

  factory Mutation$CreateDocumentInternal$createDocumentInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateDocumentInternal$createDocumentInternal(
      accountNumber: (l$accountNumber as String?),
      errors: (l$errors as List<dynamic>)
          .map(
            (e) =>
                Mutation$CreateDocumentInternal$createDocumentInternal$errors.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accountNumber;

  final List<Mutation$CreateDocumentInternal$createDocumentInternal$errors>
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
    if (other is! Mutation$CreateDocumentInternal$createDocumentInternal ||
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

extension UtilityExtension$Mutation$CreateDocumentInternal$createDocumentInternal
    on Mutation$CreateDocumentInternal$createDocumentInternal {
  CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal<
    Mutation$CreateDocumentInternal$createDocumentInternal
  >
  get copyWith =>
      CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal<
  TRes
> {
  factory CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal(
    Mutation$CreateDocumentInternal$createDocumentInternal instance,
    TRes Function(Mutation$CreateDocumentInternal$createDocumentInternal) then,
  ) = _CopyWithImpl$Mutation$CreateDocumentInternal$createDocumentInternal;

  factory CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateDocumentInternal$createDocumentInternal;

  TRes call({
    String? accountNumber,
    List<Mutation$CreateDocumentInternal$createDocumentInternal$errors>? errors,
    String? $__typename,
  });
  TRes errors(
    Iterable<Mutation$CreateDocumentInternal$createDocumentInternal$errors>
    Function(
      Iterable<
        CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal$errors<
          Mutation$CreateDocumentInternal$createDocumentInternal$errors
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CreateDocumentInternal$createDocumentInternal<TRes>
    implements
        CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal<TRes> {
  _CopyWithImpl$Mutation$CreateDocumentInternal$createDocumentInternal(
    this._instance,
    this._then,
  );

  final Mutation$CreateDocumentInternal$createDocumentInternal _instance;

  final TRes Function(Mutation$CreateDocumentInternal$createDocumentInternal)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateDocumentInternal$createDocumentInternal(
      accountNumber: accountNumber == _undefined
          ? _instance.accountNumber
          : (accountNumber as String?),
      errors: errors == _undefined || errors == null
          ? _instance.errors
          : (errors
                as List<
                  Mutation$CreateDocumentInternal$createDocumentInternal$errors
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes errors(
    Iterable<Mutation$CreateDocumentInternal$createDocumentInternal$errors>
    Function(
      Iterable<
        CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal$errors<
          Mutation$CreateDocumentInternal$createDocumentInternal$errors
        >
      >,
    )
    _fn,
  ) => call(
    errors: _fn(
      _instance.errors.map(
        (e) =>
            CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal$errors(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CreateDocumentInternal$createDocumentInternal<
  TRes
>
    implements
        CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal<TRes> {
  _CopyWithStubImpl$Mutation$CreateDocumentInternal$createDocumentInternal(
    this._res,
  );

  TRes _res;

  call({
    String? accountNumber,
    List<Mutation$CreateDocumentInternal$createDocumentInternal$errors>? errors,
    String? $__typename,
  }) => _res;

  errors(_fn) => _res;
}

class Mutation$CreateDocumentInternal$createDocumentInternal$errors {
  Mutation$CreateDocumentInternal$createDocumentInternal$errors({
    required this.message,
    required this.code,
    this.$__typename = 'UserError',
  });

  factory Mutation$CreateDocumentInternal$createDocumentInternal$errors.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateDocumentInternal$createDocumentInternal$errors(
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
            is! Mutation$CreateDocumentInternal$createDocumentInternal$errors ||
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

extension UtilityExtension$Mutation$CreateDocumentInternal$createDocumentInternal$errors
    on Mutation$CreateDocumentInternal$createDocumentInternal$errors {
  CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal$errors<
    Mutation$CreateDocumentInternal$createDocumentInternal$errors
  >
  get copyWith =>
      CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal$errors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal$errors<
  TRes
> {
  factory CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal$errors(
    Mutation$CreateDocumentInternal$createDocumentInternal$errors instance,
    TRes Function(Mutation$CreateDocumentInternal$createDocumentInternal$errors)
    then,
  ) = _CopyWithImpl$Mutation$CreateDocumentInternal$createDocumentInternal$errors;

  factory CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal$errors.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateDocumentInternal$createDocumentInternal$errors;

  TRes call({String? message, String? code, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateDocumentInternal$createDocumentInternal$errors<
  TRes
>
    implements
        CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal$errors<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateDocumentInternal$createDocumentInternal$errors(
    this._instance,
    this._then,
  );

  final Mutation$CreateDocumentInternal$createDocumentInternal$errors _instance;

  final TRes Function(
    Mutation$CreateDocumentInternal$createDocumentInternal$errors,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateDocumentInternal$createDocumentInternal$errors(
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

class _CopyWithStubImpl$Mutation$CreateDocumentInternal$createDocumentInternal$errors<
  TRes
>
    implements
        CopyWith$Mutation$CreateDocumentInternal$createDocumentInternal$errors<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateDocumentInternal$createDocumentInternal$errors(
    this._res,
  );

  TRes _res;

  call({String? message, String? code, String? $__typename}) => _res;
}
