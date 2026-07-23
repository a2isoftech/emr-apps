import 'package:gql/ast.dart';

class Variables$Mutation$RestoreBom {
  factory Variables$Mutation$RestoreBom({required String id}) =>
      Variables$Mutation$RestoreBom._({r'id': id});

  Variables$Mutation$RestoreBom._(this._$data);

  factory Variables$Mutation$RestoreBom.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$RestoreBom._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$RestoreBom<Variables$Mutation$RestoreBom>
  get copyWith => CopyWith$Variables$Mutation$RestoreBom(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RestoreBom ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$RestoreBom<TRes> {
  factory CopyWith$Variables$Mutation$RestoreBom(
    Variables$Mutation$RestoreBom instance,
    TRes Function(Variables$Mutation$RestoreBom) then,
  ) = _CopyWithImpl$Variables$Mutation$RestoreBom;

  factory CopyWith$Variables$Mutation$RestoreBom.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RestoreBom;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$RestoreBom<TRes>
    implements CopyWith$Variables$Mutation$RestoreBom<TRes> {
  _CopyWithImpl$Variables$Mutation$RestoreBom(this._instance, this._then);

  final Variables$Mutation$RestoreBom _instance;

  final TRes Function(Variables$Mutation$RestoreBom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Mutation$RestoreBom._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$RestoreBom<TRes>
    implements CopyWith$Variables$Mutation$RestoreBom<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RestoreBom(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$RestoreBom {
  Mutation$RestoreBom({
    required this.restoreBillOfMaterials,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RestoreBom.fromJson(Map<String, dynamic> json) {
    final l$restoreBillOfMaterials = json['restoreBillOfMaterials'];
    final l$$__typename = json['__typename'];
    return Mutation$RestoreBom(
      restoreBillOfMaterials:
          Mutation$RestoreBom$restoreBillOfMaterials.fromJson(
            (l$restoreBillOfMaterials as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RestoreBom$restoreBillOfMaterials restoreBillOfMaterials;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$restoreBillOfMaterials = restoreBillOfMaterials;
    _resultData['restoreBillOfMaterials'] = l$restoreBillOfMaterials.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$restoreBillOfMaterials = restoreBillOfMaterials;
    final l$$__typename = $__typename;
    return Object.hashAll([l$restoreBillOfMaterials, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RestoreBom || runtimeType != other.runtimeType) {
      return false;
    }
    final l$restoreBillOfMaterials = restoreBillOfMaterials;
    final lOther$restoreBillOfMaterials = other.restoreBillOfMaterials;
    if (l$restoreBillOfMaterials != lOther$restoreBillOfMaterials) {
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

extension UtilityExtension$Mutation$RestoreBom on Mutation$RestoreBom {
  CopyWith$Mutation$RestoreBom<Mutation$RestoreBom> get copyWith =>
      CopyWith$Mutation$RestoreBom(this, (i) => i);
}

abstract class CopyWith$Mutation$RestoreBom<TRes> {
  factory CopyWith$Mutation$RestoreBom(
    Mutation$RestoreBom instance,
    TRes Function(Mutation$RestoreBom) then,
  ) = _CopyWithImpl$Mutation$RestoreBom;

  factory CopyWith$Mutation$RestoreBom.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RestoreBom;

  TRes call({
    Mutation$RestoreBom$restoreBillOfMaterials? restoreBillOfMaterials,
    String? $__typename,
  });
  CopyWith$Mutation$RestoreBom$restoreBillOfMaterials<TRes>
  get restoreBillOfMaterials;
}

class _CopyWithImpl$Mutation$RestoreBom<TRes>
    implements CopyWith$Mutation$RestoreBom<TRes> {
  _CopyWithImpl$Mutation$RestoreBom(this._instance, this._then);

  final Mutation$RestoreBom _instance;

  final TRes Function(Mutation$RestoreBom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? restoreBillOfMaterials = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$RestoreBom(
      restoreBillOfMaterials:
          restoreBillOfMaterials == _undefined || restoreBillOfMaterials == null
          ? _instance.restoreBillOfMaterials
          : (restoreBillOfMaterials
                as Mutation$RestoreBom$restoreBillOfMaterials),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$RestoreBom$restoreBillOfMaterials<TRes>
  get restoreBillOfMaterials {
    final local$restoreBillOfMaterials = _instance.restoreBillOfMaterials;
    return CopyWith$Mutation$RestoreBom$restoreBillOfMaterials(
      local$restoreBillOfMaterials,
      (e) => call(restoreBillOfMaterials: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$RestoreBom<TRes>
    implements CopyWith$Mutation$RestoreBom<TRes> {
  _CopyWithStubImpl$Mutation$RestoreBom(this._res);

  TRes _res;

  call({
    Mutation$RestoreBom$restoreBillOfMaterials? restoreBillOfMaterials,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$RestoreBom$restoreBillOfMaterials<TRes>
  get restoreBillOfMaterials =>
      CopyWith$Mutation$RestoreBom$restoreBillOfMaterials.stub(_res);
}

const documentNodeMutationRestoreBom = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'RestoreBom'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'restoreBillOfMaterials'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'hasError'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'errorCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'message'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'data'),
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

class Mutation$RestoreBom$restoreBillOfMaterials {
  Mutation$RestoreBom$restoreBillOfMaterials({
    required this.hasError,
    this.errorCode,
    this.message,
    required this.data,
    this.$__typename = 'OperationOutputOfBoolean',
  });

  factory Mutation$RestoreBom$restoreBillOfMaterials.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasError = json['hasError'];
    final l$errorCode = json['errorCode'];
    final l$message = json['message'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$RestoreBom$restoreBillOfMaterials(
      hasError: (l$hasError as bool),
      errorCode: (l$errorCode as String?),
      message: (l$message as String?),
      data: (l$data as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasError;

  final String? errorCode;

  final String? message;

  final bool data;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasError = hasError;
    _resultData['hasError'] = l$hasError;
    final l$errorCode = errorCode;
    _resultData['errorCode'] = l$errorCode;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$data = data;
    _resultData['data'] = l$data;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasError = hasError;
    final l$errorCode = errorCode;
    final l$message = message;
    final l$data = data;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasError,
      l$errorCode,
      l$message,
      l$data,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RestoreBom$restoreBillOfMaterials ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasError = hasError;
    final lOther$hasError = other.hasError;
    if (l$hasError != lOther$hasError) {
      return false;
    }
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
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

extension UtilityExtension$Mutation$RestoreBom$restoreBillOfMaterials
    on Mutation$RestoreBom$restoreBillOfMaterials {
  CopyWith$Mutation$RestoreBom$restoreBillOfMaterials<
    Mutation$RestoreBom$restoreBillOfMaterials
  >
  get copyWith =>
      CopyWith$Mutation$RestoreBom$restoreBillOfMaterials(this, (i) => i);
}

abstract class CopyWith$Mutation$RestoreBom$restoreBillOfMaterials<TRes> {
  factory CopyWith$Mutation$RestoreBom$restoreBillOfMaterials(
    Mutation$RestoreBom$restoreBillOfMaterials instance,
    TRes Function(Mutation$RestoreBom$restoreBillOfMaterials) then,
  ) = _CopyWithImpl$Mutation$RestoreBom$restoreBillOfMaterials;

  factory CopyWith$Mutation$RestoreBom$restoreBillOfMaterials.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RestoreBom$restoreBillOfMaterials;

  TRes call({
    bool? hasError,
    String? errorCode,
    String? message,
    bool? data,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RestoreBom$restoreBillOfMaterials<TRes>
    implements CopyWith$Mutation$RestoreBom$restoreBillOfMaterials<TRes> {
  _CopyWithImpl$Mutation$RestoreBom$restoreBillOfMaterials(
    this._instance,
    this._then,
  );

  final Mutation$RestoreBom$restoreBillOfMaterials _instance;

  final TRes Function(Mutation$RestoreBom$restoreBillOfMaterials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasError = _undefined,
    Object? errorCode = _undefined,
    Object? message = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$RestoreBom$restoreBillOfMaterials(
      hasError: hasError == _undefined || hasError == null
          ? _instance.hasError
          : (hasError as bool),
      errorCode: errorCode == _undefined
          ? _instance.errorCode
          : (errorCode as String?),
      message: message == _undefined ? _instance.message : (message as String?),
      data: data == _undefined || data == null
          ? _instance.data
          : (data as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$RestoreBom$restoreBillOfMaterials<TRes>
    implements CopyWith$Mutation$RestoreBom$restoreBillOfMaterials<TRes> {
  _CopyWithStubImpl$Mutation$RestoreBom$restoreBillOfMaterials(this._res);

  TRes _res;

  call({
    bool? hasError,
    String? errorCode,
    String? message,
    bool? data,
    String? $__typename,
  }) => _res;
}
