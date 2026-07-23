import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateBom {
  factory Variables$Mutation$UpdateBom({required Input$UpdateBomInput input}) =>
      Variables$Mutation$UpdateBom._({r'input': input});

  Variables$Mutation$UpdateBom._(this._$data);

  factory Variables$Mutation$UpdateBom.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateBomInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateBom._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateBomInput get input => (_$data['input'] as Input$UpdateBomInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateBom<Variables$Mutation$UpdateBom>
  get copyWith => CopyWith$Variables$Mutation$UpdateBom(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateBom ||
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

abstract class CopyWith$Variables$Mutation$UpdateBom<TRes> {
  factory CopyWith$Variables$Mutation$UpdateBom(
    Variables$Mutation$UpdateBom instance,
    TRes Function(Variables$Mutation$UpdateBom) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateBom;

  factory CopyWith$Variables$Mutation$UpdateBom.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateBom;

  TRes call({Input$UpdateBomInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateBom<TRes>
    implements CopyWith$Variables$Mutation$UpdateBom<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateBom(this._instance, this._then);

  final Variables$Mutation$UpdateBom _instance;

  final TRes Function(Variables$Mutation$UpdateBom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateBom._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateBomInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateBom<TRes>
    implements CopyWith$Variables$Mutation$UpdateBom<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateBom(this._res);

  TRes _res;

  call({Input$UpdateBomInput? input}) => _res;
}

class Mutation$UpdateBom {
  Mutation$UpdateBom({
    required this.updateBillOfMaterials,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateBom.fromJson(Map<String, dynamic> json) {
    final l$updateBillOfMaterials = json['updateBillOfMaterials'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateBom(
      updateBillOfMaterials: Mutation$UpdateBom$updateBillOfMaterials.fromJson(
        (l$updateBillOfMaterials as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateBom$updateBillOfMaterials updateBillOfMaterials;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateBillOfMaterials = updateBillOfMaterials;
    _resultData['updateBillOfMaterials'] = l$updateBillOfMaterials.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateBillOfMaterials = updateBillOfMaterials;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateBillOfMaterials, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateBom || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateBillOfMaterials = updateBillOfMaterials;
    final lOther$updateBillOfMaterials = other.updateBillOfMaterials;
    if (l$updateBillOfMaterials != lOther$updateBillOfMaterials) {
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

extension UtilityExtension$Mutation$UpdateBom on Mutation$UpdateBom {
  CopyWith$Mutation$UpdateBom<Mutation$UpdateBom> get copyWith =>
      CopyWith$Mutation$UpdateBom(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateBom<TRes> {
  factory CopyWith$Mutation$UpdateBom(
    Mutation$UpdateBom instance,
    TRes Function(Mutation$UpdateBom) then,
  ) = _CopyWithImpl$Mutation$UpdateBom;

  factory CopyWith$Mutation$UpdateBom.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateBom;

  TRes call({
    Mutation$UpdateBom$updateBillOfMaterials? updateBillOfMaterials,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateBom$updateBillOfMaterials<TRes>
  get updateBillOfMaterials;
}

class _CopyWithImpl$Mutation$UpdateBom<TRes>
    implements CopyWith$Mutation$UpdateBom<TRes> {
  _CopyWithImpl$Mutation$UpdateBom(this._instance, this._then);

  final Mutation$UpdateBom _instance;

  final TRes Function(Mutation$UpdateBom) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateBillOfMaterials = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateBom(
      updateBillOfMaterials:
          updateBillOfMaterials == _undefined || updateBillOfMaterials == null
          ? _instance.updateBillOfMaterials
          : (updateBillOfMaterials as Mutation$UpdateBom$updateBillOfMaterials),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateBom$updateBillOfMaterials<TRes>
  get updateBillOfMaterials {
    final local$updateBillOfMaterials = _instance.updateBillOfMaterials;
    return CopyWith$Mutation$UpdateBom$updateBillOfMaterials(
      local$updateBillOfMaterials,
      (e) => call(updateBillOfMaterials: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateBom<TRes>
    implements CopyWith$Mutation$UpdateBom<TRes> {
  _CopyWithStubImpl$Mutation$UpdateBom(this._res);

  TRes _res;

  call({
    Mutation$UpdateBom$updateBillOfMaterials? updateBillOfMaterials,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateBom$updateBillOfMaterials<TRes>
  get updateBillOfMaterials =>
      CopyWith$Mutation$UpdateBom$updateBillOfMaterials.stub(_res);
}

const documentNodeMutationUpdateBom = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateBom'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateBomInput'),
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
            name: NameNode(value: 'updateBillOfMaterials'),
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

class Mutation$UpdateBom$updateBillOfMaterials {
  Mutation$UpdateBom$updateBillOfMaterials({
    required this.hasError,
    this.errorCode,
    this.message,
    this.data,
    this.$__typename = 'OperationOutputOfBillOfMaterials',
  });

  factory Mutation$UpdateBom$updateBillOfMaterials.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasError = json['hasError'];
    final l$errorCode = json['errorCode'];
    final l$message = json['message'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateBom$updateBillOfMaterials(
      hasError: (l$hasError as bool),
      errorCode: (l$errorCode as String?),
      message: (l$message as String?),
      data: l$data == null
          ? null
          : Mutation$UpdateBom$updateBillOfMaterials$data.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasError;

  final String? errorCode;

  final String? message;

  final Mutation$UpdateBom$updateBillOfMaterials$data? data;

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
    if (other is! Mutation$UpdateBom$updateBillOfMaterials ||
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

extension UtilityExtension$Mutation$UpdateBom$updateBillOfMaterials
    on Mutation$UpdateBom$updateBillOfMaterials {
  CopyWith$Mutation$UpdateBom$updateBillOfMaterials<
    Mutation$UpdateBom$updateBillOfMaterials
  >
  get copyWith =>
      CopyWith$Mutation$UpdateBom$updateBillOfMaterials(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateBom$updateBillOfMaterials<TRes> {
  factory CopyWith$Mutation$UpdateBom$updateBillOfMaterials(
    Mutation$UpdateBom$updateBillOfMaterials instance,
    TRes Function(Mutation$UpdateBom$updateBillOfMaterials) then,
  ) = _CopyWithImpl$Mutation$UpdateBom$updateBillOfMaterials;

  factory CopyWith$Mutation$UpdateBom$updateBillOfMaterials.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateBom$updateBillOfMaterials;

  TRes call({
    bool? hasError,
    String? errorCode,
    String? message,
    Mutation$UpdateBom$updateBillOfMaterials$data? data,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateBom$updateBillOfMaterials$data<TRes> get data;
}

class _CopyWithImpl$Mutation$UpdateBom$updateBillOfMaterials<TRes>
    implements CopyWith$Mutation$UpdateBom$updateBillOfMaterials<TRes> {
  _CopyWithImpl$Mutation$UpdateBom$updateBillOfMaterials(
    this._instance,
    this._then,
  );

  final Mutation$UpdateBom$updateBillOfMaterials _instance;

  final TRes Function(Mutation$UpdateBom$updateBillOfMaterials) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasError = _undefined,
    Object? errorCode = _undefined,
    Object? message = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateBom$updateBillOfMaterials(
      hasError: hasError == _undefined || hasError == null
          ? _instance.hasError
          : (hasError as bool),
      errorCode: errorCode == _undefined
          ? _instance.errorCode
          : (errorCode as String?),
      message: message == _undefined ? _instance.message : (message as String?),
      data: data == _undefined
          ? _instance.data
          : (data as Mutation$UpdateBom$updateBillOfMaterials$data?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateBom$updateBillOfMaterials$data<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Mutation$UpdateBom$updateBillOfMaterials$data.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateBom$updateBillOfMaterials$data(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateBom$updateBillOfMaterials<TRes>
    implements CopyWith$Mutation$UpdateBom$updateBillOfMaterials<TRes> {
  _CopyWithStubImpl$Mutation$UpdateBom$updateBillOfMaterials(this._res);

  TRes _res;

  call({
    bool? hasError,
    String? errorCode,
    String? message,
    Mutation$UpdateBom$updateBillOfMaterials$data? data,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateBom$updateBillOfMaterials$data<TRes> get data =>
      CopyWith$Mutation$UpdateBom$updateBillOfMaterials$data.stub(_res);
}

class Mutation$UpdateBom$updateBillOfMaterials$data {
  Mutation$UpdateBom$updateBillOfMaterials$data({
    required this.id,
    this.$__typename = 'BillOfMaterials',
  });

  factory Mutation$UpdateBom$updateBillOfMaterials$data.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateBom$updateBillOfMaterials$data(
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
    if (other is! Mutation$UpdateBom$updateBillOfMaterials$data ||
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

extension UtilityExtension$Mutation$UpdateBom$updateBillOfMaterials$data
    on Mutation$UpdateBom$updateBillOfMaterials$data {
  CopyWith$Mutation$UpdateBom$updateBillOfMaterials$data<
    Mutation$UpdateBom$updateBillOfMaterials$data
  >
  get copyWith =>
      CopyWith$Mutation$UpdateBom$updateBillOfMaterials$data(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateBom$updateBillOfMaterials$data<TRes> {
  factory CopyWith$Mutation$UpdateBom$updateBillOfMaterials$data(
    Mutation$UpdateBom$updateBillOfMaterials$data instance,
    TRes Function(Mutation$UpdateBom$updateBillOfMaterials$data) then,
  ) = _CopyWithImpl$Mutation$UpdateBom$updateBillOfMaterials$data;

  factory CopyWith$Mutation$UpdateBom$updateBillOfMaterials$data.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateBom$updateBillOfMaterials$data;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateBom$updateBillOfMaterials$data<TRes>
    implements CopyWith$Mutation$UpdateBom$updateBillOfMaterials$data<TRes> {
  _CopyWithImpl$Mutation$UpdateBom$updateBillOfMaterials$data(
    this._instance,
    this._then,
  );

  final Mutation$UpdateBom$updateBillOfMaterials$data _instance;

  final TRes Function(Mutation$UpdateBom$updateBillOfMaterials$data) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateBom$updateBillOfMaterials$data(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateBom$updateBillOfMaterials$data<TRes>
    implements CopyWith$Mutation$UpdateBom$updateBillOfMaterials$data<TRes> {
  _CopyWithStubImpl$Mutation$UpdateBom$updateBillOfMaterials$data(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
