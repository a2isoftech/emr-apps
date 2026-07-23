import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateBom {
  factory Variables$Mutation$CreateBom({required Input$CreateBomInput input}) =>
      Variables$Mutation$CreateBom._({r'input': input});

  Variables$Mutation$CreateBom._(this._$data);

  factory Variables$Mutation$CreateBom.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateBomInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateBom._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateBomInput get input => (_$data['input'] as Input$CreateBomInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateBom<Variables$Mutation$CreateBom>
  get copyWith => CopyWith$Variables$Mutation$CreateBom(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateBom ||
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

abstract class CopyWith$Variables$Mutation$CreateBom<TRes> {
  factory CopyWith$Variables$Mutation$CreateBom(
    Variables$Mutation$CreateBom instance,
    TRes Function(Variables$Mutation$CreateBom) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateBom;

  factory CopyWith$Variables$Mutation$CreateBom.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateBom;

  TRes call({Input$CreateBomInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateBom<TRes>
    implements CopyWith$Variables$Mutation$CreateBom<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateBom(this._instance, this._then);

  final Variables$Mutation$CreateBom _instance;

  final TRes Function(Variables$Mutation$CreateBom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateBom._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateBomInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateBom<TRes>
    implements CopyWith$Variables$Mutation$CreateBom<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateBom(this._res);

  TRes _res;

  call({Input$CreateBomInput? input}) => _res;
}

class Mutation$CreateBom {
  Mutation$CreateBom({
    required this.createBillOfMaterials,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateBom.fromJson(Map<String, dynamic> json) {
    final l$createBillOfMaterials = json['createBillOfMaterials'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateBom(
      createBillOfMaterials: Mutation$CreateBom$createBillOfMaterials.fromJson(
        (l$createBillOfMaterials as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateBom$createBillOfMaterials createBillOfMaterials;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createBillOfMaterials = createBillOfMaterials;
    _resultData['createBillOfMaterials'] = l$createBillOfMaterials.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createBillOfMaterials = createBillOfMaterials;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createBillOfMaterials, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateBom || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createBillOfMaterials = createBillOfMaterials;
    final lOther$createBillOfMaterials = other.createBillOfMaterials;
    if (l$createBillOfMaterials != lOther$createBillOfMaterials) {
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

extension UtilityExtension$Mutation$CreateBom on Mutation$CreateBom {
  CopyWith$Mutation$CreateBom<Mutation$CreateBom> get copyWith =>
      CopyWith$Mutation$CreateBom(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateBom<TRes> {
  factory CopyWith$Mutation$CreateBom(
    Mutation$CreateBom instance,
    TRes Function(Mutation$CreateBom) then,
  ) = _CopyWithImpl$Mutation$CreateBom;

  factory CopyWith$Mutation$CreateBom.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateBom;

  TRes call({
    Mutation$CreateBom$createBillOfMaterials? createBillOfMaterials,
    String? $__typename,
  });
  CopyWith$Mutation$CreateBom$createBillOfMaterials<TRes>
  get createBillOfMaterials;
}

class _CopyWithImpl$Mutation$CreateBom<TRes>
    implements CopyWith$Mutation$CreateBom<TRes> {
  _CopyWithImpl$Mutation$CreateBom(this._instance, this._then);

  final Mutation$CreateBom _instance;

  final TRes Function(Mutation$CreateBom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createBillOfMaterials = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateBom(
      createBillOfMaterials:
          createBillOfMaterials == _undefined || createBillOfMaterials == null
          ? _instance.createBillOfMaterials
          : (createBillOfMaterials as Mutation$CreateBom$createBillOfMaterials),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateBom$createBillOfMaterials<TRes>
  get createBillOfMaterials {
    final local$createBillOfMaterials = _instance.createBillOfMaterials;
    return CopyWith$Mutation$CreateBom$createBillOfMaterials(
      local$createBillOfMaterials,
      (e) => call(createBillOfMaterials: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateBom<TRes>
    implements CopyWith$Mutation$CreateBom<TRes> {
  _CopyWithStubImpl$Mutation$CreateBom(this._res);

  TRes _res;

  call({
    Mutation$CreateBom$createBillOfMaterials? createBillOfMaterials,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateBom$createBillOfMaterials<TRes>
  get createBillOfMaterials =>
      CopyWith$Mutation$CreateBom$createBillOfMaterials.stub(_res);
}

const documentNodeMutationCreateBom = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateBom'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateBomInput'),
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
            name: NameNode(value: 'createBillOfMaterials'),
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

class Mutation$CreateBom$createBillOfMaterials {
  Mutation$CreateBom$createBillOfMaterials({
    required this.hasError,
    this.errorCode,
    this.message,
    this.data,
    this.$__typename = 'OperationOutputOfBillOfMaterials',
  });

  factory Mutation$CreateBom$createBillOfMaterials.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasError = json['hasError'];
    final l$errorCode = json['errorCode'];
    final l$message = json['message'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateBom$createBillOfMaterials(
      hasError: (l$hasError as bool),
      errorCode: (l$errorCode as String?),
      message: (l$message as String?),
      data: l$data == null
          ? null
          : Mutation$CreateBom$createBillOfMaterials$data.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasError;

  final String? errorCode;

  final String? message;

  final Mutation$CreateBom$createBillOfMaterials$data? data;

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
    if (other is! Mutation$CreateBom$createBillOfMaterials ||
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

extension UtilityExtension$Mutation$CreateBom$createBillOfMaterials
    on Mutation$CreateBom$createBillOfMaterials {
  CopyWith$Mutation$CreateBom$createBillOfMaterials<
    Mutation$CreateBom$createBillOfMaterials
  >
  get copyWith =>
      CopyWith$Mutation$CreateBom$createBillOfMaterials(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateBom$createBillOfMaterials<TRes> {
  factory CopyWith$Mutation$CreateBom$createBillOfMaterials(
    Mutation$CreateBom$createBillOfMaterials instance,
    TRes Function(Mutation$CreateBom$createBillOfMaterials) then,
  ) = _CopyWithImpl$Mutation$CreateBom$createBillOfMaterials;

  factory CopyWith$Mutation$CreateBom$createBillOfMaterials.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateBom$createBillOfMaterials;

  TRes call({
    bool? hasError,
    String? errorCode,
    String? message,
    Mutation$CreateBom$createBillOfMaterials$data? data,
    String? $__typename,
  });
  CopyWith$Mutation$CreateBom$createBillOfMaterials$data<TRes> get data;
}

class _CopyWithImpl$Mutation$CreateBom$createBillOfMaterials<TRes>
    implements CopyWith$Mutation$CreateBom$createBillOfMaterials<TRes> {
  _CopyWithImpl$Mutation$CreateBom$createBillOfMaterials(
    this._instance,
    this._then,
  );

  final Mutation$CreateBom$createBillOfMaterials _instance;

  final TRes Function(Mutation$CreateBom$createBillOfMaterials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasError = _undefined,
    Object? errorCode = _undefined,
    Object? message = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateBom$createBillOfMaterials(
      hasError: hasError == _undefined || hasError == null
          ? _instance.hasError
          : (hasError as bool),
      errorCode: errorCode == _undefined
          ? _instance.errorCode
          : (errorCode as String?),
      message: message == _undefined ? _instance.message : (message as String?),
      data: data == _undefined
          ? _instance.data
          : (data as Mutation$CreateBom$createBillOfMaterials$data?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateBom$createBillOfMaterials$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$CreateBom$createBillOfMaterials$data.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CreateBom$createBillOfMaterials$data(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CreateBom$createBillOfMaterials<TRes>
    implements CopyWith$Mutation$CreateBom$createBillOfMaterials<TRes> {
  _CopyWithStubImpl$Mutation$CreateBom$createBillOfMaterials(this._res);

  TRes _res;

  call({
    bool? hasError,
    String? errorCode,
    String? message,
    Mutation$CreateBom$createBillOfMaterials$data? data,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateBom$createBillOfMaterials$data<TRes> get data =>
      CopyWith$Mutation$CreateBom$createBillOfMaterials$data.stub(_res);
}

class Mutation$CreateBom$createBillOfMaterials$data {
  Mutation$CreateBom$createBillOfMaterials$data({
    required this.id,
    this.$__typename = 'BillOfMaterials',
  });

  factory Mutation$CreateBom$createBillOfMaterials$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateBom$createBillOfMaterials$data(
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
    if (other is! Mutation$CreateBom$createBillOfMaterials$data ||
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

extension UtilityExtension$Mutation$CreateBom$createBillOfMaterials$data
    on Mutation$CreateBom$createBillOfMaterials$data {
  CopyWith$Mutation$CreateBom$createBillOfMaterials$data<
    Mutation$CreateBom$createBillOfMaterials$data
  >
  get copyWith =>
      CopyWith$Mutation$CreateBom$createBillOfMaterials$data(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateBom$createBillOfMaterials$data<TRes> {
  factory CopyWith$Mutation$CreateBom$createBillOfMaterials$data(
    Mutation$CreateBom$createBillOfMaterials$data instance,
    TRes Function(Mutation$CreateBom$createBillOfMaterials$data) then,
  ) = _CopyWithImpl$Mutation$CreateBom$createBillOfMaterials$data;

  factory CopyWith$Mutation$CreateBom$createBillOfMaterials$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateBom$createBillOfMaterials$data;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateBom$createBillOfMaterials$data<TRes>
    implements CopyWith$Mutation$CreateBom$createBillOfMaterials$data<TRes> {
  _CopyWithImpl$Mutation$CreateBom$createBillOfMaterials$data(
    this._instance,
    this._then,
  );

  final Mutation$CreateBom$createBillOfMaterials$data _instance;

  final TRes Function(Mutation$CreateBom$createBillOfMaterials$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$CreateBom$createBillOfMaterials$data(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$CreateBom$createBillOfMaterials$data<TRes>
    implements CopyWith$Mutation$CreateBom$createBillOfMaterials$data<TRes> {
  _CopyWithStubImpl$Mutation$CreateBom$createBillOfMaterials$data(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
