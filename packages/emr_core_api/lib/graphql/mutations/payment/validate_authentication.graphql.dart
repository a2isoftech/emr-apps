import 'package:gql/ast.dart';

class Variables$Mutation$ValidateAuthentication {
  factory Variables$Mutation$ValidateAuthentication({
    required String yardCode,
    required String userName,
    required String password,
  }) => Variables$Mutation$ValidateAuthentication._({
    r'yardCode': yardCode,
    r'userName': userName,
    r'password': password,
  });

  Variables$Mutation$ValidateAuthentication._(this._$data);

  factory Variables$Mutation$ValidateAuthentication.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    final l$userName = data['userName'];
    result$data['userName'] = (l$userName as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Variables$Mutation$ValidateAuthentication._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yardCode => (_$data['yardCode'] as String);

  String get userName => (_$data['userName'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    final l$userName = userName;
    result$data['userName'] = l$userName;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Variables$Mutation$ValidateAuthentication<
    Variables$Mutation$ValidateAuthentication
  >
  get copyWith =>
      CopyWith$Variables$Mutation$ValidateAuthentication(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ValidateAuthentication ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$userName = userName;
    final l$password = password;
    return Object.hashAll([l$yardCode, l$userName, l$password]);
  }
}

abstract class CopyWith$Variables$Mutation$ValidateAuthentication<TRes> {
  factory CopyWith$Variables$Mutation$ValidateAuthentication(
    Variables$Mutation$ValidateAuthentication instance,
    TRes Function(Variables$Mutation$ValidateAuthentication) then,
  ) = _CopyWithImpl$Variables$Mutation$ValidateAuthentication;

  factory CopyWith$Variables$Mutation$ValidateAuthentication.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ValidateAuthentication;

  TRes call({String? yardCode, String? userName, String? password});
}

class _CopyWithImpl$Variables$Mutation$ValidateAuthentication<TRes>
    implements CopyWith$Variables$Mutation$ValidateAuthentication<TRes> {
  _CopyWithImpl$Variables$Mutation$ValidateAuthentication(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ValidateAuthentication _instance;

  final TRes Function(Variables$Mutation$ValidateAuthentication) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? userName = _undefined,
    Object? password = _undefined,
  }) => _then(
    Variables$Mutation$ValidateAuthentication._({
      ..._instance._$data,
      if (yardCode != _undefined && yardCode != null)
        'yardCode': (yardCode as String),
      if (userName != _undefined && userName != null)
        'userName': (userName as String),
      if (password != _undefined && password != null)
        'password': (password as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ValidateAuthentication<TRes>
    implements CopyWith$Variables$Mutation$ValidateAuthentication<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ValidateAuthentication(this._res);

  TRes _res;

  call({String? yardCode, String? userName, String? password}) => _res;
}

class Mutation$ValidateAuthentication {
  Mutation$ValidateAuthentication({
    required this.validateAuthentication,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ValidateAuthentication.fromJson(Map<String, dynamic> json) {
    final l$validateAuthentication = json['validateAuthentication'];
    final l$$__typename = json['__typename'];
    return Mutation$ValidateAuthentication(
      validateAuthentication:
          Mutation$ValidateAuthentication$validateAuthentication.fromJson(
            (l$validateAuthentication as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ValidateAuthentication$validateAuthentication
  validateAuthentication;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$validateAuthentication = validateAuthentication;
    _resultData['validateAuthentication'] = l$validateAuthentication.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$validateAuthentication = validateAuthentication;
    final l$$__typename = $__typename;
    return Object.hashAll([l$validateAuthentication, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ValidateAuthentication ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$validateAuthentication = validateAuthentication;
    final lOther$validateAuthentication = other.validateAuthentication;
    if (l$validateAuthentication != lOther$validateAuthentication) {
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

extension UtilityExtension$Mutation$ValidateAuthentication
    on Mutation$ValidateAuthentication {
  CopyWith$Mutation$ValidateAuthentication<Mutation$ValidateAuthentication>
  get copyWith => CopyWith$Mutation$ValidateAuthentication(this, (i) => i);
}

abstract class CopyWith$Mutation$ValidateAuthentication<TRes> {
  factory CopyWith$Mutation$ValidateAuthentication(
    Mutation$ValidateAuthentication instance,
    TRes Function(Mutation$ValidateAuthentication) then,
  ) = _CopyWithImpl$Mutation$ValidateAuthentication;

  factory CopyWith$Mutation$ValidateAuthentication.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ValidateAuthentication;

  TRes call({
    Mutation$ValidateAuthentication$validateAuthentication?
    validateAuthentication,
    String? $__typename,
  });
  CopyWith$Mutation$ValidateAuthentication$validateAuthentication<TRes>
  get validateAuthentication;
}

class _CopyWithImpl$Mutation$ValidateAuthentication<TRes>
    implements CopyWith$Mutation$ValidateAuthentication<TRes> {
  _CopyWithImpl$Mutation$ValidateAuthentication(this._instance, this._then);

  final Mutation$ValidateAuthentication _instance;

  final TRes Function(Mutation$ValidateAuthentication) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? validateAuthentication = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ValidateAuthentication(
      validateAuthentication:
          validateAuthentication == _undefined || validateAuthentication == null
          ? _instance.validateAuthentication
          : (validateAuthentication
                as Mutation$ValidateAuthentication$validateAuthentication),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ValidateAuthentication$validateAuthentication<TRes>
  get validateAuthentication {
    final local$validateAuthentication = _instance.validateAuthentication;
    return CopyWith$Mutation$ValidateAuthentication$validateAuthentication(
      local$validateAuthentication,
      (e) => call(validateAuthentication: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ValidateAuthentication<TRes>
    implements CopyWith$Mutation$ValidateAuthentication<TRes> {
  _CopyWithStubImpl$Mutation$ValidateAuthentication(this._res);

  TRes _res;

  call({
    Mutation$ValidateAuthentication$validateAuthentication?
    validateAuthentication,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ValidateAuthentication$validateAuthentication<TRes>
  get validateAuthentication =>
      CopyWith$Mutation$ValidateAuthentication$validateAuthentication.stub(
        _res,
      );
}

const documentNodeMutationValidateAuthentication = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ValidateAuthentication'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'yardCode')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'userName')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'password')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'validateAuthentication'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'yardCode'),
                value: VariableNode(name: NameNode(value: 'yardCode')),
              ),
              ArgumentNode(
                name: NameNode(value: 'userName'),
                value: VariableNode(name: NameNode(value: 'userName')),
              ),
              ArgumentNode(
                name: NameNode(value: 'password'),
                value: VariableNode(name: NameNode(value: 'password')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'isSuccess'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'errorMessage'),
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
  ],
);

class Mutation$ValidateAuthentication$validateAuthentication {
  Mutation$ValidateAuthentication$validateAuthentication({
    required this.isSuccess,
    this.errorMessage,
    this.$__typename = 'PasswordAuthResponse',
  });

  factory Mutation$ValidateAuthentication$validateAuthentication.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$isSuccess = json['isSuccess'];
    final l$errorMessage = json['errorMessage'];
    final l$$__typename = json['__typename'];
    return Mutation$ValidateAuthentication$validateAuthentication(
      isSuccess: (l$isSuccess as bool),
      errorMessage: (l$errorMessage as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isSuccess;

  final String? errorMessage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isSuccess = isSuccess;
    _resultData['isSuccess'] = l$isSuccess;
    final l$errorMessage = errorMessage;
    _resultData['errorMessage'] = l$errorMessage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isSuccess = isSuccess;
    final l$errorMessage = errorMessage;
    final l$$__typename = $__typename;
    return Object.hashAll([l$isSuccess, l$errorMessage, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ValidateAuthentication$validateAuthentication ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isSuccess = isSuccess;
    final lOther$isSuccess = other.isSuccess;
    if (l$isSuccess != lOther$isSuccess) {
      return false;
    }
    final l$errorMessage = errorMessage;
    final lOther$errorMessage = other.errorMessage;
    if (l$errorMessage != lOther$errorMessage) {
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

extension UtilityExtension$Mutation$ValidateAuthentication$validateAuthentication
    on Mutation$ValidateAuthentication$validateAuthentication {
  CopyWith$Mutation$ValidateAuthentication$validateAuthentication<
    Mutation$ValidateAuthentication$validateAuthentication
  >
  get copyWith =>
      CopyWith$Mutation$ValidateAuthentication$validateAuthentication(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ValidateAuthentication$validateAuthentication<
  TRes
> {
  factory CopyWith$Mutation$ValidateAuthentication$validateAuthentication(
    Mutation$ValidateAuthentication$validateAuthentication instance,
    TRes Function(Mutation$ValidateAuthentication$validateAuthentication) then,
  ) = _CopyWithImpl$Mutation$ValidateAuthentication$validateAuthentication;

  factory CopyWith$Mutation$ValidateAuthentication$validateAuthentication.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ValidateAuthentication$validateAuthentication;

  TRes call({bool? isSuccess, String? errorMessage, String? $__typename});
}

class _CopyWithImpl$Mutation$ValidateAuthentication$validateAuthentication<TRes>
    implements
        CopyWith$Mutation$ValidateAuthentication$validateAuthentication<TRes> {
  _CopyWithImpl$Mutation$ValidateAuthentication$validateAuthentication(
    this._instance,
    this._then,
  );

  final Mutation$ValidateAuthentication$validateAuthentication _instance;

  final TRes Function(Mutation$ValidateAuthentication$validateAuthentication)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isSuccess = _undefined,
    Object? errorMessage = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ValidateAuthentication$validateAuthentication(
      isSuccess: isSuccess == _undefined || isSuccess == null
          ? _instance.isSuccess
          : (isSuccess as bool),
      errorMessage: errorMessage == _undefined
          ? _instance.errorMessage
          : (errorMessage as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ValidateAuthentication$validateAuthentication<
  TRes
>
    implements
        CopyWith$Mutation$ValidateAuthentication$validateAuthentication<TRes> {
  _CopyWithStubImpl$Mutation$ValidateAuthentication$validateAuthentication(
    this._res,
  );

  TRes _res;

  call({bool? isSuccess, String? errorMessage, String? $__typename}) => _res;
}
