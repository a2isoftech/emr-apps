import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CloneBom {
  factory Variables$Mutation$CloneBom({required Input$CloneBomInput input}) =>
      Variables$Mutation$CloneBom._({r'input': input});

  Variables$Mutation$CloneBom._(this._$data);

  factory Variables$Mutation$CloneBom.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CloneBomInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CloneBom._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CloneBomInput get input => (_$data['input'] as Input$CloneBomInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CloneBom<Variables$Mutation$CloneBom>
  get copyWith => CopyWith$Variables$Mutation$CloneBom(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CloneBom ||
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

abstract class CopyWith$Variables$Mutation$CloneBom<TRes> {
  factory CopyWith$Variables$Mutation$CloneBom(
    Variables$Mutation$CloneBom instance,
    TRes Function(Variables$Mutation$CloneBom) then,
  ) = _CopyWithImpl$Variables$Mutation$CloneBom;

  factory CopyWith$Variables$Mutation$CloneBom.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CloneBom;

  TRes call({Input$CloneBomInput? input});
}

class _CopyWithImpl$Variables$Mutation$CloneBom<TRes>
    implements CopyWith$Variables$Mutation$CloneBom<TRes> {
  _CopyWithImpl$Variables$Mutation$CloneBom(this._instance, this._then);

  final Variables$Mutation$CloneBom _instance;

  final TRes Function(Variables$Mutation$CloneBom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CloneBom._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CloneBomInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CloneBom<TRes>
    implements CopyWith$Variables$Mutation$CloneBom<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CloneBom(this._res);

  TRes _res;

  call({Input$CloneBomInput? input}) => _res;
}

class Mutation$CloneBom {
  Mutation$CloneBom({
    required this.cloneBillOfMaterials,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CloneBom.fromJson(Map<String, dynamic> json) {
    final l$cloneBillOfMaterials = json['cloneBillOfMaterials'];
    final l$$__typename = json['__typename'];
    return Mutation$CloneBom(
      cloneBillOfMaterials: Mutation$CloneBom$cloneBillOfMaterials.fromJson(
        (l$cloneBillOfMaterials as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CloneBom$cloneBillOfMaterials cloneBillOfMaterials;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cloneBillOfMaterials = cloneBillOfMaterials;
    _resultData['cloneBillOfMaterials'] = l$cloneBillOfMaterials.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cloneBillOfMaterials = cloneBillOfMaterials;
    final l$$__typename = $__typename;
    return Object.hashAll([l$cloneBillOfMaterials, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CloneBom || runtimeType != other.runtimeType) {
      return false;
    }
    final l$cloneBillOfMaterials = cloneBillOfMaterials;
    final lOther$cloneBillOfMaterials = other.cloneBillOfMaterials;
    if (l$cloneBillOfMaterials != lOther$cloneBillOfMaterials) {
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

extension UtilityExtension$Mutation$CloneBom on Mutation$CloneBom {
  CopyWith$Mutation$CloneBom<Mutation$CloneBom> get copyWith =>
      CopyWith$Mutation$CloneBom(this, (i) => i);
}

abstract class CopyWith$Mutation$CloneBom<TRes> {
  factory CopyWith$Mutation$CloneBom(
    Mutation$CloneBom instance,
    TRes Function(Mutation$CloneBom) then,
  ) = _CopyWithImpl$Mutation$CloneBom;

  factory CopyWith$Mutation$CloneBom.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CloneBom;

  TRes call({
    Mutation$CloneBom$cloneBillOfMaterials? cloneBillOfMaterials,
    String? $__typename,
  });
  CopyWith$Mutation$CloneBom$cloneBillOfMaterials<TRes>
  get cloneBillOfMaterials;
}

class _CopyWithImpl$Mutation$CloneBom<TRes>
    implements CopyWith$Mutation$CloneBom<TRes> {
  _CopyWithImpl$Mutation$CloneBom(this._instance, this._then);

  final Mutation$CloneBom _instance;

  final TRes Function(Mutation$CloneBom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cloneBillOfMaterials = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CloneBom(
      cloneBillOfMaterials:
          cloneBillOfMaterials == _undefined || cloneBillOfMaterials == null
          ? _instance.cloneBillOfMaterials
          : (cloneBillOfMaterials as Mutation$CloneBom$cloneBillOfMaterials),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CloneBom$cloneBillOfMaterials<TRes>
  get cloneBillOfMaterials {
    final local$cloneBillOfMaterials = _instance.cloneBillOfMaterials;
    return CopyWith$Mutation$CloneBom$cloneBillOfMaterials(
      local$cloneBillOfMaterials,
      (e) => call(cloneBillOfMaterials: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CloneBom<TRes>
    implements CopyWith$Mutation$CloneBom<TRes> {
  _CopyWithStubImpl$Mutation$CloneBom(this._res);

  TRes _res;

  call({
    Mutation$CloneBom$cloneBillOfMaterials? cloneBillOfMaterials,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CloneBom$cloneBillOfMaterials<TRes>
  get cloneBillOfMaterials =>
      CopyWith$Mutation$CloneBom$cloneBillOfMaterials.stub(_res);
}

const documentNodeMutationCloneBom = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CloneBom'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CloneBomInput'),
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
            name: NameNode(value: 'cloneBillOfMaterials'),
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

class Mutation$CloneBom$cloneBillOfMaterials {
  Mutation$CloneBom$cloneBillOfMaterials({
    required this.hasError,
    this.errorCode,
    this.message,
    this.data,
    this.$__typename = 'OperationOutputOfBillOfMaterials',
  });

  factory Mutation$CloneBom$cloneBillOfMaterials.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasError = json['hasError'];
    final l$errorCode = json['errorCode'];
    final l$message = json['message'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$CloneBom$cloneBillOfMaterials(
      hasError: (l$hasError as bool),
      errorCode: (l$errorCode as String?),
      message: (l$message as String?),
      data: l$data == null
          ? null
          : Mutation$CloneBom$cloneBillOfMaterials$data.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasError;

  final String? errorCode;

  final String? message;

  final Mutation$CloneBom$cloneBillOfMaterials$data? data;

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
    _resultData['data'] = l$data?.toJson();
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
    if (other is! Mutation$CloneBom$cloneBillOfMaterials ||
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

extension UtilityExtension$Mutation$CloneBom$cloneBillOfMaterials
    on Mutation$CloneBom$cloneBillOfMaterials {
  CopyWith$Mutation$CloneBom$cloneBillOfMaterials<
    Mutation$CloneBom$cloneBillOfMaterials
  >
  get copyWith =>
      CopyWith$Mutation$CloneBom$cloneBillOfMaterials(this, (i) => i);
}

abstract class CopyWith$Mutation$CloneBom$cloneBillOfMaterials<TRes> {
  factory CopyWith$Mutation$CloneBom$cloneBillOfMaterials(
    Mutation$CloneBom$cloneBillOfMaterials instance,
    TRes Function(Mutation$CloneBom$cloneBillOfMaterials) then,
  ) = _CopyWithImpl$Mutation$CloneBom$cloneBillOfMaterials;

  factory CopyWith$Mutation$CloneBom$cloneBillOfMaterials.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CloneBom$cloneBillOfMaterials;

  TRes call({
    bool? hasError,
    String? errorCode,
    String? message,
    Mutation$CloneBom$cloneBillOfMaterials$data? data,
    String? $__typename,
  });
  CopyWith$Mutation$CloneBom$cloneBillOfMaterials$data<TRes> get data;
}

class _CopyWithImpl$Mutation$CloneBom$cloneBillOfMaterials<TRes>
    implements CopyWith$Mutation$CloneBom$cloneBillOfMaterials<TRes> {
  _CopyWithImpl$Mutation$CloneBom$cloneBillOfMaterials(
    this._instance,
    this._then,
  );

  final Mutation$CloneBom$cloneBillOfMaterials _instance;

  final TRes Function(Mutation$CloneBom$cloneBillOfMaterials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasError = _undefined,
    Object? errorCode = _undefined,
    Object? message = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CloneBom$cloneBillOfMaterials(
      hasError: hasError == _undefined || hasError == null
          ? _instance.hasError
          : (hasError as bool),
      errorCode: errorCode == _undefined
          ? _instance.errorCode
          : (errorCode as String?),
      message: message == _undefined ? _instance.message : (message as String?),
      data: data == _undefined
          ? _instance.data
          : (data as Mutation$CloneBom$cloneBillOfMaterials$data?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CloneBom$cloneBillOfMaterials$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$CloneBom$cloneBillOfMaterials$data.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CloneBom$cloneBillOfMaterials$data(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CloneBom$cloneBillOfMaterials<TRes>
    implements CopyWith$Mutation$CloneBom$cloneBillOfMaterials<TRes> {
  _CopyWithStubImpl$Mutation$CloneBom$cloneBillOfMaterials(this._res);

  TRes _res;

  call({
    bool? hasError,
    String? errorCode,
    String? message,
    Mutation$CloneBom$cloneBillOfMaterials$data? data,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CloneBom$cloneBillOfMaterials$data<TRes> get data =>
      CopyWith$Mutation$CloneBom$cloneBillOfMaterials$data.stub(_res);
}

class Mutation$CloneBom$cloneBillOfMaterials$data {
  Mutation$CloneBom$cloneBillOfMaterials$data({
    required this.id,
    this.$__typename = 'BillOfMaterials',
  });

  factory Mutation$CloneBom$cloneBillOfMaterials$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CloneBom$cloneBillOfMaterials$data(
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
    if (other is! Mutation$CloneBom$cloneBillOfMaterials$data ||
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

extension UtilityExtension$Mutation$CloneBom$cloneBillOfMaterials$data
    on Mutation$CloneBom$cloneBillOfMaterials$data {
  CopyWith$Mutation$CloneBom$cloneBillOfMaterials$data<
    Mutation$CloneBom$cloneBillOfMaterials$data
  >
  get copyWith =>
      CopyWith$Mutation$CloneBom$cloneBillOfMaterials$data(this, (i) => i);
}

abstract class CopyWith$Mutation$CloneBom$cloneBillOfMaterials$data<TRes> {
  factory CopyWith$Mutation$CloneBom$cloneBillOfMaterials$data(
    Mutation$CloneBom$cloneBillOfMaterials$data instance,
    TRes Function(Mutation$CloneBom$cloneBillOfMaterials$data) then,
  ) = _CopyWithImpl$Mutation$CloneBom$cloneBillOfMaterials$data;

  factory CopyWith$Mutation$CloneBom$cloneBillOfMaterials$data.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CloneBom$cloneBillOfMaterials$data;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$CloneBom$cloneBillOfMaterials$data<TRes>
    implements CopyWith$Mutation$CloneBom$cloneBillOfMaterials$data<TRes> {
  _CopyWithImpl$Mutation$CloneBom$cloneBillOfMaterials$data(
    this._instance,
    this._then,
  );

  final Mutation$CloneBom$cloneBillOfMaterials$data _instance;

  final TRes Function(Mutation$CloneBom$cloneBillOfMaterials$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$CloneBom$cloneBillOfMaterials$data(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$CloneBom$cloneBillOfMaterials$data<TRes>
    implements CopyWith$Mutation$CloneBom$cloneBillOfMaterials$data<TRes> {
  _CopyWithStubImpl$Mutation$CloneBom$cloneBillOfMaterials$data(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
