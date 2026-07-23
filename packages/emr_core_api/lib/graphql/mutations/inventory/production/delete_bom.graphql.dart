import 'package:gql/ast.dart';

class Variables$Mutation$DeleteBom {
  factory Variables$Mutation$DeleteBom({required String id}) =>
      Variables$Mutation$DeleteBom._({r'id': id});

  Variables$Mutation$DeleteBom._(this._$data);

  factory Variables$Mutation$DeleteBom.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteBom._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteBom<Variables$Mutation$DeleteBom>
  get copyWith => CopyWith$Variables$Mutation$DeleteBom(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteBom ||
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

abstract class CopyWith$Variables$Mutation$DeleteBom<TRes> {
  factory CopyWith$Variables$Mutation$DeleteBom(
    Variables$Mutation$DeleteBom instance,
    TRes Function(Variables$Mutation$DeleteBom) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteBom;

  factory CopyWith$Variables$Mutation$DeleteBom.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteBom;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteBom<TRes>
    implements CopyWith$Variables$Mutation$DeleteBom<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteBom(this._instance, this._then);

  final Variables$Mutation$DeleteBom _instance;

  final TRes Function(Variables$Mutation$DeleteBom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Mutation$DeleteBom._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteBom<TRes>
    implements CopyWith$Variables$Mutation$DeleteBom<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteBom(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteBom {
  Mutation$DeleteBom({
    required this.deleteBillOfMaterials,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteBom.fromJson(Map<String, dynamic> json) {
    final l$deleteBillOfMaterials = json['deleteBillOfMaterials'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteBom(
      deleteBillOfMaterials: Mutation$DeleteBom$deleteBillOfMaterials.fromJson(
        (l$deleteBillOfMaterials as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteBom$deleteBillOfMaterials deleteBillOfMaterials;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteBillOfMaterials = deleteBillOfMaterials;
    _resultData['deleteBillOfMaterials'] = l$deleteBillOfMaterials.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteBillOfMaterials = deleteBillOfMaterials;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteBillOfMaterials, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteBom || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteBillOfMaterials = deleteBillOfMaterials;
    final lOther$deleteBillOfMaterials = other.deleteBillOfMaterials;
    if (l$deleteBillOfMaterials != lOther$deleteBillOfMaterials) {
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

extension UtilityExtension$Mutation$DeleteBom on Mutation$DeleteBom {
  CopyWith$Mutation$DeleteBom<Mutation$DeleteBom> get copyWith =>
      CopyWith$Mutation$DeleteBom(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteBom<TRes> {
  factory CopyWith$Mutation$DeleteBom(
    Mutation$DeleteBom instance,
    TRes Function(Mutation$DeleteBom) then,
  ) = _CopyWithImpl$Mutation$DeleteBom;

  factory CopyWith$Mutation$DeleteBom.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteBom;

  TRes call({
    Mutation$DeleteBom$deleteBillOfMaterials? deleteBillOfMaterials,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteBom$deleteBillOfMaterials<TRes>
  get deleteBillOfMaterials;
}

class _CopyWithImpl$Mutation$DeleteBom<TRes>
    implements CopyWith$Mutation$DeleteBom<TRes> {
  _CopyWithImpl$Mutation$DeleteBom(this._instance, this._then);

  final Mutation$DeleteBom _instance;

  final TRes Function(Mutation$DeleteBom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteBillOfMaterials = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteBom(
      deleteBillOfMaterials:
          deleteBillOfMaterials == _undefined || deleteBillOfMaterials == null
          ? _instance.deleteBillOfMaterials
          : (deleteBillOfMaterials as Mutation$DeleteBom$deleteBillOfMaterials),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteBom$deleteBillOfMaterials<TRes>
  get deleteBillOfMaterials {
    final local$deleteBillOfMaterials = _instance.deleteBillOfMaterials;
    return CopyWith$Mutation$DeleteBom$deleteBillOfMaterials(
      local$deleteBillOfMaterials,
      (e) => call(deleteBillOfMaterials: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$DeleteBom<TRes>
    implements CopyWith$Mutation$DeleteBom<TRes> {
  _CopyWithStubImpl$Mutation$DeleteBom(this._res);

  TRes _res;

  call({
    Mutation$DeleteBom$deleteBillOfMaterials? deleteBillOfMaterials,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteBom$deleteBillOfMaterials<TRes>
  get deleteBillOfMaterials =>
      CopyWith$Mutation$DeleteBom$deleteBillOfMaterials.stub(_res);
}

const documentNodeMutationDeleteBom = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteBom'),
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
            name: NameNode(value: 'deleteBillOfMaterials'),
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

class Mutation$DeleteBom$deleteBillOfMaterials {
  Mutation$DeleteBom$deleteBillOfMaterials({
    required this.hasError,
    this.errorCode,
    this.message,
    required this.data,
    this.$__typename = 'OperationOutputOfBoolean',
  });

  factory Mutation$DeleteBom$deleteBillOfMaterials.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasError = json['hasError'];
    final l$errorCode = json['errorCode'];
    final l$message = json['message'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteBom$deleteBillOfMaterials(
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
    if (other is! Mutation$DeleteBom$deleteBillOfMaterials ||
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

extension UtilityExtension$Mutation$DeleteBom$deleteBillOfMaterials
    on Mutation$DeleteBom$deleteBillOfMaterials {
  CopyWith$Mutation$DeleteBom$deleteBillOfMaterials<
    Mutation$DeleteBom$deleteBillOfMaterials
  >
  get copyWith =>
      CopyWith$Mutation$DeleteBom$deleteBillOfMaterials(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteBom$deleteBillOfMaterials<TRes> {
  factory CopyWith$Mutation$DeleteBom$deleteBillOfMaterials(
    Mutation$DeleteBom$deleteBillOfMaterials instance,
    TRes Function(Mutation$DeleteBom$deleteBillOfMaterials) then,
  ) = _CopyWithImpl$Mutation$DeleteBom$deleteBillOfMaterials;

  factory CopyWith$Mutation$DeleteBom$deleteBillOfMaterials.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteBom$deleteBillOfMaterials;

  TRes call({
    bool? hasError,
    String? errorCode,
    String? message,
    bool? data,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteBom$deleteBillOfMaterials<TRes>
    implements CopyWith$Mutation$DeleteBom$deleteBillOfMaterials<TRes> {
  _CopyWithImpl$Mutation$DeleteBom$deleteBillOfMaterials(
    this._instance,
    this._then,
  );

  final Mutation$DeleteBom$deleteBillOfMaterials _instance;

  final TRes Function(Mutation$DeleteBom$deleteBillOfMaterials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasError = _undefined,
    Object? errorCode = _undefined,
    Object? message = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteBom$deleteBillOfMaterials(
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

class _CopyWithStubImpl$Mutation$DeleteBom$deleteBillOfMaterials<TRes>
    implements CopyWith$Mutation$DeleteBom$deleteBillOfMaterials<TRes> {
  _CopyWithStubImpl$Mutation$DeleteBom$deleteBillOfMaterials(this._res);

  TRes _res;

  call({
    bool? hasError,
    String? errorCode,
    String? message,
    bool? data,
    String? $__typename,
  }) => _res;
}
