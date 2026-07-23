import 'package:gql/ast.dart';

class Variables$Mutation$ConvertProspectToRetailAccountInternal {
  factory Variables$Mutation$ConvertProspectToRetailAccountInternal({
    required String accountCode,
    required String userId,
  }) => Variables$Mutation$ConvertProspectToRetailAccountInternal._({
    r'accountCode': accountCode,
    r'userId': userId,
  });

  Variables$Mutation$ConvertProspectToRetailAccountInternal._(this._$data);

  factory Variables$Mutation$ConvertProspectToRetailAccountInternal.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accountCode = data['accountCode'];
    result$data['accountCode'] = (l$accountCode as String);
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    return Variables$Mutation$ConvertProspectToRetailAccountInternal._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  String get accountCode => (_$data['accountCode'] as String);

  String get userId => (_$data['userId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountCode = accountCode;
    result$data['accountCode'] = l$accountCode;
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Mutation$ConvertProspectToRetailAccountInternal<
    Variables$Mutation$ConvertProspectToRetailAccountInternal
  >
  get copyWith =>
      CopyWith$Variables$Mutation$ConvertProspectToRetailAccountInternal(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ConvertProspectToRetailAccountInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountCode = accountCode;
    final lOther$accountCode = other.accountCode;
    if (l$accountCode != lOther$accountCode) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountCode = accountCode;
    final l$userId = userId;
    return Object.hashAll([l$accountCode, l$userId]);
  }
}

abstract class CopyWith$Variables$Mutation$ConvertProspectToRetailAccountInternal<
  TRes
> {
  factory CopyWith$Variables$Mutation$ConvertProspectToRetailAccountInternal(
    Variables$Mutation$ConvertProspectToRetailAccountInternal instance,
    TRes Function(Variables$Mutation$ConvertProspectToRetailAccountInternal)
    then,
  ) = _CopyWithImpl$Variables$Mutation$ConvertProspectToRetailAccountInternal;

  factory CopyWith$Variables$Mutation$ConvertProspectToRetailAccountInternal.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$ConvertProspectToRetailAccountInternal;

  TRes call({String? accountCode, String? userId});
}

class _CopyWithImpl$Variables$Mutation$ConvertProspectToRetailAccountInternal<
  TRes
>
    implements
        CopyWith$Variables$Mutation$ConvertProspectToRetailAccountInternal<
          TRes
        > {
  _CopyWithImpl$Variables$Mutation$ConvertProspectToRetailAccountInternal(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ConvertProspectToRetailAccountInternal _instance;

  final TRes Function(Variables$Mutation$ConvertProspectToRetailAccountInternal)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accountCode = _undefined, Object? userId = _undefined}) =>
      _then(
        Variables$Mutation$ConvertProspectToRetailAccountInternal._({
          ..._instance._$data,
          if (accountCode != _undefined && accountCode != null)
            'accountCode': (accountCode as String),
          if (userId != _undefined && userId != null)
            'userId': (userId as String),
        }),
      );
}

class _CopyWithStubImpl$Variables$Mutation$ConvertProspectToRetailAccountInternal<
  TRes
>
    implements
        CopyWith$Variables$Mutation$ConvertProspectToRetailAccountInternal<
          TRes
        > {
  _CopyWithStubImpl$Variables$Mutation$ConvertProspectToRetailAccountInternal(
    this._res,
  );

  TRes _res;

  call({String? accountCode, String? userId}) => _res;
}

class Mutation$ConvertProspectToRetailAccountInternal {
  Mutation$ConvertProspectToRetailAccountInternal({
    required this.convertProspectToRetailAccountInternal,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ConvertProspectToRetailAccountInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$convertProspectToRetailAccountInternal =
        json['convertProspectToRetailAccountInternal'];
    final l$$__typename = json['__typename'];
    return Mutation$ConvertProspectToRetailAccountInternal(
      convertProspectToRetailAccountInternal:
          Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal.fromJson(
            (l$convertProspectToRetailAccountInternal as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal
  convertProspectToRetailAccountInternal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$convertProspectToRetailAccountInternal =
        convertProspectToRetailAccountInternal;
    _resultData['convertProspectToRetailAccountInternal'] =
        l$convertProspectToRetailAccountInternal.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$convertProspectToRetailAccountInternal =
        convertProspectToRetailAccountInternal;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$convertProspectToRetailAccountInternal,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ConvertProspectToRetailAccountInternal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$convertProspectToRetailAccountInternal =
        convertProspectToRetailAccountInternal;
    final lOther$convertProspectToRetailAccountInternal =
        other.convertProspectToRetailAccountInternal;
    if (l$convertProspectToRetailAccountInternal !=
        lOther$convertProspectToRetailAccountInternal) {
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

extension UtilityExtension$Mutation$ConvertProspectToRetailAccountInternal
    on Mutation$ConvertProspectToRetailAccountInternal {
  CopyWith$Mutation$ConvertProspectToRetailAccountInternal<
    Mutation$ConvertProspectToRetailAccountInternal
  >
  get copyWith =>
      CopyWith$Mutation$ConvertProspectToRetailAccountInternal(this, (i) => i);
}

abstract class CopyWith$Mutation$ConvertProspectToRetailAccountInternal<TRes> {
  factory CopyWith$Mutation$ConvertProspectToRetailAccountInternal(
    Mutation$ConvertProspectToRetailAccountInternal instance,
    TRes Function(Mutation$ConvertProspectToRetailAccountInternal) then,
  ) = _CopyWithImpl$Mutation$ConvertProspectToRetailAccountInternal;

  factory CopyWith$Mutation$ConvertProspectToRetailAccountInternal.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccountInternal;

  TRes call({
    Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal?
    convertProspectToRetailAccountInternal,
    String? $__typename,
  });
  CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal<
    TRes
  >
  get convertProspectToRetailAccountInternal;
}

class _CopyWithImpl$Mutation$ConvertProspectToRetailAccountInternal<TRes>
    implements CopyWith$Mutation$ConvertProspectToRetailAccountInternal<TRes> {
  _CopyWithImpl$Mutation$ConvertProspectToRetailAccountInternal(
    this._instance,
    this._then,
  );

  final Mutation$ConvertProspectToRetailAccountInternal _instance;

  final TRes Function(Mutation$ConvertProspectToRetailAccountInternal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? convertProspectToRetailAccountInternal = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ConvertProspectToRetailAccountInternal(
      convertProspectToRetailAccountInternal:
          convertProspectToRetailAccountInternal == _undefined ||
              convertProspectToRetailAccountInternal == null
          ? _instance.convertProspectToRetailAccountInternal
          : (convertProspectToRetailAccountInternal
                as Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal<
    TRes
  >
  get convertProspectToRetailAccountInternal {
    final local$convertProspectToRetailAccountInternal =
        _instance.convertProspectToRetailAccountInternal;
    return CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal(
      local$convertProspectToRetailAccountInternal,
      (e) => call(convertProspectToRetailAccountInternal: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccountInternal<TRes>
    implements CopyWith$Mutation$ConvertProspectToRetailAccountInternal<TRes> {
  _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccountInternal(this._res);

  TRes _res;

  call({
    Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal?
    convertProspectToRetailAccountInternal,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal<
    TRes
  >
  get convertProspectToRetailAccountInternal =>
      CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal.stub(
        _res,
      );
}

const documentNodeMutationConvertProspectToRetailAccountInternal = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ConvertProspectToRetailAccountInternal'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accountCode')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'userId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'convertProspectToRetailAccountInternal'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accountCode'),
                value: VariableNode(name: NameNode(value: 'accountCode')),
              ),
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
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

class Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal {
  Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal({
    this.accountNumber,
    required this.errors,
    this.$__typename = 'UpdateAccountOutput',
  });

  factory Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal(
      accountNumber: (l$accountNumber as String?),
      errors: (l$errors as List<dynamic>)
          .map(
            (e) =>
                Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accountNumber;

  final List<
    Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors
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
            is! Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal ||
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

extension UtilityExtension$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal
    on
        Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal {
  CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal<
    Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal
  >
  get copyWith =>
      CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal<
  TRes
> {
  factory CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal(
    Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal
    instance,
    TRes Function(
      Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal,
    )
    then,
  ) = _CopyWithImpl$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal;

  factory CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal;

  TRes call({
    String? accountNumber,
    List<
      Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors
    >?
    errors,
    String? $__typename,
  });
  TRes errors(
    Iterable<
      Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors
    >
    Function(
      Iterable<
        CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors<
          Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal<
  TRes
>
    implements
        CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal<
          TRes
        > {
  _CopyWithImpl$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal(
    this._instance,
    this._then,
  );

  final Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal
  _instance;

  final TRes Function(
    Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal(
      accountNumber: accountNumber == _undefined
          ? _instance.accountNumber
          : (accountNumber as String?),
      errors: errors == _undefined || errors == null
          ? _instance.errors
          : (errors
                as List<
                  Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes errors(
    Iterable<
      Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors
    >
    Function(
      Iterable<
        CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors<
          Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors
        >
      >,
    )
    _fn,
  ) => call(
    errors: _fn(
      _instance.errors.map(
        (e) =>
            CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal<
  TRes
>
    implements
        CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal(
    this._res,
  );

  TRes _res;

  call({
    String? accountNumber,
    List<
      Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors
    >?
    errors,
    String? $__typename,
  }) => _res;

  errors(_fn) => _res;
}

class Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors {
  Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors({
    required this.message,
    required this.code,
    this.$__typename = 'UserError',
  });

  factory Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors(
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
            is! Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors ||
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

extension UtilityExtension$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors
    on
        Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors {
  CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors<
    Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors
  >
  get copyWith =>
      CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors<
  TRes
> {
  factory CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors(
    Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors
    instance,
    TRes Function(
      Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors,
    )
    then,
  ) = _CopyWithImpl$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors;

  factory CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors;

  TRes call({String? message, String? code, String? $__typename});
}

class _CopyWithImpl$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors<
  TRes
>
    implements
        CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors<
          TRes
        > {
  _CopyWithImpl$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors(
    this._instance,
    this._then,
  );

  final Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors
  _instance;

  final TRes Function(
    Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors(
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

class _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors<
  TRes
>
    implements
        CopyWith$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ConvertProspectToRetailAccountInternal$convertProspectToRetailAccountInternal$errors(
    this._res,
  );

  TRes _res;

  call({String? message, String? code, String? $__typename}) => _res;
}
