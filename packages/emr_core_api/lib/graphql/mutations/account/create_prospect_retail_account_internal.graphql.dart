import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateProspectRetailAccountInternal {
  factory Variables$Mutation$CreateProspectRetailAccountInternal({
    Input$CreateProspectRetailAccountInput? input,
  }) => Variables$Mutation$CreateProspectRetailAccountInternal._({
    if (input != null) r'input': input,
  });

  Variables$Mutation$CreateProspectRetailAccountInternal._(this._$data);

  factory Variables$Mutation$CreateProspectRetailAccountInternal.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$CreateProspectRetailAccountInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables$Mutation$CreateProspectRetailAccountInternal._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  Input$CreateProspectRetailAccountInput? get input =>
      (_$data['input'] as Input$CreateProspectRetailAccountInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateProspectRetailAccountInternal<
    Variables$Mutation$CreateProspectRetailAccountInternal
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CreateProspectRetailAccountInternal(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateProspectRetailAccountInternal ||
        runtimeType != other.runtimeType) {
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
    final l$input = input;
    return Object.hashAll([_$data.containsKey('input') ? l$input : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateProspectRetailAccountInternal<
  TRes
> {
  factory CopyWith$Variables$Mutation$CreateProspectRetailAccountInternal(
    Variables$Mutation$CreateProspectRetailAccountInternal instance,
    TRes Function(Variables$Mutation$CreateProspectRetailAccountInternal) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateProspectRetailAccountInternal;

  factory CopyWith$Variables$Mutation$CreateProspectRetailAccountInternal.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$CreateProspectRetailAccountInternal;

  TRes call({Input$CreateProspectRetailAccountInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateProspectRetailAccountInternal<TRes>
    implements
        CopyWith$Variables$Mutation$CreateProspectRetailAccountInternal<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateProspectRetailAccountInternal(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateProspectRetailAccountInternal _instance;

  final TRes Function(Variables$Mutation$CreateProspectRetailAccountInternal)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateProspectRetailAccountInternal._({
      ..._instance._$data,
      if (input != _undefined)
        'input': (input as Input$CreateProspectRetailAccountInput?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateProspectRetailAccountInternal<
  TRes
>
    implements
        CopyWith$Variables$Mutation$CreateProspectRetailAccountInternal<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateProspectRetailAccountInternal(
    this._res,
  );

  TRes _res;

  call({Input$CreateProspectRetailAccountInput? input}) => _res;
}

class Mutation$CreateProspectRetailAccountInternal {
  Mutation$CreateProspectRetailAccountInternal({
    required this.createProspectAccountInternal,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateProspectRetailAccountInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$createProspectAccountInternal =
        json['createProspectAccountInternal'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProspectRetailAccountInternal(
      createProspectAccountInternal:
          Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal.fromJson(
            (l$createProspectAccountInternal as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal
  createProspectAccountInternal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createProspectAccountInternal = createProspectAccountInternal;
    _resultData['createProspectAccountInternal'] =
        l$createProspectAccountInternal.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createProspectAccountInternal = createProspectAccountInternal;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createProspectAccountInternal, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateProspectRetailAccountInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createProspectAccountInternal = createProspectAccountInternal;
    final lOther$createProspectAccountInternal =
        other.createProspectAccountInternal;
    if (l$createProspectAccountInternal !=
        lOther$createProspectAccountInternal) {
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

extension UtilityExtension$Mutation$CreateProspectRetailAccountInternal
    on Mutation$CreateProspectRetailAccountInternal {
  CopyWith$Mutation$CreateProspectRetailAccountInternal<
    Mutation$CreateProspectRetailAccountInternal
  >
  get copyWith =>
      CopyWith$Mutation$CreateProspectRetailAccountInternal(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateProspectRetailAccountInternal<TRes> {
  factory CopyWith$Mutation$CreateProspectRetailAccountInternal(
    Mutation$CreateProspectRetailAccountInternal instance,
    TRes Function(Mutation$CreateProspectRetailAccountInternal) then,
  ) = _CopyWithImpl$Mutation$CreateProspectRetailAccountInternal;

  factory CopyWith$Mutation$CreateProspectRetailAccountInternal.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateProspectRetailAccountInternal;

  TRes call({
    Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal?
    createProspectAccountInternal,
    String? $__typename,
  });
  CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal<
    TRes
  >
  get createProspectAccountInternal;
}

class _CopyWithImpl$Mutation$CreateProspectRetailAccountInternal<TRes>
    implements CopyWith$Mutation$CreateProspectRetailAccountInternal<TRes> {
  _CopyWithImpl$Mutation$CreateProspectRetailAccountInternal(
    this._instance,
    this._then,
  );

  final Mutation$CreateProspectRetailAccountInternal _instance;

  final TRes Function(Mutation$CreateProspectRetailAccountInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createProspectAccountInternal = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateProspectRetailAccountInternal(
      createProspectAccountInternal:
          createProspectAccountInternal == _undefined ||
              createProspectAccountInternal == null
          ? _instance.createProspectAccountInternal
          : (createProspectAccountInternal
                as Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal<
    TRes
  >
  get createProspectAccountInternal {
    final local$createProspectAccountInternal =
        _instance.createProspectAccountInternal;
    return CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal(
      local$createProspectAccountInternal,
      (e) => call(createProspectAccountInternal: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateProspectRetailAccountInternal<TRes>
    implements CopyWith$Mutation$CreateProspectRetailAccountInternal<TRes> {
  _CopyWithStubImpl$Mutation$CreateProspectRetailAccountInternal(this._res);

  TRes _res;

  call({
    Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal?
    createProspectAccountInternal,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal<
    TRes
  >
  get createProspectAccountInternal =>
      CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal.stub(
        _res,
      );
}

const documentNodeMutationCreateProspectRetailAccountInternal = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateProspectRetailAccountInternal'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateProspectRetailAccountInput'),
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
            name: NameNode(value: 'createProspectAccountInternal'),
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
                FieldNode(
                  name: NameNode(value: 'accountNumber'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'userId'),
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

class Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal {
  Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal({
    this.accountNumber,
    this.name,
    this.userId,
    required this.errors,
    this.$__typename = 'CreateAccountOutput',
  });

  factory Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$name = json['name'];
    final l$userId = json['userId'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal(
      accountNumber: (l$accountNumber as String?),
      name: (l$name as String?),
      userId: (l$userId as String?),
      errors: (l$errors as List<dynamic>)
          .map(
            (e) =>
                Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accountNumber;

  final String? name;

  final String? userId;

  final List<
    Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors
  >
  errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$name = name;
    final l$userId = userId;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountNumber,
      l$name,
      l$userId,
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
            is! Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
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

extension UtilityExtension$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal
    on Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal {
  CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal<
    Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal
  >
  get copyWith =>
      CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal<
  TRes
> {
  factory CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal(
    Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal
    instance,
    TRes Function(
      Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal;

  factory CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal;

  TRes call({
    String? accountNumber,
    String? name,
    String? userId,
    List<
      Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors
    >?
    errors,
    String? $__typename,
  });
  TRes errors(
    Iterable<
      Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors
    >
    Function(
      Iterable<
        CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors<
          Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal<
  TRes
>
    implements
        CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal(
    this._instance,
    this._then,
  );

  final Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal
  _instance;

  final TRes Function(
    Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? name = _undefined,
    Object? userId = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal(
      accountNumber: accountNumber == _undefined
          ? _instance.accountNumber
          : (accountNumber as String?),
      name: name == _undefined ? _instance.name : (name as String?),
      userId: userId == _undefined ? _instance.userId : (userId as String?),
      errors: errors == _undefined || errors == null
          ? _instance.errors
          : (errors
                as List<
                  Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes errors(
    Iterable<
      Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors
    >
    Function(
      Iterable<
        CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors<
          Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors
        >
      >,
    )
    _fn,
  ) => call(
    errors: _fn(
      _instance.errors.map(
        (e) =>
            CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal<
  TRes
>
    implements
        CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal(
    this._res,
  );

  TRes _res;

  call({
    String? accountNumber,
    String? name,
    String? userId,
    List<
      Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors
    >?
    errors,
    String? $__typename,
  }) => _res;

  errors(_fn) => _res;
}

class Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors {
  Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors({
    required this.message,
    required this.code,
    this.$__typename = 'UserError',
  });

  factory Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors(
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
            is! Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors ||
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

extension UtilityExtension$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors
    on
        Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors {
  CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors<
    Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors
  >
  get copyWith =>
      CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors<
  TRes
> {
  factory CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors(
    Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors
    instance,
    TRes Function(
      Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors;

  factory CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors;

  TRes call({String? message, String? code, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors<
  TRes
>
    implements
        CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors(
    this._instance,
    this._then,
  );

  final Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors
  _instance;

  final TRes Function(
    Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors(
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

class _CopyWithStubImpl$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors<
  TRes
>
    implements
        CopyWith$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateProspectRetailAccountInternal$createProspectAccountInternal$errors(
    this._res,
  );

  TRes _res;

  call({String? message, String? code, String? $__typename}) => _res;
}
